function scOpenChest(){
	if(!activate.entityOpenChest){
		global.playerItemsAmmo[ITEM.BOMB] += 5;
		with(activate){image_index = 1;}
	}
	activate.entityOpenChest = true;
}