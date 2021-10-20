///@desc Image index & Show text
if(
	instance_position(mouse_x, mouse_y, id)
	&& !instance_exists(oOption)
	&& image_index != 2
){
	image_index = 1;
	showText = true;
	iTitle++;
	selected = true
	xx = mouse_x + 16;
	yy = mouse_y - 16;
}else{
	image_index = 0;
	showText = false;
	iTitle = 0;
	selected = false
}