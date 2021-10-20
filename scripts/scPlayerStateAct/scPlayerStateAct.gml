function scPlayerStateAct(){
	//Update Sprite
	scAnimateSprite();
	
	if(animationEnd){
		state = scPlayerStateFree;
		animationEnd = false;
		if(animationEndScript != -1){
			script_execute(animationEndScript);
			animationEndScript = -1;
		}
	}
}