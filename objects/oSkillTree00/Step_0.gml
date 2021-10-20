if(image_index != 2){
	if(instance_position(mouse_x, mouse_y, id)){
		image_index = 1;
		showText = true;
		iTitle++;
		xx = mouse_x + 16;
		yy = mouse_y - 16;
	}else{
		image_index = 0;
		showText = false;
		iTitle = 0;
	}
}else{
	if(instance_position(mouse_x, mouse_y, id)){
		showText = true;
		iTitle++;
		xx = mouse_x + 16;
		yy = mouse_y - 16;
	}else{
		showText = false;
		iTitle = 0;
	}
}

//Destroy
if(!global.gamePaused){instance_destroy();}