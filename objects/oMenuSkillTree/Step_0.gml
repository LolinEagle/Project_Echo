//Inherit the parent event
event_inherited();

//Check if selected
if(mouse_check_button_pressed(mb_left) && image_index = 1){
	global.gameSelected = true;
	selected = true;
	
	if(!instance_exists(oSkillTree00)){
		instance_create_depth(160 + cx, 96 + cy, depth - 1, oSkillTree00);
		instance_create_depth(480 + cx, 96 + cy, depth - 1, oSkillTree01);
		instance_create_depth(800 + cx, 96 + cy, depth - 1, oSkillTree02);
		
		instance_create_depth(160 + cx, 160 + cy, depth - 2, oSkillTree03);
		instance_create_depth(480 + cx, 160 + cy, depth - 2, oSkillTree04);
		instance_create_depth(800 + cx, 160 + cy, depth - 2, oSkillTree05);
		
		instance_create_depth(160 + cx - 86, 224 + cy, depth - 3, oSkillTree06);
		instance_create_depth(160 + cx, 224 + cy, depth - 3, oSkillTree07);
		instance_create_depth(160 + cx + 86, 224 + cy, depth - 3, oSkillTree08);
		
		instance_create_depth(480 + cx - 86, 224 + cy, depth - 3, oSkillTree09);
		instance_create_depth(480 + cx, 224 + cy, depth - 3, oSkillTree10);
		instance_create_depth(480 + cx + 86, 224 + cy, depth - 3, oSkillTree11);
		
		instance_create_depth(800 + cx - 86, 224 + cy, depth - 3, oSkillTree12);
		instance_create_depth(800 + cx, 224 + cy, depth - 3, oSkillTree13);
		instance_create_depth(800 + cx + 86, 224 + cy, depth - 3, oSkillTree14);
		
		//instance_create_depth(160 + cx, 288 + cy, depth - 4, oSkillTree15);
		instance_create_depth(480 + cx, 288 + cy, depth - 4, oSkillTree16);
		//instance_create_depth(800 + cx, 288 + cy, depth - 4, oSkillTree17);
	}
}

//Back to main menu
if(selected && keyboard_check_pressed(vk_enter)){
	global.gameSelected = false;
	selected = false;
	instance_destroy(oSkillTree00);
}