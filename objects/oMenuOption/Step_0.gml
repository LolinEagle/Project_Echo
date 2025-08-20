///@desc Menu Option logic

//Inherit the parent event
event_inherited();

//Check if selected
if(mouse_check_button_pressed(mb_left) && image_index == 1){
	global.gameSelected = true;
	selected = true;
	if(!instance_exists(oOption)){
		instance_create_depth(RES_W_HALF + cx, 128 + cy, depth - 2, oOption);
	}
}

if(selected && keyboard_check_pressed(vk_enter)){
	global.gameSelected = false;
	selected = false;
	instance_destroy(oOption);
}