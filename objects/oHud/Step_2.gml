///@desc Pause Logic
if(room == rMenu || instance_exists(oIntro)){visible = false;}
else{visible = true;}

if(global.gamePaused && !instance_exists(oOption)){
	keyUp	= keyboard_check_pressed(global.gameUp);
	keyDown	= keyboard_check_pressed(global.gameDown);
	pauseOptionSelected += (keyDown - keyUp);
	
	//Min & Max
	if(pauseOptionSelected >= array_length(pauseOption)){
		pauseOptionSelected = 0;
	}
	if(pauseOptionSelected < 0){
		pauseOptionSelected = array_length(pauseOption) - 1;
	}
	if(keyboard_check_pressed(vk_enter) || KEY_USE){
		switch(pauseOptionSelected){
			//Return
			case 0:
				global.gamePaused = false;
				if(instance_exists(oOption)){instance_destroy(oOption);}
				with(all){
					image_speed = gamePausedImageSpeed;
					speed = gamePausedSpeed;
				}
			break;
			
			//Back to Menu
			case 1:
				with(oGame){instance_destroy();}
				scSaveGame();
				game_restart();
			break;
	
			//Option
			case 2:
				scCameraGetView();
				instance_create_depth(
					RES_W_HALF + cx, 128 + cy, depth - 2, oOption
				);
			break;
			
			//Save & Quit
			case 3:
				scSaveGame();
				game_end();
			break;
		}
	}
}