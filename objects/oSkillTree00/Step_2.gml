///@desc What this Button does
if(
	image_index = 1
	&& mouse_check_button_pressed(mb_left)
	&& global.playerSkillPoint > 0
	&& global.playerWeaponUnlocked[WEAPON.BAYONET] = false
){
	global.playerSkillPoint--;
	global.playerWeaponUnlocked[WEAPON.BAYONET] = true;
}
if(global.playerWeaponUnlocked[WEAPON.BAYONET] = true){image_index = 2;}