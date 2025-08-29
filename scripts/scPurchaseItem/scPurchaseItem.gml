function scPurchaseItem(_item, _amount, _cost, _rebuy){
	if(global.playerMoney >= _cost){
		global.playerItemsAmmo[_item] += _amount;
		global.playerMoney -= _cost;
		if(!_rebuy){instance_destroy(activate);}
		var _desc = "";
		var _back = 0;
		switch(_item){
			case ITEM.BOMB:
				_desc = "Bomb Acquired"; _back = 2;
			break;
			case ITEM.MEDISHOT:
				_desc = "MediShot Acquired"; _back = 2;
			break;
			case ITEM.INCENDIARY:
				_desc = "Insendiary Acquired"; _back = 2;
			break;
			case ITEM.CARD_WATER:
				_desc = "Water Card Acquired"; _back = 3;
			break;
			case ITEM.CARD_INCENDIARY:
				_desc = "Insendiary Card Acquired"; _back = 3;
			break;
			case ITEM.CARD_LIGHTNING:
				_desc = "Lightning Card Acquired"; _back = 3;
			break;
			default:
				_desc = "No item description";
			break;
		}
		scNewTextBox(_desc, _back);
	}
	else{
		scNewTextBox("Not enough Money.", 1);
	}
}