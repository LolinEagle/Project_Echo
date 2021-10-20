var _instanceExists = instance_exists(oWeapon);

//Image Index
if(instance_position(mouse_x, mouse_y, id) && !_instanceExists){
	image_index = 1;
}else{
	image_index = 0;
}

//What this Button does
if(mouse_check_button_pressed(mb_left) && image_index = 1 && !_instanceExists){
	var _weapon = 0;
	
	//Create Weapon
	for(var i = 0; i < WEAPON.TYPE_COUNT; i++){
		if(i = 1 && slot < 2){i = 4;}
		if(i = 4 && slot = 2){break;}
		
		//Skip
		if(i > 0){
			if(slot = 0 && i = global.playerWeaponEquiptArray[1]){i++;}
			if(slot = 1 && i = global.playerWeaponEquiptArray[0]){i++;}
		}
		
		//Create
		if(global.playerWeaponUnlocked[i] = true){
			if(++_weapon <= 6){
				with(
					instance_create_depth(
						480 + cx, 64 * _weapon + cy + 32,
						depth - _weapon, oWeapon
					)
				){
					titleWord = i;
					slot = other.slot;
				}
			}else{
				with(
					instance_create_depth(
						800 + cx, (64 * (_weapon - 6)) + cy + 32,
						depth - (_weapon - 6), oWeapon
					)
				){
					titleWord = i;
					slot = other.slot;
				}
			}
		}
	}
	selected = true;
}

//Know If Selected
if(!_instanceExists){selected = false;}
if(selected){image_index = 1;}

//Destroy
if(!global.gamePaused){instance_destroy();}