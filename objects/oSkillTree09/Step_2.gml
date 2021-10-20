///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerItemUnlocked[ITEM.BOMB] = false &&
	global.playerWeaponUnlocked[WEAPON.ASSAULT_RIFLE] = true
){
	global.playerSkillPoint--;
	global.playerItemUnlocked[ITEM.BOMB] = true;
}if(global.playerItemUnlocked[ITEM.BOMB] = true){image_index = 2;}