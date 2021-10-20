var _instanceExists = instance_exists(oItem);

//Image Index
if(instance_position(mouse_x, mouse_y, id) && !_instanceExists){
	image_index = 1;
}else{
	image_index = 0;
}

//What this Button does
if(mouse_check_button_pressed(mb_left) && image_index = 1 && !_instanceExists){
	var _item = 0;
	
	//Create Item
	for(var i = 0; i < ITEM.TYPE_COUNT; i++){
		//Skip
		if(
			i > 0
			&& (i = global.playerItemEquiptArray[0]
				|| i = global.playerItemEquiptArray[1]
				|| i = global.playerItemEquiptArray[2]
			)
			&& i != global.playerItemEquiptArray[slot]
		){
			continue;
		}
		
		//Create
		if(global.playerItemUnlocked[i] = true){
			if(++_item <= 6){
				with(
					instance_create_depth(
						480 + cx, (64 * _item) + cy + 32,
						depth - _item, oItem
					)
				){
					titleWord = i;
					slot = other.slot;
				}
			}else{
				with(
					instance_create_depth(
						800 + cx, (64 * (_item - 6)) + cy + 32,
						depth - (_item - 6), oItem
					)
				){
					titleWord = i;
					slot = other.slot;
				}
			}
		}
	}
	selected = true;
}

//Know If Selected
if(!_instanceExists){selected = false;}
if(selected){image_index = 1;}

//Destroy
if(!global.gamePaused){instance_destroy();}