///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerWeaponUnlocked[WEAPON.ELEMENTAL_SCEPTER] = false &&
	global.playerWeaponUnlocked[WEAPON.ORB] = true
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.ELEMENTAL_SCEPTER] = true;
}

if(global.playerWeaponUnlocked[WEAPON.ELEMENTAL_SCEPTER] = true){image_index = 2;}