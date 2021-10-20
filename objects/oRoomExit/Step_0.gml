///@desc Cause a room transition
if(instance_exists(oPlayer) && position_meeting(oPlayer.x, oPlayer.y, id)){
	if(!instance_exists(oTransition) && oPlayer.state != scPlayerStateDead){
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = oPlayer.direction;
		global.targetSprite = oPlayer.sprite;
		global.targetSpriteRun = oPlayer.spriteRun;
			
		//Transition
		with(oPlayer){state = scPlayerStateTransition;}
		if(transitionType != -1){scRoomTransition(transitionType, targetRoom);}
		else{scRoomTransition(TRANS_TYPE.SLIDE, targetRoom);}

		//End the Transition
		instance_destroy();
	}
}