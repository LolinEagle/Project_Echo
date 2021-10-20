if(!global.gamePaused){
	//Default state
	if(enemyScripts[state] != -1){script_execute(enemyScripts[state]);}
	depth = -bbox_bottom;
}