function scEntityDropList(){
	var _item0 = global.itemCollect[global.playerItemEquiptArray[0]];
	var _item1 = global.itemCollect[global.playerItemEquiptArray[1]];
	var _item2 = global.itemCollect[global.playerItemEquiptArray[2]];
	var _weapon0 = global.weaponCollect[global.playerWeaponEquiptArray[0]];
	var _weapon1 = global.weaponCollect[global.playerWeaponEquiptArray[1]];
	var _weapon2 = global.weaponCollect[global.playerWeaponEquiptArray[2]];
	entityDropList = choose(
		[oInstanceDestroy],
		[choose(_item0, _item1, _item2, _weapon0, _weapon1, _weapon2)],
		[choose(_item0, _item1, _item2), choose(_weapon0, _weapon1, _weapon2)],
		[choose(_item0, _item1, _item2), choose(_weapon0, _weapon1, _weapon2),
		choose(_item0, _item1, _item2, _weapon0, _weapon1, _weapon2)]
	);
}
