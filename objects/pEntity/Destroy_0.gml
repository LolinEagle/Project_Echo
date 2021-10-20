///@desc Drop fragment & items
if(entityFragmentCount > 0){
	fragmentArray = array_create(entityFragmentCount, entityFragment);
	scDropItems(x, y, fragmentArray);
}

//Drop List
if(variable_instance_exists(id, "entityDropList")){
	scEntityDropList();
	scDropItems(x, y, entityDropList);
}