///@desc Option Logic
scCameraGetView();

//Check if selected
if(mouse_check_button(mb_left) && instance_position(mouse_x, mouse_y, id)){
	selected = true;
}
if(!mouse_check_button(mb_left)){selected = false;}
if(selected){
	if(mouse_x > limitLeft && mouse_x < limitRight){x = mouse_x;}
	if(mouse_x <= limitLeft){x = limitLeft;}
	if(mouse_x >= limitRight){x = limitRight;}
	percentage = round(((x - limitLeft) / (limitRight - limitLeft)) * 100);
	global.gameSFX = (x - limitLeft) / (limitRight - limitLeft);
}