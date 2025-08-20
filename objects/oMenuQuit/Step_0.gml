//Inherit the parent event
event_inherited();

//Check if selected
if(mouse_check_button_pressed(mb_left) && image_index == 1){
	scSaveGame();
	game_end();
}