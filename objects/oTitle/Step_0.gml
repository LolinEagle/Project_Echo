if(!keyPressed){
	titleVisible = min(1, titleVisible + 0.01);
}else{
	titleVisible = max(0, titleVisible - 0.02);
	slotsVisible = min(1, slotsVisible + 0.01);
	
	//Quit
	if(!instance_exists(oTitle1)){
		instance_create_depth(136, RES_H - 40, depth, oTitle1);
	}
}

//Up and Down
if(keyboard_check_pressed(global.gameUp)){
	if(--slotsSelected < 0){slotsSelected = 3;}
}
else if(keyboard_check_pressed(global.gameDown)){
	if(++slotsSelected > 3){slotsSelected = 0;}
}
for(var _slot = 0; _slot <= 3; _slot++){
	if(mouse_x > RES_W_HALF && mouse_y > 50 + _slot * 110 && mouse_y < 50 + (_slot + 1) * 110){
		slotsSelected = _slot;
	}
}

//Start Game
if(
	(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
	&& keyPressed
	&& !loadingStarted
){
	global.gameSaveSlot = slotsSelected;
	if(!scLoadGame(global.gameSaveSlot)){
		scRoomTransition(TRANS_TYPE.SLIDE, rIntro)
	}
	loadingStarted = true;
}

//Check keyPressed
if(keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left)){keyPressed = true;}