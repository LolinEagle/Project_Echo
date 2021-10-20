function scSlimeWander(){
	sprite_index = sprMove;
	var _if = x == xTo && y == yTo;
	if(_if || timePassed > enemyWanderDistance / enemySpeed){
		//Stop moving
		hSpeed = 0;
		vSpeed = 0;
	
		//End our move Animation
		if(image_index < 1){
			image_speed = 0;
			image_index = 0;
		}
	
		//Wait
		if(++wait >= waitDuration){
			wait = 0;
			timePassed = 0;
			dir = point_direction(x, y, xstart, ystart);
			dir += irandom_range(-45, 45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	}else{
		//Start moving
		timePassed++;
		image_speed = 1.0;
		var _distanceToGo = point_distance(x, y, xTo, yTo);
		var _speedThisFrame = enemySpeed;
		if(_distanceToGo < enemySpeed){_speedThisFrame = _distanceToGo;}
	
		//Go to
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(_speedThisFrame, dir);
		vSpeed = lengthdir_y(_speedThisFrame, dir);
		if(hSpeed != 0){image_xscale = sign(hSpeed);}
	
		//Collide & Move
		scEnemyTileCollision();
	}

	//Check for agggro
	if(++aggroCheck >= aggroCheckDuration){
		aggroCheck = 0;
		if(
			instance_exists(oPlayer)
			&& point_distance(x, y, oPlayer.x, oPlayer.y) <= enemyAggroRadius
		){
			state = ENEMYSTATE.CHASE;
			target = oPlayer;
		}
	}
}

function scSlimeChase(){
	sprite_index = sprMove;

	//Move toward Target
	if(instance_exists(target)){
		image_speed = 1.0;
	
		//Target Location
		xTo = target.x;
		YTo = target.y;
		var _distanceToGo = point_distance(x, y, xTo, YTo);

		//Go to
		dir = point_direction(x, y, xTo, YTo);
		if(_distanceToGo > enemySpeed){
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		}else{
			hSpeed = lengthdir_x(_distanceToGo, dir);
			vSpeed = lengthdir_y(_distanceToGo, dir);
		}
		if(hSpeed != 0){image_xscale = sign(hSpeed);}
	
		//Collide & Move
		scEnemyTileCollision();
	
		//Aggro lost
		if(point_distance(x, y, target.x, target.y) >= enemyAggroLost){
			state = ENEMYSTATE.WANDER;
		}
	}

	//Check for attack
	if(
		instance_exists(target)
		&& point_distance(x, y, target.x, target.y) <= enemyAttaackRadius
	){
		state = ENEMYSTATE.ATTACK;
		sprite_index = sprAttack;
		image_index = 0;
		image_speed = 1;
		
		//target 8px past the player
		xTo += lengthdir_x(8, dir);
		yTo += lengthdir_y(8, dir);
	}
}

function scSlimeAttack(){
	//How fast to move
	var _spd = enemySpeed;

	//Don't move while still getting rady to jump
	if(image_index < 2){_spd = 0;}

	//Freeze in mid-air and after landing
	if(floor(image_index) == 3 || floor(image_index) == 5){image_speed = 0;}

	//How far
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	if(_distanceToGo < 8 && image_index < 5){image_speed = 1.0;}
	if(_distanceToGo > _spd){
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(_spd, dir);
		vSpeed = lengthdir_y(_spd, dir);
		if(hSpeed != 0){image_xscale = sign(hSpeed);}
		
		//Commit
		if(scEnemyTileCollision() == true){
			xTo = x;
			yTo = y;
		}
	}else{
		x = xTo;
		y = yTo;
		if(floor(image_index) == 5){
			stateTarget = ENEMYSTATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMYSTATE.WAIT;
		}
	}
}
	
function scSlimeHurt(){
	sprite_index = sprHurt;
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	if(_distanceToGo > enemySpeed){
		image_speed = 1.0;
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
		if(hSpeed != 0){image_xscale = -sign(hSpeed);}
		
		//Collide & move, if theres a collision, then stop knockback
		if(scEnemyTileCollision()){
			xTo = x;
			yTo = y;
		}
	}else{
		x = xTo;
		y = yTo;
		if(statePrevious != ENEMYSTATE.ATTACK){state = statePrevious;}
		else{state = ENEMYSTATE.CHASE;}
	}
}

function scSlimeDie(){
	sprite_index = sprDie;
	image_speed = 1.0;
	var _distanceToGo = point_distance(x, y, xTo, yTo);
	if(_distanceToGo > enemySpeed){
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
		if(hSpeed != 0){image_xscale = -sign(hSpeed);}
		scEnemyTileCollision();
	}else{
		x = xTo;
		y = yTo;
	}
	
	//Instance Destroy
	var _if = sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
	if(image_index + _if >= image_number){
		global.playerExp += 2;
		global.playerExpNeed -= 2;
		with(oHud){drawExperience = FPS * 5;}
		instance_destroy();
	}
}