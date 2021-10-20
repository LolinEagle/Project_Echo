///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerWeaponUnlocked[WEAPON.ASSAULT_RIFLE] = false &&
	global.playerWeaponUnlocked[WEAPON.GUN] = true
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.ASSAULT_RIFLE] = true;
}

if(global.playerWeaponUnlocked[WEAPON.ASSAULT_RIFLE] = true){image_index = 2;}