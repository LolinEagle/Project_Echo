z = 0;
spd = 0;
fric = 0;
bounce = 0;
deteriorate = 0;
collisionMap = layer_tilemap_get_id(layer_get_id("tsCol"));
image_index = irandom(image_number - 1);
image_xscale = choose(-1, 1);