///@desc Draw the button and textbox

//Title word
scDrawSet(fRoboto24, fa_center, fa_middle);
draw_self();
draw_text(x, y, titleWord);

//Textbox
if(showText && iTitle >= FPS){
	//Set
	scDrawSet(fRoboto24, fa_left, fa_top);
	var _width = string_width(titleTextbox) + 16;
	
	//Box
	draw_set_color(c_black);
	draw_rectangle(xx, yy, xx + _width, yy - 56, false);
	
	//Text
	draw_set_color(c_white);
	draw_text(xx + 8, yy - 48, titleTextbox);
}