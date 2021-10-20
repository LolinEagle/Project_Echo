function scPlayerStateDash(){
	//Movement
	hSpeed = lengthdir_x(speedDash, direction);
	vSpeed = lengthdir_y(speedDash, direction);
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedDash);
	var _collided = scPlayerCollision();

	//Update Sprite
	sprite_index = spriteDash;
	var _frames = sprite_get_number(sprite_index) / 4;
	image_index = CARDINAL_DIR * _frames + min(
		((moveDistanceRemaining / distanceDash) - 1) * _frames, _frames - 1
	);

	//Change State
	if(moveDistanceRemaining <= 0){
		state = scPlayerStateFree;
	}
	
	//If collide with something
	if(_collided){
		state = scPlayerStateBonk;
		moveDistanceRemaining = distanceBonk;
		scScreenShake(4, 30);
	}
	global.playerItemsAmmo[ITEM.DASH] = 15;
}