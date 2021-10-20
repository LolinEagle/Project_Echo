function scLoadGame(_slot){
	global.gameSaveSlot = _slot;
	var _file = "save" + string(global.gameSaveSlot) + ".sav";
	if(file_exists(_file)){
		//Load Data
		var _json = scLoadJsonFromFile(_file);
	
		//Player
		global.playerHealth = _json[? "playerHealth"];
		global.playerHealthMax = _json[? "playerHealthMax"];
		global.playerMana = _json[? "playerMana"];
		global.playerManaMax = _json[? "playerManaMax"];
		global.playerMoney = _json[? "playerMoney"];
	
		//Xp
		global.playerExp = _json[? "playerExp"];
		global.playerExpNeed = _json[? "playerExpNeed"];
		global.playerSkillPoint = _json[? "playerSkillPoint"];

		//Item Equipped
		for(var i = 0; i < 3; i++){
			global.playerItemEquiptArray[i] = (
				_json[? "playerItemEquiptArray"][| i]
			);
		}
		
		//Weapon Equipt
		for(var i = 0; i < 3; i++){
			global.playerWeaponEquiptArray[i] = (
				_json[? "playerWeaponEquiptArray"][| i]
			);
		}
		
		//Item Unlocked
		for(var i = 0; i < ITEM.TYPE_COUNT; i++){
			global.playerItemUnlocked[i] = _json[? "playerItemUnlocked"][| i];
			global.playerItemsAmmo[i] = _json[? "playerItemsAmmo"][| i];
		}
		
		//Weapon Unlocked
		for(var i = 0; i < WEAPON.TYPE_COUNT; i++){
			global.playerWeaponUnlocked[i] = (
				_json[? "playerWeaponUnlocked"][| i]
			);
			global.playerAmmo[i] = _json[? "playerAmmo"][| i];
			global.playerAmmoLoad[i] = _json[? "playerAmmoLoad"][| i];
		}
	
		//Quest Status
		ds_map_copy(global.questStatus, _json[? "questStatus"]);
		
		//Option
		global.gameOST = _json[? "gameOST"];
		global.gameSFX = _json[? "gameSFX"];
		global.gameUp = _json[? "gameUp"];
		global.gameLeft = _json[? "gameLeft"];
		global.gameDown = _json[? "gameDown"];
		global.gameRight = _json[? "gameRight"];
		
		//Room Data
		global.targetX = _json[? "targetX"];
		global.targetY = _json[? "targetY"];
		scRoomTransition(TRANS_TYPE.SLIDE, _json[? "room"]);
		ds_map_destroy(_json);
		return true;
	}else{
		return false;
	}
}

function scLoadJsonFromFile(_fileName){
	var _buffer = buffer_load(_fileName);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	var _json = json_decode(_string);
	return _json;
}