function scSaveGame(){
	//Create save map
	var _map = ds_map_create();
	
	//Room Data
	_map[? "room"] = room;
	_map[? "targetX"] = global.targetX;
	_map[? "targetY"] = global.targetY;
	
	//Player
	_map[? "playerHealth"] = global.playerHealth;
	_map[? "playerHealthMax"] = global.playerHealthMax;
	_map[? "playerMana"] = global.playerMana;
	_map[? "playerManaMax"] = global.playerManaMax;
	_map[? "playerMoney"] = global.playerMoney;
	
	//Ammo
	_map[? "playerItemsAmmo"] = global.playerItemsAmmo;
	_map[? "playerAmmo"] = global.playerAmmo;
	_map[? "playerAmmoLoad"] = global.playerAmmoLoad;
	
	//Xp
	_map[? "playerExp"] = global.playerExp;
	_map[? "playerExpNeed"] = global.playerExpNeed;
	_map[? "playerSkillPoint"] = global.playerSkillPoint;

	//Equipped & Unlocked
	_map[? "playerItemEquiptArray"] = global.playerItemEquiptArray;
	_map[? "playerItemUnlocked"] = global.playerItemUnlocked;
	_map[? "playerWeaponEquiptArray"] = global.playerWeaponEquiptArray;
	_map[? "playerWeaponUnlocked"] = global.playerWeaponUnlocked;
	
	//Option
	_map[? "gameOST"] = global.gameOST;
	_map[? "gameSFX"] = global.gameSFX;
	_map[? "gameUp"] = global.gameUp;
	_map[? "gameLeft"] = global.gameLeft;
	_map[? "gameDown"] = global.gameDown;
	_map[? "gameRight"] = global.gameRight;

	
	var _questMap = ds_map_create();
	ds_map_copy(_questMap, global.questStatus);
	ds_map_add_map(_map, "questStatus", _questMap);
	
	//Save all to a string
	var _string = json_encode(_map);
	scSaveStringToFile("save" + string(global.gameSaveSlot) + ".sav", _string);
	ds_map_destroy(_map);
}

function scSaveStringToFile(_fileName, _string){
	var _buffer = buffer_create(
		string_byte_length(_string) + 1, buffer_fixed, 1
	);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _fileName);
	buffer_delete(_buffer);
}