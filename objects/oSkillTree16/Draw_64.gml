///@desc Draw the button and textbox
var _colour = c_gray;
if(global.playerItemUnlocked[ITEM.BOMB] || global.playerItemUnlocked[ITEM.MEDISHOT] || global.playerItemUnlocked[ITEM.INCENDIARY]){_colour = c_white;}
draw_sprite_ext(sprite_index, image_index, x - cx, y - cy, 1, 1, 0, _colour, 1);

//Title word
scDrawSet(font, fa_center, fa_middle);
draw_text(x - cx, y - cy, titleWord);

//Textbox
return;
if(showText && iTitle >= FPS){
	//Set
	scDrawSet(fRoboto24, fa_left, fa_top);
	var _width = string_width(titleTextbox) + 16;
	
	//Box
	draw_set_color(c_black);
	draw_rectangle(xx - cx, yy - cy, xx + _width - cx, yy - 56 - cy, false);
	
	//Text
	draw_set_color(c_white);
	draw_text(xx + 8 - cx, yy - 56 - cy, titleTextbox);
}