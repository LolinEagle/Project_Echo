function scActivateLiftable(_id){
	if(global.iLifted == noone){
		scPlayerAct(sPlayerLift);
		sprite = sPlayerCarry;
		spriteRun = sPlayerRunCarry;
		global.iLifted = _id;
		with(global.iLifted){
			lifted = true;
			persistent = true;
		}
	}
}

function scDrawSet(_font, _halign, _valign){
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}

function scDrawSetDefault(){
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(fRoboto12);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
}

function scDropItems(_x, _y, _items){
	var _items = array_length(_items);
	if(_items > 1){
		var _anglePerItem = 360 / _items;
		var _angle = random(360);
		for(var i = 0; i < _items; i++){
			with(
				instance_create_layer(
					_x, _y, "Instances", _items[i]
				)
			){
				direction = _angle;
				spd = 0.75 + (_items * 0.1) + random(0.1);
			}
			_angle += _anglePerItem;
		}
	}else{
		instance_create_layer(_x, _y, "Instances", _items[0]);
	}
}

function scExecuteArray(_scr, _args){
	switch(array_length(_args)){
		case 1: return script_execute(_scr, _args[0]);
		case 2: return script_execute(_scr, _args[0], _args[1]);
		case 3: return script_execute(_scr, _args[0], _args[1], _args[2]);
		case 4: return script_execute(
			_scr, _args[0], _args[1], _args[2], _args[3]
		);
		case 5: return script_execute(
			_scr, _args[0], _args[1], _args[2], _args[3], _args[4]
		);
		case 6: return script_execute(
			_scr, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5]
		);
		default: show_error("script_execute_array", false);
	}
}
	
function scRoomTransition(){
	///@arg Type
	///@arg TargetRoom
	if(!instance_exists(oTransition)){
		with(instance_create_depth(0, 0, -10000, oTransition)){
			type = argument[0];
			target = argument[1];
		}
	}else{
		show_debug_message("Try to Transition while Transition is happening");
	}
}

function scScreenShake(_magnitude, _lenght){
	with(oCamera){
		if(_magnitude > shakeRemain){
			shakeMagnitude = _magnitude;
			shakeRemain = shakeMagnitude;
			shakeLenght = _lenght;
		}
	}
}
	
function scCameraGetView(){
	vc = view_camera[0];
	cx = camera_get_view_x(vc);
	cy = camera_get_view_y(vc);
}

function scWave(_from, _to, _time, _offset){
	//Returns a value that will wave back and forth between [from-to] over time
	wave = (_to - _from) * 0.5;
	return _from + wave + sin(
		(((current_time * 0.001) + _time * _offset) / _time) * (pi * 2)
	) * wave;
}