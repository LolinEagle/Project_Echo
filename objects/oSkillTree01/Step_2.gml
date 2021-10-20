///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerWeaponUnlocked[WEAPON.GUN] = false
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.GUN] = true;
}if(global.playerWeaponUnlocked[WEAPON.GUN] = true){image_index = 2;}