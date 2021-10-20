//Slide
if(type == TRANS_TYPE.SLIDE){
	draw_set_color(c_black);
	draw_rectangle(0, 0, width, percent * heightHalf, false);
	draw_rectangle(0, height, width, height - (percent * heightHalf), false);
}

//Fade
if(type == TRANS_TYPE.FADE){
	draw_set_alpha(percent * 1.5);
	draw_set_color(c_black);
	draw_rectangle(0, 0, width, height, false);
}