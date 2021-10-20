///@desc Draw the button
draw_sprite(sprite_index, image_index, x - cx, y - cy);

//Title word
scDrawSet(fRoboto24, fa_center, fa_middle);
var _string = global.weaponText[titleWord];
draw_text(x - cx, y - cy, _string);