///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerItemUnlocked[ITEM.HOOK] = false &&
	global.playerWeaponUnlocked[WEAPON.SWORD] = true
){
	global.playerSkillPoint--;
	global.playerItemUnlocked[ITEM.HOOK] = true;
}if(global.playerItemUnlocked[ITEM.HOOK] = true){image_index = 2;}