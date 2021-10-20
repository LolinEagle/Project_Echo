if(enemyLife != 0){
	scHurtPlayer(
		point_direction(x, y, oPlayer.x, oPlayer.y),
		enemyForceTouch,
		enemyDamageTouch
	);
}