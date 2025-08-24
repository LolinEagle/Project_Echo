///@desc Draw Hud

//When not Paused
if(!global.gamePaused){
	var _string;
	var _stringBis;

	//Top left
	#region Draw Health
	scDrawSet(fRoboto24, fa_left, fa_top);
	var _playeerHealth = global.playerHealth;
	var _playeerHealthMax = global.playerHealthMax;
	var _playeerHealthFrac = frac(_playeerHealth);
	_playeerHealth -= _playeerHealthFrac;
	for(var i = 1; i <= _playeerHealthMax; i++){
		var _imageIndex = (i > _playeerHealth);
		if(i == _playeerHealth + 1){
			_imageIndex += (_playeerHealthFrac > 0);
			_imageIndex += (_playeerHealthFrac > 0.25);
			_imageIndex += (_playeerHealthFrac > 0.5);
		}
		draw_sprite(sHudHealth, _imageIndex, 8 + ((i - 1) * 30), 8);
	}#endregion
	#region Draw Mana
	if(instance_exists(oPlayer)){
		scDrawSetDefault();
		var _amount = (global.playerMana / global.playerManaMax) * 100;
		draw_healthbar(
			8, 38, global.playerManaMax + 8, 64,
			_amount, c_black, c_blue, c_blue, 0, true, false
		);
	}#endregion
	#region Draw Item
	_xx = 8;
	_yy = 68;
	draw_sprite(sHudItemBox, 0, _xx, _yy);
	draw_sprite(sHudItem, global.playerItem, _xx, _yy);
	if(global.playerItemsAmmo[global.playerItem] != -1){
		draw_set_font(fRoboto18);
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_set_color(c_black);
		_xx = _xx + (sprite_get_width(sHudItemBox) / 2);
		_yy = _yy + sprite_get_height(sHudItemBox) + 12;
		_str = string(global.playerItemsAmmo[global.playerItem]);
		draw_text(_xx + 2, _yy, _str);
		draw_text(_xx - 2, _yy, _str);
		draw_text(_xx, _yy + 2, _str);
		draw_text(_xx, _yy - 2, _str);
		draw_set_color(c_white);
		draw_text(_xx, _yy, _str);
	}#endregion
	#region Draw Money
	var _xx = 80;
	var _yy = 90;
	draw_sprite(sCoin, 0, _xx, _yy);

	//Draw Coin Text
	scDrawSet(fRoboto18, fa_left, fa_top);
	draw_set_color(c_black);
	_xx += sprite_get_width(sCoin);
	_yy = 68;
	var _str = string(global.playerMoney);
	draw_text(_xx + 2, _yy, _str);
	draw_text(_xx - 2, _yy, _str);
	draw_text(_xx, _yy + 2, _str);
	draw_text(_xx, _yy - 2, _str);
	draw_set_color(c_white);
	draw_text(_xx, _yy, _str);#endregion

	//Top right
	#region Draw Experience
	if(--drawExperience > 0){
		scDrawSet(fRoboto24, fa_right, fa_top);
		_xx = RES_W - 8;
		_yy = 8;
		draw_set_color(c_black);
		draw_text(_xx + 1, _yy + 1, "Level : " + string(global.playerLevel));
		draw_text(_xx + 1, _yy - 1, "Level : " + string(global.playerLevel));
		draw_text(_xx - 1, _yy + 1, "Level : " + string(global.playerLevel));
		draw_text(_xx - 1, _yy - 1, "Level : " + string(global.playerLevel));
		draw_set_color(c_white);
		draw_text(_xx, _yy, "Level : " + string(global.playerLevel));
		
		//playerExpNeed
		draw_set_font(fRoboto18);
		draw_set_color(c_black);
		_string = "Exp Needed : " + string(global.playerExpNeed);
		draw_text(_xx + 1, _yy + 33, _string);
		draw_text(_xx + 1, _yy + 31, _string);
		draw_text(_xx - 1, _yy + 33, _string);
		draw_text(_xx - 1, _yy + 31, _string);
		draw_set_color(c_white);
		draw_text(_xx, _yy + 32, _string);
	}#endregion
	
	//Bottom left
	#region Key
	_xx = 24;
	_yy = RES_H - 8;
	var _strs = ["Pause", "Use", "Reload"];
	var _keys = ["Esc", "E", "R"];
	var _nbr = 68;
	var _localX = 0;
	var _localY = 0;

	//Draw Text
	for(var _iKey = 0; _iKey < 3; _iKey++){
		//Background
		draw_sprite(sKey, 0, _xx + (_iKey * _nbr), _yy - sprite_get_height(sKey));
		
		//Key
		if(_iKey > 0){
			scDrawSet(fRoboto18, fa_left, fa_bottom);
			draw_text(_xx + 8 + (_iKey * _nbr), _yy - 2, _keys[_iKey]);
		}else{
			//Esc
			scDrawSet(fRoboto12, fa_left, fa_bottom);
			draw_text(_xx + 3 + (_iKey * _nbr), _yy - 6, _keys[_iKey]);
		}

		//String
		scDrawSet(fRoboto18, fa_center, fa_bottom);
		draw_set_color(c_black);
		_localX = _xx + 14 + (string_length( _strs[_iKey]) / 2) + (_iKey * _nbr);
		_localY = _yy - sprite_get_height(sKey)
		draw_text(_localX + 1, _localY + 1, _strs[_iKey]);
		draw_text(_localX - 1, _localY + 1, _strs[_iKey]);
		draw_text(_localX + 1, _localY - 1, _strs[_iKey]);
		draw_text(_localX - 1, _localY - 1, _strs[_iKey]);
		draw_set_color(c_white);
		draw_text(_localX, _localY, _strs[_iKey]);
	}#endregion

	//Bottom right
	#region Draw Weapon
	scDrawSet(fRoboto18, fa_left, fa_bottom);
	draw_sprite(sHudWeaponBox, 0, RES_W - 8, RES_H - 8);
	draw_sprite(sHudSelect, global.playerWeaponEquipt, RES_W - 6, RES_H - 6);
	_xx = RES_W - 164;
	
	//Primary 1
	draw_sprite(
		sHudWeapon, global.playerWeaponEquiptArray[0],
		RES_W - 8, RES_H - 110
	);
	
	//Key
	draw_sprite(sKey, 0, _xx - 44, RES_H - 110 - sprite_get_height(sKey));
	draw_text(_xx - 34, RES_H - 112, "1");
	
	if(global.playerAmmoLoad[global.playerWeaponEquiptArray[0]] = -1){
		if(global.playerAmmo[global.playerWeaponEquiptArray[0]] != -1){
			draw_set_color(c_black);
			_string = global.playerAmmo[global.playerWeaponEquiptArray[0]];
			draw_text(_xx + 1, RES_H - 110 + 1, _string);
			draw_text(_xx - 1, RES_H - 110 + 1, _string);
			draw_text(_xx + 1, RES_H - 110 - 1, _string);
			draw_text(_xx - 1, RES_H - 110 - 1, _string);
			draw_set_color(c_white);
			draw_text(_xx, RES_H - 110, _string);
		}
	}
	else{
		draw_set_color(c_black);
		_string = global.playerAmmoLoad[global.playerWeaponEquiptArray[0]];
		_stringBis = global.playerAmmo[global.playerWeaponEquiptArray[0]];
		_string = string(_string) + "/" + string(_stringBis);
		draw_text(_xx + 1, RES_H - 110 + 1, _string);
		draw_text(_xx - 1, RES_H - 110 + 1, _string);
		draw_text(_xx + 1, RES_H - 110 - 1, _string);
		draw_text(_xx - 1, RES_H - 110 - 1, _string);
		draw_set_color(c_white);
		draw_text(_xx, RES_H - 110, _string);
	}
	
	//Primary 2
	draw_sprite(
		sHudWeapon, global.playerWeaponEquiptArray[1],
		RES_W - 8, RES_H - 046
	);
	
	//Key
	draw_sprite(sKey, 0, _xx - 44, RES_H - 46 - sprite_get_height(sKey));
	draw_text(_xx - 34, RES_H - 48, "2");
	
	if(global.playerAmmoLoad[global.playerWeaponEquiptArray[1]] = -1){
		if(global.playerAmmo[global.playerWeaponEquiptArray[1]] != -1){
			draw_set_color(c_black);
			_string = global.playerAmmo[global.playerWeaponEquiptArray[1]];
			draw_text(_xx + 1, RES_H - 46 + 1, _string);
			draw_text(_xx - 1, RES_H - 46 + 1, _string);
			draw_text(_xx + 1, RES_H - 46 - 1, _string);
			draw_text(_xx - 1, RES_H - 46 - 1, _string);
			draw_set_color(c_white);
			draw_text(_xx, RES_H - 46, _string);
		}
	}
	else{
		draw_set_color(c_black);
		_string = global.playerAmmoLoad[global.playerWeaponEquiptArray[1]];
		_stringBis = global.playerAmmo[global.playerWeaponEquiptArray[1]];
		_string = string(_string) + "/" + string(_stringBis);
		draw_text(_xx + 1, RES_H - 46 + 1, _string);
		draw_text(_xx - 1, RES_H - 46 + 1, _string);
		draw_text(_xx + 1, RES_H - 46 - 1, _string);
		draw_text(_xx - 1, RES_H - 46 - 1, _string);
		draw_set_color(c_white);
		draw_text(_xx, RES_H - 046, _string);
	}
	
	//Secondary
	draw_sprite(
		sHudWeapon, global.playerWeaponEquiptArray[2],
		RES_W - 8, RES_H - 008
	);
	
	//Key
	draw_sprite(sKey, 0, _xx - 44, RES_H - 8 - sprite_get_height(sKey));
	draw_text(_xx - 34, RES_H - 10, "3");
	
	if(global.playerAmmoLoad[global.playerWeaponEquiptArray[2]] = -1){
		if(global.playerAmmo[global.playerWeaponEquiptArray[2]] != -1){
			draw_set_color(c_black);
			_string = global.playerAmmo[global.playerWeaponEquiptArray[2]];
			draw_text(_xx + 1, RES_H - 8 + 1, _string);
			draw_text(_xx - 1, RES_H - 8 + 1, _string);
			draw_text(_xx + 1, RES_H - 8 - 1, _string);
			draw_text(_xx - 1, RES_H - 8 - 1, _string);
			draw_set_color(c_white);
			draw_text(_xx, RES_H - 8, _string);
		}
	}
	else{
		draw_set_color(c_black);
		_string = global.playerAmmoLoad[global.playerWeaponEquiptArray[2]];
		_stringBis = global.playerAmmo[global.playerWeaponEquiptArray[2]];
		_string = string(_string) + "/" + string(_stringBis);
		draw_text(_xx + 1, RES_H - 8 + 1, _string);
		draw_text(_xx - 1, RES_H - 8 + 1, _string);
		draw_text(_xx + 1, RES_H - 8 - 1, _string);
		draw_text(_xx - 1, RES_H - 8 - 1, _string);
		draw_set_color(c_white);
		draw_text(_xx, RES_H - 008, _string);
	}#endregion
}
else{
	//Draw Pause Screen
	
	//Background
	draw_set_color(c_black);
	draw_set_alpha(0.9);
	draw_rectangle(0, 0, RES_W, RES_H, false);
	scDrawSet(fRoboto24, fa_center, fa_middle);
	if(!global.gamePausedBattle){
		draw_set_color(c_black);
		draw_rectangle(0, 0, RES_W * 0.3, RES_H, false);
	}else{
		draw_text(RES_W_HALF, RES_H_HALF - 32, "- Pause -");
		for(var i = 0; i < array_length(pauseOption); i++){
			var _print = "";
			if(i = pauseOptionSelected){
				//The one Selected
				_print += "> " + pauseOption[i];
			}else{
				_print += pauseOption[i];
				draw_set_color(c_silver);
			}
		
			//Print
			draw_text(RES_W_HALF, RES_H_HALF + (i * 32), _print);
			draw_set_color(c_white);
		}
	}
}