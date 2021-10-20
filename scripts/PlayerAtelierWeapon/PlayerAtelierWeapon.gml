function scUseWeaponOrb(){
	//Entities Finder
	var _activateX = x + lengthdir_x(16, direction);
	var _activateY = y + lengthdir_y(16, direction);
	var _activateSize = 32;
	var _activateList = ds_list_create();
	var _entitiesFound = collision_rectangle_list(
		_activateX - _activateSize,
		_activateY - _activateSize,
		_activateX + _activateSize,
		_activateY + _activateSize,
		pEnemy,
		false,
		true,
		_activateList,
		true
	);
	while(_entitiesFound > 0){
		scPlayerAct(sPlayerOrb);
		var _check = _activateList[| --_entitiesFound];
		instance_create_depth(_check.x, _check.y, depth, oManaDrop);
		scHurtEnemy(_check, 1, other.id, 8);
	}
	ds_list_destroy(_activateList);
}

function scUseWeaponScepter(){
	if(global.playerMana >= 5 && global.iLifted == noone){
		direction = point_direction(x, y, mouse_x, mouse_y);
		global.playerMana -= 5;
		scPlayerAct(sPlayerScepter);
		scPlayerFireAmmo(oFireBall, 8);
	}
}