//Image Index
if(instance_position(mouse_x, mouse_y, id)){image_index = 1;}
else{image_index = 0;}

//What this Button does
if(mouse_check_button_pressed(mb_left) && image_index = 1){
	global.playerItemEquiptArray[slot] = titleWord;
	instance_destroy(oWeapon);
}

//Destroy
if(!instance_exists(oEquipment0)){instance_destroy();}