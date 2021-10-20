function scUseItemBomb(){
	if(global.playerItemsAmmo[ITEM.BOMB] > 0 && global.iLifted == noone){
		global.playerItemsAmmo[ITEM.BOMB]--;
		var _bomb = instance_create_layer(x, y, "Instances", oBomb);
		scActivateLiftable(_bomb);
	}
}

function scPlayerMediShot(){
	if(global.playerItemsAmmo[ITEM.MEDISHOT] > 0){
		global.playerItemsAmmo[ITEM.MEDISHOT]--;
		global.playerHealth += 2;
	}
}

function scUseItemIncendiary(){
	if(global.playerItemsAmmo[ITEM.INCENDIARY] > 0 && global.iLifted == noone){
		global.playerItemsAmmo[ITEM.INCENDIARY]--;
		var _bomb = instance_create_layer(x, y, "Instances", oIncendiary);
		scActivateLiftable(_bomb);
		scPlayerThrow();
	}
}