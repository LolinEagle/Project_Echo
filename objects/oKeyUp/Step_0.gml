///@desc Check if selected
if(
	mouse_check_button_pressed(mb_left)
	&& instance_position(mouse_x, mouse_y, id)
){
	selected = true;
}
if(selected){
	image_index = 1;
	var newKey = keyboard_key;

	//New Key
	switch(newKey){
		case global.gameUp: break;
		case global.gameLeft: break;
		case global.gameDown: break;
		case global.gameRight: break;
		case vk_escape: break;
		case vk_f1: break;
		case vk_f2: break;
		case vk_f3: break;
		case vk_f4: break;
		case vk_f5: break;
		case vk_f6: break;
		case vk_f7: break;
		case vk_f8: break;
		case vk_f9: break;
		case vk_f10: break;
		case vk_f11: break;
		case vk_f12: break;
		case 0: break;
		default: 
			gameKey = newKey;
			selected = false;
		break;
	}
}else{
	image_index = 0;
}