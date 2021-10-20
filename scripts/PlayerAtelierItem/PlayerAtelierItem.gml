function scPlayerCardWater(){
	if(
		global.playerItemsAmmo[ITEM.CARD_WATER] > 0
		&& global.iLifted == noone
	){
		direction = point_direction(x, y, mouse_x, mouse_y);
		global.playerItemsAmmo[ITEM.CARD_WATER]--;
		scPlayerFireAmmo(oCardWater, 8);
	}
}

function scPlayerCardIncendiary(){
	if(
		global.playerItemsAmmo[ITEM.CARD_INCENDIARY] > 0
		&& global.iLifted == noone
	){
		direction = point_direction(x, y, mouse_x, mouse_y);
		global.playerItemsAmmo[ITEM.CARD_INCENDIARY]--;
		scPlayerFireAmmo(oCardIncendiary, 8);
	}
}

function scPlayerCardLightning(){
	if(
		global.playerItemsAmmo[ITEM.CARD_LIGHTNING] > 0
		&& global.iLifted == noone
	){
		direction = point_direction(x, y, mouse_x, mouse_y);
		global.playerItemsAmmo[ITEM.CARD_LIGHTNING]--;
		scPlayerFireAmmo(oCardLightning, 8);
	}
}
