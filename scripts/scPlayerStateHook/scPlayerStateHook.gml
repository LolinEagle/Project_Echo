function scPlayerStateHook(){
	hSpeed = 0;
	vSpeed = 0;
	if(sprite_index != sPlayerHook){
		hook = 0;
		hookX = 0;
		hookY = 0;
		hookState = HOOKSTATE.EXTENDING;
		hookedEntity = noone;
		
		//Update sprite
		sprite_index = sPlayerHook;
		image_index = CARDINAL_DIR;
		image_speed = 0;
	}
	var _speedHookTemp = speedHook;
	if(hookState != HOOKSTATE.EXTENDING){_speedHookTemp *= -1;}
	hook += _speedHookTemp;
	switch(image_index){
		case 0: hookX = hook; break;
		case 1: hookY = -hook; break;
		case 2: hookX = -hook; break;
		case 3: hookY = hook; break;
	}
	
	//Hookshot state machine
	switch(hookState){
		case HOOKSTATE.EXTENDING:
			//Finish extending
			if(hook >= distanceHook){hookState = HOOKSTATE.MISSED;}
			
			//Check for hit
			var _hookHit = collision_circle(
				x + hookX, y + hookY, 4, pEntity, false, true
			);
			if(_hookHit != noone && global.iLifted != _hookHit){
				//Act depending on what is hit
				switch(_hookHit.entityHookable){
					default:
						if(object_is_ancestor(_hookHit.object_index, pEnemy)){
							scHurtEnemy(_hookHit, 1, id, 5);
							hookState = HOOKSTATE.MISSED;
						}else{
							if(_hookHit.entityHitScript != -1){
								with(_hookHit){
									script_execute(entityHitScript);
								}
								hookState = HOOKSTATE.MISSED;
							}
						}
					break;
					
					case 1:
						hookState = HOOKSTATE.PULLTOPLAYER;
						hookedEntity = _hookHit;
					break;
					
					case 2:
						hookState = HOOKSTATE.PULLTOENTITY;
						hookedEntity = _hookHit;
					break;
				}
			}
		break;
		
		case HOOKSTATE.PULLTOPLAYER:
			with(hookedEntity){
				x = other.x + other.hookX;
				y = other.y + other.hookY;
			}
		break;
		
		case HOOKSTATE.PULLTOENTITY:
			switch(image_index){
				case 0: x += speedHook; break;
				case 1: y -= speedHook; break;
				case 2: x -= speedHook; break;
				case 3: y += speedHook; break;
			}
		break;
	}
	
	if(hook <= 0){
		hookedEntity = noone;
		state = scPlayerStateFree;
	}
}