function scHurtPlayer(_direction, _force, _damage){
	if(oPlayer.invulnerable <= 0){
		global.playerHealth = max(0, global.playerHealth - _damage);
		if(global.playerHealth > 0){
			with(oPlayer){
				state = scPlayerStateBonk;
				direction = _direction - 180;
				moveDistanceRemaining = _force;
				scScreenShake(2, 10);
				flash = 0.7;
				invulnerable = 60;
				flashShader = shRedFlash;
			}
		}else{
			//Kill Player
			with(oPlayer){state = scPlayerStateDead;}
		}
	}
}

function scPlayerAct(){
	///@arg sprite
	///@arg end_script
	
	//Carry
	state = scPlayerStateAct;

	//Sprite
	sprite_index = argument[0];

	//EndScript
	if(argument_count > 1){animationEndScript = argument[1];}

	//Reset
	localFrame = 0;
	image_index = 0;
	scAnimateSprite();
}

function scAnimateSprite(){
	var _totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FPS;

	//Check if animation is ended
	if(localFrame >= _totalFrames){
		animationEnd = true;
		localFrame = 0;
	}else{
		animationEnd = false;
	}
}

function scPlayerThrow(){
	with(global.iLifted){
		//Other
		lifted = false;
		thrown = true;
		z = 42;
	
		//Throw
		throwPeakHeight = z + 16;
		throwDistance = entityThrowDistance;
		throwDistanceTravelled = 0;
		throwStartPercent = (13 / throwPeakHeight) * 0.5;
		throwPercent = throwStartPercent;
	
		//Built in variable
		persistent = false;
		direction = other.direction;
		xstart = x;
		ystart = y;
	}
	scPlayerAct(sPlayerLift);
	global.iLifted = noone;
	sprite = sPlayer;
	spriteRun = sPlayerRun;
}

function scPlayerDropItem(){
	global.iLifted = noone;
	with(oPlayer){
		sprite = sPlayer;
		spriteRun = sPlayerRun;
	}
}

function scPlayerLevelUp(_i){
	global.playerLevel = _i;
	if(global.playerExpNeed <= 0){
		global.playerExpNeed += 10;
		global.playerSkillPoint++;
	}
}