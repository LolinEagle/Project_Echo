function scUseItemDash(){
	if(global.playerItemsAmmo[ITEM.DASH] <= 0){
		moveDistanceRemaining = distanceDash;
		state = scPlayerStateDash;
		localFrame = 0;
	}
}

function scUseItemHook(){
	state = scPlayerStateHook;
	localFrame = 0;
}

function scUseItemSpeed(){
	if(global.playerItemsAmmo[ITEM.SPEED] <= 0){
		speedWalk = 8;
		speedTimer = FPS * 6;
	}
}