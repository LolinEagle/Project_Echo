//Image Index
if(instance_position(mouse_x - cx, mouse_y - cy, id) && !global.gameSelected){
	image_index = 1;
}else{
	image_index = 0;
}

//Destroy
if(!global.gamePaused){instance_destroy();}