///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerWeaponUnlocked[WEAPON.DEBUG] = false &&
	(global.playerItemUnlocked[ITEM.CARD_WATER] || global.playerItemUnlocked[ITEM.CARD_INCENDIARY] || global.playerItemUnlocked[ITEM.CARD_LIGHTNING])
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.DEBUG] = true;
}

if(global.playerWeaponUnlocked[WEAPON.DEBUG] = true){image_index = 2;}