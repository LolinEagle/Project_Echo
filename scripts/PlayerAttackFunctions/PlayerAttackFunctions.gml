function scAttackCalc(_mask){
	//Use attack hitbox & check for hits
	mask_index = _mask;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);
	if(hits > 0){
		for(var i = 0; i < hits; i++){
			//if this istance has not yet been hit by this attack, hit it!
			var hitID = hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack, hitID) == -1){
				ds_list_add(hitByAttack, hitID);
				with(hitID){
					if(object_is_ancestor(object_index, pEnemy)){
						//(_enemy, _damage, _source, _knockback)
						scHurtEnemy(id, 1, other.id, 10);
					}else if(entityHitScript != -1){
						script_execute(entityHitScript);
					}
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlayer;
}

function scAttackSlash(){
	if(sprite_index != spriteAttack){
		sprite_index = spriteAttack;
	
		//Reset
		localFrame = 0;
		image_index = 0;

		//Clear hit list
		if(!ds_exists(hitByAttack, ds_type_list)){
			hitByAttack = ds_list_create();
		}
		ds_list_clear(hitByAttack);
	}

	//HitBox
	scAttackCalc(spriteAttackHB);

	//Animation
	scAnimateSprite();
	if(animationEnd){
		state = scPlayerStateFree;
		animationEnd = false;
	}
}

function scHurtEnemy(_enemy, _damage, _source, _knockback){
	with(_enemy){
		if(state != ENEMYSTATE.DIE){
			enemyLife -= _damage;
			flash = 1;
			
			//Hurt or Dead
			if(enemyLife <= 0){
				state = ENEMYSTATE.DIE;
			}else{
				if(state != ENEMYSTATE.HURT){statePrevious = state;}
				state = ENEMYSTATE.HURT;
			}
			
			image_index = 0;
			if(_knockback != 0){
				var _knockbackDirection = point_direction(
					x, y, (_source).x, (_source).y
				);
				xTo = x - lengthdir_x(_knockback, _knockbackDirection);
				yTo = y - lengthdir_y(_knockback, _knockbackDirection);
			}
		}
	}
}