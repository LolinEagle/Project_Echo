///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerItemUnlocked[ITEM.CARD_INCENDIARY] = false &&
	global.playerWeaponUnlocked[WEAPON.ELEMENTAL_SCEPTER] = true
){
	global.playerSkillPoint--;
	global.playerItemUnlocked[ITEM.CARD_INCENDIARY] = true;
}if(global.playerItemUnlocked[ITEM.CARD_INCENDIARY] = true){image_index = 2;}