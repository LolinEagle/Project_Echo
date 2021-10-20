//Inherit the parent event
event_inherited();

if(selected){
	//Rectangle
	var _xy = 8;
	draw_set_colour(c_maroon);
	draw_rectangle(0, 0, 320, RES_H, false);
	draw_set_colour(c_red);
	draw_rectangle(_xy, _xy, 320 - _xy, RES_H - _xy, false);
	draw_set_colour(c_olive);
	draw_rectangle(320, 0, 640, RES_H, false);
	draw_set_colour(c_green);
	draw_rectangle(320 + _xy, _xy, 640 - _xy, RES_H - _xy, false);
	draw_set_colour(c_navy);
	draw_rectangle(640, 0, RES_W, RES_H, false);
	draw_set_colour(c_blue);
	draw_rectangle(640 + _xy, _xy, RES_W - _xy, RES_H - _xy, false);
	
	//Text
	draw_set_colour(c_black);
	draw_text(160 + 1, 40 + 2, "Izanagi");
	draw_text(480 + 1, 40 + 2, "Dominion");
	draw_text(800 + 1, 40 + 2, "Workshop");
	draw_set_colour(c_white);
	draw_text(160, 40, "Izanagi");
	draw_text(480, 40, "Dominion");
	draw_text(800, 40, "Workshop");

	//Bottom
	scDrawSet(fRoboto18, fa_center, fa_middle);
	draw_text(
		144 + _xy, RES_H - 32,
		"Skill Point: " + string(global.playerSkillPoint)
	);
	draw_text(784 + _xy, RES_H - 32, "Pressed Enter to Exit");
}