if(entityShadow){draw_sprite(sShadow, 0, floor(x), floor(y));}

//Shader set
if(flash != 0){
	shader_set(flashShader);
	uFlash = shader_get_uniform(flashShader, "flash");
	shader_set_uniform_f(uFlash, flash);
}

//Draw the Entity
if(image_number > 7){scAnimateSprite();}
draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y - z),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

//Shader reset
if(shader_current() != -1){shader_reset();}