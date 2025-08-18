function scPlayerStateCutscenes(){
	var _oldSprite = sprite_index;

	//Sprite & Horizontal Speed
	if(x < 448){
		hSpeed = 0.5;
		sprite_index = spriteRun;
	}else{
		hSpeed = 0;
		sprite_index = sprite;
	}
	
	//Variables & Animate
	direction = 0;
	image_speed = 0;
	if(_oldSprite != sprite_index){localFrame = 0;}
	scAnimateSprite();
	
	//Collision
	scPlayerCollision();
}

function scPlayerTalk(){
	with(oPlayer){
		if(sprite_index = sPlayer){sprite = sPlayerTalk;}
		else{sprite = sPlayer;}
		localFrame = 0;
	}
}

function scMysteriousManTalk(){
	with(oMysteriousMan){
		if(sprite_index = sMysteriousMan){
			sprite_index = sMysteriousManTalk;
		}else{
			sprite_index = sMysteriousMan;
			image_index = 2;
		}
		localFrame = 0;
	}
}