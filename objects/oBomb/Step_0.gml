event_inherited();

if(!global.gamePaused){
	if(--bombTick == 0){
		flash = 0.75;
		bombStage++;
		bombTick = bombTickRate[bombStage];
	}
	if(bombTick < 0){
		y -= z;
		if(lifted){scPlayerDropItem();}
		instance_destroy();
	}
}