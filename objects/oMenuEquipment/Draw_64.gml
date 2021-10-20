//Inherit the parent event
event_inherited();

if(selected){
	//Rectangle
	draw_set_colour(c_dkgrey);
	draw_rectangle(0, 0, RES_W, RES_H, false);
	draw_set_colour(c_grey);
	draw_rectangle(8, 8, RES_W - 8, RES_H - 8, false);
	
	//Text
	draw_set_colour(c_black);
	draw_text(480 + 1, 40 + 2, "Equipment");
	draw_set_colour(c_white);
	draw_text(480, 40, "Equipment");

	//Bottom
	scDrawSet(fRoboto18, fa_center, fa_middle);
	draw_text(RES_W_HALF, RES_H - 32, "Pressed Enter to Exit");
}