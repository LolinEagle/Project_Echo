///@desc Draw the button
draw_set_alpha(1);
draw_sprite(sprite_index, image_index, x - cx, y - cy);

//Title word
scDrawSet(fRoboto24, fa_center, fa_middle);
if (global.playerItemEquiptArray[slot] == 0){
	draw_set_alpha(0.75);
	draw_text(x - cx, y - cy, equipmentString);
}else{
	draw_text(x - cx, y - cy, global.itemText[global.playerItemEquiptArray[slot]]);
}