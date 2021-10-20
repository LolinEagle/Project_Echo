//Inherit the parent event
event_inherited();

//Check if selected
if(mouse_check_button_pressed(mb_left) && image_index = 1){
	global.gameSelected = true;
	selected = true;
	
	if(!instance_exists(oEquipment0)){
		instance_create_depth(160 + cx, 096 + cy, depth - 1, oEquipment0);
		instance_create_depth(160 + cx, 160 + cy, depth - 1, oEquipment1);
		instance_create_depth(160 + cx, 224 + cy, depth - 1, oEquipment2);
		instance_create_depth(160 + cx, 288 + cy, depth - 1, oEquipment3);
		instance_create_depth(160 + cx, 352 + cy, depth - 1, oEquipment4);
		instance_create_depth(160 + cx, 416 + cy, depth - 1, oEquipment5);
	}
}
	
//Back to main menu
if(selected && keyboard_check_pressed(vk_enter)){
	global.gameSelected = false;
	selected = false;
	instance_destroy(oEquipment0);
}