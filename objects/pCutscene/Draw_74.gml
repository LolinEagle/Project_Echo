///@desc Overlay
draw_set_color(c_black);

//Black Bar
draw_set_alpha(1);
draw_rectangle(0, 0, RES_W, 128, false);
draw_rectangle(0, RES_H - 128, RES_W, RES_H, false);

//Overlay
draw_set_alpha(alpha);
draw_rectangle(0, 0, RES_W, RES_H, false);