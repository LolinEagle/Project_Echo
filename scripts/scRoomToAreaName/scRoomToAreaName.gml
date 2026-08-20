function scRoomToAreaName(_room){
	switch(_room){
		case rVillage: return "Village";
		case rVillage2: return "Around Village";
		case rCave: return "Cave";
		case rShop: return "Shop";
		case rIntro: return "The Meeting";
		default: return "Unknown Area";
	}
}