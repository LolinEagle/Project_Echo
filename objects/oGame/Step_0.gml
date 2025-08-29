///@desc Core Game Logic

//Full Screen
if(keyboard_check_pressed(vk_f1)){
	window_set_fullscreen(!window_get_fullscreen());
}

//Audio
audio_group_set_gain(OST, global.gameOST, 0);
audio_group_set_gain(SFX, global.gameSFX, 0);

//In in Battle?
if(instance_exists(pEnemy)){global.gamePausedBattle = true;}
else{global.gamePausedBattle = false;}

#region Player
//Player Health & Mana
global.playerHealth = min(global.playerHealthMax, global.playerHealth);
global.playerMana = min(global.playerManaMax, global.playerMana);

//Player Has Any Items
if(
	global.playerItemEquiptArray[0] = ITEM.NONE
	&& global.playerItemEquiptArray[1] = ITEM.NONE
	&& global.playerItemEquiptArray[2] = ITEM.NONE
){
	global.playerHasItems = false;
}else{
	global.playerHasItems = true;
}

//Player Has Any Weapon
if(
	global.playerWeaponEquiptArray[0] = WEAPON.NONE
	&& global.playerWeaponEquiptArray[1] = WEAPON.NONE
	&& global.playerWeaponEquiptArray[2] = WEAPON.NONE
){
	global.playerHasWeapon = false;
}else{
	global.playerHasWeapon = true;
}

//Player Experience
if(global.playerExp < 10){scPlayerLevelUp(1);}
for(var _i = 2; _i <= 99; _i++){
	if(global.playerExp >= _i * 10 - 10 && global.playerExp < _i * 10){
		scPlayerLevelUp(_i);
	}
}#endregion

//Debug
if(global.gameDebug){
	if(keyboard_check_pressed(vk_numpad0)){game_restart();}
	else if(keyboard_check_pressed(vk_numpad1)){global.playerSkillPoint += 10;}
	else if(keyboard_check_pressed(vk_numpad2)){global.playerSkillPoint -= 10;}
	else if(keyboard_check_pressed(vk_numpad9)){
		file_delete("save0.sav");
		file_delete("save1.sav");
		file_delete("save2.sav");
		file_delete("save3.sav");
	}
	if(false){
		scCollectCoin(0);
		scCollectItemsAmmo([0, 0]);
		scCollectWeaponAmmo([0, 0]);
		scCollectMana(0);
		scEntityHitDestroy();
		scEntityHitSolid();
	}
}