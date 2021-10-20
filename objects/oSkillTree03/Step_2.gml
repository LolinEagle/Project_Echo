///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerWeaponUnlocked[WEAPON.SWORD] = false &&
	global.playerWeaponUnlocked[WEAPON.BAYONET] = true
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.SWORD] = true;
}

if(global.playerWeaponUnlocked[WEAPON.SWORD] = true){image_index = 2;}