function scGameItemWeapon(){
	#region Item
	global.playerHasItems = false;
	global.playerItem = ITEM.NONE;
	global.playerItemEquipt = 0;
	global.playerItemEquiptArray = array_create(3, ITEM.NONE);
	global.playerItemUnlocked = array_create(ITEM.TYPE_COUNT, false);
	global.playerItemUnlocked[ITEM.NONE] = true;
	
	//Ammo
	global.playerItemsAmmo = array_create(ITEM.TYPE_COUNT, 0);
	global.playerItemsAmmo[ITEM.HOOK] = -1;
	
	//Item
	global.itemText = [
		"-",
		"Dash",
		"Hook",
		"Speed",
		"Bomb",
		"Medishot",
		"Incendiary",
		"Water Card",
		"Fire Card",
		"Lightning Card",
	];
	global.itemCollect = [
		oCoin,
		oCoin,
		oCoin,
		oCoin,
		oBombDrop,
		oCoin,
		oIncendiaryDrop,
		oCardWaterDrop,
		oCardIncendiaryDrop,
		oCardLightningDrop
	];#endregion

	#region Weapon
	global.playerHasWeapon = false;
	global.playerWeapon = WEAPON.NONE;
	global.playerWeaponEquipt = 0;
	global.playerWeaponEquiptArray = array_create(3, WEAPON.NONE);
	global.playerWeaponUnlocked = array_create(WEAPON.TYPE_COUNT, false);
	global.playerWeaponUnlocked[WEAPON.NONE] = true;
	
	//Ammo
	global.playerAmmo = array_create(WEAPON.TYPE_COUNT, -1);
	global.playerAmmo[WEAPON.BOW] = 0;
	global.playerAmmo[WEAPON.GUN] = 20;
	global.playerAmmo[WEAPON.ASSAULT_RIFLE] = 0;
	
	//Ammo Load
	global.playerAmmoLoad = array_create(WEAPON.TYPE_COUNT, -1);
	global.playerAmmoLoad[WEAPON.GUN] = 0;
	global.playerAmmoLoad[WEAPON.ASSAULT_RIFLE] = 0;
	
	//Weapon
	global.weaponText = [
		"-",
		"Bayonet",
		"Gun",
		"Orb",
		"Sword",
		"Assault Rifle",
		"Scepter",
		"",
		"Bow"
	];
	global.weaponCollect = [
		oCoin,
		oCoin,
		oBulletHandgunDrop,
		oManaDrop,
		oCoin,
		oBulletRifleDrop,
		oManaDrop,
		oCoin,
		oArrowDrop,
		oManaDrop
	];#endregion
}