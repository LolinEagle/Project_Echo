function scCollectCoin(_amount){
	global.playerMoney += _amount;
}

function scCollectItemsAmmo(_array){
	//Array = [ITEM.TYPE, amount]
	global.playerItemsAmmo[_array[0]] += _array[1];
}

function scCollectWeaponAmmo(_array){
	//Array = [WEAPON.TYPE, amount]
	global.playerAmmo[_array[0]] += _array[1];
}

function scCollectMana(_amount){
	global.playerMana += _amount;
}