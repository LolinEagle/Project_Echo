///@desc Collectible Logic
if(!global.gamePaused){
	flash = max(0, flash - 0.05);
	fric = 0.05;
	if(z == 0){fric = 0.04;}

	//Bounce
	if(bounceCount != 0){
		bounce += (pi * bounceSpeed);
		if(bounce > pi){
			bounce -= pi;
			bounceHeight *= 0.6;
			bounceCount--;
		}
		z = abs(sin(bounce)) * bounceHeight;
	}else{
		z = scWave(4, -4, 1, 0);
	}

	//Magnetise
	if(instance_exists(oPlayer)){
		var _px = oPlayer.x;
		var _py = oPlayer.y;
		var _dist = point_distance(x, y, _px, _py);
		
		//Magnetise Radius
		if(_dist < 24 || magnetise){
			spd += 0.5;
			spd = min(spd, 8);
			fric = 0;
			magnetise = true;
			direction = point_direction(x, y, _px, _py);
			
			//Collect Radius
			if(_dist < 8){
				if(collectScriptArg != -1){
					script_execute(collectScript, collectScriptArg);
				}else{
					if(collectScript != -1){
						script_execute(collectScript);
					}
				}
				instance_destroy();
			}
		}
	}

	//Cord
	x += lengthdir_x(spd, direction);
	y += lengthdir_y(spd, direction);

	//Speed
	spd = max(spd - fric, 0);

	//Depth
	depth = -bbox_bottom;
}