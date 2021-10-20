///@desc Draw Option
scDrawSet(fRoboto24, fa_center, fa_middle);

//Volume
draw_text(xstart - cx, y - cy - 32, "SFX");
draw_rectangle_colour(
	xstart - cx - 320, y - cy - 8, xstart - cx + 320, y - cy + 8,
	c_maroon, c_maroon, c_red, c_red, false
);
draw_set_halign(fa_left);
draw_text(xstart - cx + 328, y - cy, string(percentage) + "%");
draw_sprite_ext(
	sprite_index,
	image_index,
	x - cx,
	y - cy,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);