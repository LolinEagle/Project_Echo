if(titleVisible > 0){
	scDrawSet(fRoboto12, fa_middle, fa_center);
	draw_sprite(sTitle, 0, 0, -RES_H + titleVisible * RES_H);
	draw_set_alpha(titleVisible * abs(sin(get_timer() * 0.000001 * pi)));
	draw_set_color(c_black);
	draw_text(RES_W_HALF + 1, 406, "Press any key...");
	draw_set_color(c_white);
	draw_text(RES_W_HALF, 405, "Press any key...");
}

if(slotsVisible > 0){
	draw_set_alpha(slotsVisible);
	for(var _slot = 0; _slot <= 3; _slot++){
		var _y = 50 + _slot * 110;
		var _x = RES_W_HALF;
		var _img = 0;
		if(slotsSelected == _slot){
			_img = 1;
			draw_sprite(sPause, 0, _x - 32, _y + 55);
		}
		scNineSliceBoxStretched(sMenuBoxBg, _x, _y, RES_W, _y + 110, _img);
		
		//Draw the save data
		scDrawSet(fRoboto18, fa_top, fa_left);
		if(SLOT == -1){
			draw_text(_x + 16, _y + 16, "Start New Game...");
		}else{
			draw_text(
				_x + 16, _y + 16, scRoomToAreaName(SLOT[? "room"])
			);
			
			//Draw health
			var _playerHealth = SLOT[? "playerHealth"];
			var _playerHealthMax = SLOT[? "playerHealthMax"];
			var _playerHealthFrac = frac(_playerHealth);
			_playerHealth -= _playerHealthFrac;
			for(var i = 1; i <= _playerHealthMax; i++){
				var _imageIndex = i > _playerHealth;
				if(i == _playerHealth + 1){
					_imageIndex += _playerHealthFrac > 0;
					_imageIndex += _playerHealthFrac > 0.25;
					_imageIndex += _playerHealthFrac > 0.5;
				}
				draw_sprite(
					sHudHealth, _imageIndex, _x + 256 + ((i - 1) * 32), _y + 16
				);
			}
			
			//Draw Mana
			var _amount = (
				SLOT[? "playerMana"] / SLOT[? "playerManaMax"]
			) * 100;
			draw_healthbar(
				_x + 256, _y + 48, _x + SLOT[? "playerManaMax"] + 256, _y + 74,
				_amount, c_black, c_blue, c_blue, 0, true, false
			);
			
			//Draw Money
			draw_sprite(sCoin, 0, _x + 24, _y + 80);
			draw_text(_x + 40, _y + 60, SLOT[? "playerMoney"]);
		}
	}
}

//Titre Version
scDrawSet(fRoboto18, fa_right, fa_bottom);
draw_set_color(c_black);
draw_text(RES_W - 6, RES_H - 6, VERSION);
draw_set_color(c_white);
draw_text(RES_W - 8, RES_H - 8, VERSION);