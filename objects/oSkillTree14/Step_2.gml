///@desc What this Button does
if(
	image_index = 1 &&
	mouse_check_button_pressed(mb_left) &&
	global.playerSkillPoint > 0 &&
	global.playerItemUnlocked[ITEM.CARD_LIGHTNING] = false &&
	global.playerWeaponUnlocked[WEAPON.ELEMENTAL_SCEPTER] = true
){
	global.playerSkillPoint--;
	global.playerItemUnlocked[ITEM.CARD_LIGHTNING] = true;
}if(global.playerItemUnlocked[ITEM.CARD_LIGHTNING] = true){image_index = 2;}