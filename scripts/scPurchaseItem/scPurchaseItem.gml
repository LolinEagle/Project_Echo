function scPurchaseItem(_item, _amount, _cost, _rebuy){
	if(global.playerMoney >= _cost){
		global.playerItemsAmmo[_item] += _amount;
		global.playerMoney -= _cost;
		if(!_rebuy){instance_destroy(activate);}
		var _desc = "";
		var _back = 0;
		switch(_item){
			case ITEM.DASH:
				_desc = "ITEM.DASH"; _back = 1;
			break;
			case ITEM.HOOK:
				_desc = "ITEM.HOOK"; _back = 1;
			break;
			case ITEM.SPEED:
				_desc = "ITEM.SPEED"; _back = 1;
			break;
			case ITEM.BOMB:
				_desc = "ITEM.BOMB"; _back = 2;
			break;
			case ITEM.MEDISHOT:
				_desc = "ITEM.MEDISHOT"; _back = 2;
			break;
			case ITEM.INCENDIARY:
				_desc = "ITEM.INCENDIARY"; _back = 2;
			break;
			case ITEM.CARD_WATER:
				_desc = "ITEM.CARD_WATER"; _back = 3;
			break;
			case ITEM.CARD_INCENDIARY:
				_desc = "ITEM.CARD_INCENDIARY"; _back = 3;
			break;
			case ITEM.CARD_LIGHTNING:
				_desc = "ITEM.CARD_LIGHTNING"; _back = 3;
			break;
			default:
				_desc = "No item description";
			break;
		}
		scNewTextBox(_desc, _back);
	}else{
		scNewTextBox("Not enough Money.", 1);
	}
}