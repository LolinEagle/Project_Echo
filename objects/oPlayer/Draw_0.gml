///@desc Draw Player

//Shadow
draw_sprite(sShadow, 0, floor(x), floor(y));

//Reaction
if(reaction){draw_sprite(sReaction, reactionSubimg, x, y - 64);}

//Hookshot
if(state == scPlayerStateHook){scDrawHookChain();}
if(invulnerable != 0 && (invulnerable mod 8 < 2) == 0 && flash == 0){
	;
}else{
	if(flash != 0){
		shader_set(flashShader);
		uFlash = shader_get_uniform(flashShader, "flash");
		shader_set_uniform_f(uFlash, flash);
	}
	
	//Draw Player
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
	if(shader_current() != -1){shader_reset();}
}

function scDrawHookChain(){
	if(image_index = 1 || image_index = 3){var _originX = floor(x) - 7;}
	else{var _originX = floor(x);}
	var _originY = floor(y) - 29;
	var _chain = hook / hookSize;
	var _hookDirX = sign(hookX);
	var _hookDirY = sign(hookY);
	for(var i = 0; i < _chain; i++){
		draw_sprite(
			sHookChain,
			0,
			_originX + hookX - (i * hookSize * _hookDirX),
			_originY + hookY - (i * hookSize * _hookDirY)
		)
	}
	draw_sprite(sHookBlade, image_index, _originX + hookX, _originY + hookY);
}