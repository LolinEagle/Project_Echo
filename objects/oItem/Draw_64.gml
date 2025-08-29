///@desc Draw the button
draw_set_alpha(1);
draw_sprite(sprite_index, image_index, x - cx, y - cy);

//Title word
scDrawSet(fRoboto24, fa_center, fa_middle);
var _string = global.itemText[titleWord];
draw_text(x - cx, y - cy, _string);