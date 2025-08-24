function scRoomToAreaName(_room){
	switch(_room){
		case rVillage: return "Village"; break;
		case rVillage2: return "Around Village"; break;
		case rCave: return "Cave"; break;
		case rShop: return "Shop"; break;
		case rIntro: return "The Meeting"; break;
		default: return "Unknown Area"; break;
	}
}