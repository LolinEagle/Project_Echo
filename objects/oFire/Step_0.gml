if(!global.gamePaused){
	flash--;
	
	//Hit Things
	if(++clock >= FPS){
		clock = 0;
		iFire++;
		flash = 10;
		var _entityList = ds_list_create();
		var _entityCount = instance_place_list(
			x, y, pEntity, _entityList, false
		);
		var _entity = noone;
		while(_entityCount > 0){
			_entity = _entityList[| 0];
			if(ds_list_find_index(collisionHistory, _entity) == -1){
				with(_entity){
					if(object_is_ancestor(object_index, pEnemy)){
						scHurtEnemy(id, 2, other.id, 0);
					}else{
						if(entityHitScript != -1){
							script_execute(entityHitScript);
						}
					}
				}
				ds_list_add(collisionHistory, _entity);
			}
			ds_list_delete(_entityList, 0);
			_entityCount--;
		}
		ds_list_destroy(_entityList);
	}
	if(iFire > 7){
		ds_list_destroy(collisionHistory);
		instance_destroy();
	}
}