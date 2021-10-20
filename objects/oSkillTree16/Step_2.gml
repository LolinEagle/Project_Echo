///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerWeaponUnlocked[WEAPON.BOW] = false &&
	(global.playerItemUnlocked[ITEM.BOMB] || global.playerItemUnlocked[ITEM.MEDISHOT] || global.playerItemUnlocked[ITEM.INCENDIARY])
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.BOW] = true;
}

if(global.playerWeaponUnlocked[WEAPON.BOW] = true){image_index = 2;}