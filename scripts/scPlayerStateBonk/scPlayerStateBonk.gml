function scPlayerStateBonk(){
	//Movement
	hSpeed = lengthdir_x(speedBonk, direction - 180);
	vSpeed = lengthdir_y(speedBonk, direction - 180);
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedBonk);
	scPlayerCollision();

	//Update Sprite
	sprite_index = sPlayerHurt;
	image_index = CARDINAL_DIR - 2;

	//Change Height
	z = sin(((moveDistanceRemaining / distanceBonk) * pi)) * distanceBonkHeight;

	//Change State
	if(moveDistanceRemaining <= 0){state = scPlayerStateFree;}
}