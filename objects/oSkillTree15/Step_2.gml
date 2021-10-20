///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerWeaponUnlocked[WEAPON.LONG_SWORD] = false &&
	(global.playerItemUnlocked[ITEM.DASH] || global.playerItemUnlocked[ITEM.HOOK] || global.playerItemUnlocked[ITEM.SPEED])
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.LONG_SWORD] = true;
}

if(global.playerWeaponUnlocked[WEAPON.LONG_SWORD] = true){image_index = 2;}