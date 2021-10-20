function scDialogueResponses(_responses){
	switch(_responses){
		case 0: break;
		case 1: scNewTextBox("You gave response A!", 1); break;
		case 2:
			scNewTextBox("You gave response B!", 1, ["3:Yes!", "0:No."]);
		break;
		case 3: scNewTextBox("Thanks", 0); break;
		case 4:
			scNewTextBox("Thanks!", 1);
			global.questStatus[? "TheFuelQuest"] = 1;
		break;
		case 5: scNewTextBox("Rude!", 1); break;
		case 6:
			scPurchaseItem(
				activate.item,
				activate.itemAmount,
				activate.itemCost,
				activate.itemRebuy
			);
		break;
		default: break;
	}
}