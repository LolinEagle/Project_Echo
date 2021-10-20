///@desc sBombDrop pop out of chest

//Inherit the parent event
event_inherited();

//sBombDrop pop out of chest
if(entityOpenChest && --entityDrawI > 0){
	scDrawSet(fRoboto12, fa_middle, fa_center);
	var _yy = y - 32;
	draw_sprite(sBombDrop, 0, x, _yy);

	//Text
	draw_set_color(c_black);
	draw_text(x + 1, _yy + 1, "5");
	draw_text(x - 1, _yy + 1, "5");
	draw_text(x + 1, _yy - 1, "5");
	draw_text(x - 1, _yy - 1, "5");
	draw_set_color(c_white);
	draw_text(x, _yy, "5");
}