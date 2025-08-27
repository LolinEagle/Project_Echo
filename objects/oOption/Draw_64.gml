///@desc Draw Option
scDrawSet(fRoboto24, fa_center, fa_middle);

//Background
draw_set_colour(c_black);
var _back = 0;
draw_rectangle(_back, _back, RES_W - _back, RES_H - _back, false);

//Text
draw_set_colour(c_white);
draw_text(RES_W_HALF, RES_H * 0.8, "Pressed Enter to Exit");

//Volume
return;
draw_text(xstart - cx, y - cy - 32, "Music");
draw_rectangle_colour(
	xstart - cx - 320, y - cy - 8, xstart - cx + 320, y - cy + 8,
	c_maroon, c_maroon, c_red, c_red, false
);
draw_set_halign(fa_left);
draw_text(xstart - cx + 328, y - cy, string(percentage) + "%");
draw_sprite_ext(
	sprite_index, image_index, x - cx, y - cy,
	image_xscale, image_yscale, image_angle, image_blend, image_alpha
);