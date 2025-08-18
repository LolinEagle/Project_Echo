function scNewTextBox(_message){
	///@arg message
	///@arg background
	///@arg responses
	var _obj;
	if(instance_exists(oText)){_obj = oTextQueued;}
	else{_obj = oText;}

	with(instance_create_layer(0, 0, "Instances", _obj)){
		//Message
		message = _message;
		if(instance_exists(other)){originInstance = other.id}
		else{originInstance = noone;}
	
		//Background
		if(argument_count > 1){background = argument[1];}
		else{background = 0}
	
		//Responses
		if(argument_count > 2){
			responses = argument[2];
			for(var i = 0; i < array_length(responses); i++){
				var _markerPosition = string_pos(":", responses[i]);
				responsesScripts[i] = (
					string_copy(responses[i], 1, _markerPosition - 1)
				);
				responsesScripts[i] = real(responsesScripts[i]);
				responses[i] = string_delete(responses[i], 1, _markerPosition);
			}
		}else{
			responses = [-1];
			responsesScripts = [-1];
		}
	}

	with(oPlayer){
		if(state != scPlayerStateLock && !instance_exists(oIntro)){
			lastState = state;
			state = scPlayerStateLock;
		}
	}
}

function scNewTextBoxBig(_line0, _line1, _line2, _line3){
	///@arg line0
	///@arg line1
	///@arg line2
	///@arg line3
	///@arg background
	///@arg responses
	var _obj;
	if(instance_exists(oText)){_obj = oTextQueued;}
	else{_obj = oText;}

	with(instance_create_layer(0, 0, "Instances", _obj)){
		//Message
		message = _line0 + "\n" + _line1 + "\n" + _line2 + "\n" + _line3;
		if(instance_exists(other)){originInstance = other.id}
		else{originInstance = noone;}
	
		//Background
		if(argument_count > 4){background = argument[4];}
		else{background = 0}
	
		//Responses
		if(argument_count > 5){
			responses = argument[5];
			for(var i = 0; i < array_length(responses); i++){
				var _markerPosition = string_pos(":", responses[i]);
				responsesScripts[i] = (
					string_copy(responses[i], 1, _markerPosition - 1)
				);
				responsesScripts[i] = real(responsesScripts[i]);
				responses[i] = string_delete(responses[i], 1, _markerPosition);
			}
		}else{
			responses = [-1];
			responsesScripts = [-1];
		}
	}

	with(oPlayer){
		if(state != scPlayerStateLock && !instance_exists(oIntro)){
			lastState = state;
			state = scPlayerStateLock;
		}
	}
}

function scNewTextBoxCutscenes(_message){
	///@arg message
	///@arg background
	var _obj;
	if(instance_exists(oText)){_obj = oTextQueued;}
	else{_obj = oText;}

	//Create
	with(instance_create_layer(0, 0, "Instances", _obj)){
		//Message
		message = _message;
		if(instance_exists(other)){originInstance = other.id}
		else{originInstance = noone;}
	
		//Background
		if(argument_count > 1){background = argument[1];}
		else{background = 0;}
	
		//Responses
		responses = [-1];
		responsesScripts = [-1];
	}
	
	//Cutscenes
	global.gameCutscenes++;
}

function scNewTextBoxCutscenesBig(_line0, _line1, _line2, _line3){
	///@arg message
	///@arg background
	var _obj;
	if(instance_exists(oText)){_obj = oTextQueued;}
	else{_obj = oText;}

	//Create
	with(instance_create_layer(0, 0, "Instances", _obj)){
		//Message
		message = _line0 + "\n" + _line1 + "\n" + _line2 + "\n" + _line3;
		if(instance_exists(other)){originInstance = other.id}
		else{originInstance = noone;}
	
		//Background
		if(argument_count > 4){background = argument[4];}
		else{background = 0;}
	
		//Responses
		responses = [-1];
		responsesScripts = [-1];
	}
	
	//Cutscenes
	global.gameCutscenes++;
}

function scNineSliceBoxStretched(_a0, _a1, _a2, _a3, _a4, _a5){
	///@desc NineSliceBoxStretched(sprite, x1, y1, x2, y2)
	///@arg sprite
	///@arg x1 left
	///@arg y1 top
	///@arg x2 right
	///@arg y2 bottom
	///@arg index image_index
	var _s = sprite_get_width(_a0) / 3;
	var _x1 = _a1;
	var _y1 = _a2;
	var _x2 = _a3;
	var _y2 = _a4;
	var _i = _a5;
	var _w = _x2 - _x1;
	var _h = _y2 - _y1;

	//MIDDLE
	draw_sprite_part_ext(
		_a0, _i,
		_s, _s, 1, 1, _x1 + _s, _y1 + _s, _w - (_s * 2), _h - (_s * 2),
		c_white, draw_get_alpha()
	);

	//CORNERS
	
	//TOP LEFT
	draw_sprite_part(
		_a0, _i, 0, 0, _s, _s, _x1, _y1
	);
	//TOP RIGHT
	draw_sprite_part(
		_a0, _i, _s * 2, 0, _s, _s, _x1 + _w - _s, _y1
	);
	//BOTTOM LEFT
	draw_sprite_part(
		_a0, _i, 0, _s * 2, _s, _s, _x1, _y1 + _h - _s
	);
	//BOTTOM RIGHT
	draw_sprite_part(
		_a0, _i, _s * 2, _s * 2, _s, _s, _x1 + _w - _s, _y1 + _h - _s
	);

	//EDGES
	
	//LEFT
	draw_sprite_part_ext(
		_a0, _i,
		0, _s, _s, 1, _x1, _y1 + _s, 1, _h - (_s * 2),
		c_white, draw_get_alpha()
	);
	//RIGHT
	draw_sprite_part_ext(
		_a0, _i,
		_s * 2, _s, _s, 1, _x1 + _w - _s, _y1 + _s, 1, _h - (_s * 2),
		c_white, draw_get_alpha()
	);
	//TOP
	draw_sprite_part_ext(
		_a0, _i,
		_s, 0, 1, _s, _x1 + _s, _y1, _w - (_s * 2), 1,
		c_white, draw_get_alpha()
	);
	//BOTTOM
	draw_sprite_part_ext(
		_a0, _i,
		_s, _s * 2, 1, _s, _x1 + _s, _y1 + _h - (_s), _w - (_s * 2), 1,
		c_white, draw_get_alpha()
	);
}