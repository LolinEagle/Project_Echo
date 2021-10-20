///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerWeaponUnlocked[WEAPON.ORB] = false
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.ORB] = true;
}if(global.playerWeaponUnlocked[WEAPON.ORB] = true){image_index = 2;}