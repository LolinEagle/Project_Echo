///@desc Incendiary Variable

//Inherit the parent event
event_inherited();

//Incendiary Variable
flashShader = shRedFlash;
bombStage = 0;
bombTickRate = [60, 30, 30, 15, 15, 15, 15, -1];
bombTick = bombTickRate[0];