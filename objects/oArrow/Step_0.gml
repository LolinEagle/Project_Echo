///@desc Hit Things
var _entity = instance_place(x, y, pEntity);
var _break = false;
if(_entity != noone){
	with(_entity){
		if(object_is_ancestor(object_index, pEnemy)){
			scHurtEnemy(id, 1, other.id, 16);
			_break = true;
		}else{
			if(entityHitScript != -1){
				script_execute(entityHitScript);
				_break = true;
			}
		}
	}
	if(_break){instance_destroy();}
}