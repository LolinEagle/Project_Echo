titleVisible = 0.0;
keyPressed = false;
slotsVisible = 0.0;
slotsSelected = 0;
loadingStarted = false;

//Check if save exists.
for(var _slot = 0; _slot <= 3; _slot++){
	var _fileName = "save" + string(_slot) + ".sav";
	if(file_exists(_fileName)){
		slotData[_slot] = scLoadJsonFromFile(_fileName);
	}else{
		slotData[_slot] = -1;
	}
}

#macro SLOT slotData[_slot]