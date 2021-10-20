///@desc Pause & Unpause
if(
	keyboard_check_pressed(vk_escape)
	&& !instance_exists(oTransition)
	&& oHud.visible
){
	//Menu
	global.gameSelected = false;
	
	//Core Pause
	global.gamePaused = !global.gamePaused;
	if(global.gamePaused){
		//Pause
		with(all){
			gamePausedImageSpeed = image_speed;
			gamePausedSpeed = speed;
			image_speed = 0;
			speed = 0;
		}
		
		//Paused in Battle
		if(!global.gamePausedBattle){
			var _yy = RES_H / 6;
			instance_create_depth(144, _yy * 1, depth - 1, oMenuEquipment);
			instance_create_depth(144, _yy * 2, depth - 1, oMenuSkillTree);
			//instance_create_depth(144, _yy * 2, depth - 1, oMenuStatistical);
			//instance_create_depth(144, _yy * 2, depth - 1, oMenuNotebook);
			instance_create_depth(144, _yy * 5, depth - 1, oMenuOption);
		}
	}else{
		//Unpause
		if(instance_exists(oOption)){instance_destroy(oOption);}
		with(all){
			image_speed = gamePausedImageSpeed;
			speed = gamePausedSpeed;
		}
	}
}