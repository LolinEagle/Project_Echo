///@desc Check for quest

//Inherit the parent event
event_inherited();

//Check for quest
if(global.questStatus[? "TheFuelQuest"] == 2){instance_destroy();}