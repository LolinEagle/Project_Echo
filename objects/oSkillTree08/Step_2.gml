///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerItemUnlocked[ITEM.SPEED] = false &&
	global.playerWeaponUnlocked[WEAPON.SWORD] = true
){
	global.playerSkillPoint--;
	global.playerItemUnlocked[ITEM.SPEED] = true;
}if(global.playerItemUnlocked[ITEM.SPEED] = true){image_index = 2;}