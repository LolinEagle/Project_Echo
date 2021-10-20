///@desc Initialise & Globals
randomize();
surface_resize(application_surface, RES_W, RES_H);
audio_group_load(OST);
audio_group_load(SFX);

//Game
global.gameDebug = true;
global.gameSaveSlot = 0;
global.gamePaused = false;
global.gamePausedBattle = false;
global.gameSelected = false;
global.gameCutscenes = 0;

//Option
global.gameOST = 0.5;
global.gameSFX = 0.5;
global.gameUp = ord("W");
global.gameLeft = ord("A");
global.gameDown = ord("S");
global.gameRight = ord("D");

//Text
global.questStatus = ds_map_create();
global.questStatus[? "TheFuelQuest"] = 0;
global.textSpeed = 0.5;

//Room Transition
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.targetSprite = sPlayer;
global.targetSpriteRun = sPlayerRun;

//Other Instance
global.iLifted = noone;
instance_create_layer(0, 0, layer, oCamera);
instance_create_layer(0, 0, layer, oHud);

//Player
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerManaMax = 100;
global.playerMana = global.playerManaMax;
global.playerMoney = 0;
global.playerExp = 0;
global.playerExpNeed = 0;
global.playerLevel = 0;
global.playerSkillPoint = 0;

//Item & Weapon
scGameItemWeapon();