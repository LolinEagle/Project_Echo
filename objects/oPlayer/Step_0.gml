///@desc Player Logic

//Input
keyLeft          = keyboard_check(global.gameLeft);
keyRight         = keyboard_check(global.gameRight);
keyUp            = keyboard_check(global.gameUp);
keyDown          = keyboard_check(global.gameDown);
keyUse           = KEY_USE;
keyReload        = KEY_RELOAD;
keyAttackPressed = KEY_ATTACK_PRESSED;
keyAttack        = KEY_ATTACK;
keyItem          = KEY_ITEM;
keyItemSelect    = KEY_ITEM_SELECT;
keyMouseUp       = KEY_MOUSE_UP;
keyPrimary1      = KEY_PRIMARY_1;
keyPrimary2      = KEY_PRIMARY_2;
keySecondaary    = KEY_SECOND;
keyMouseDown     = KEY_MOUSE_DOWN;

//Direction
inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

//State
if(!global.gamePaused){
	script_execute(state);
	invulnerable = max(invulnerable - 1, 0);
	flash = max(flash - 0.05, 0);
}

//Clock
if(++clock >= FPS){
	if(global.playerItemsAmmo[ITEM.DASH] > 0){
		global.playerItemsAmmo[ITEM.DASH]--;
	}
	if(global.playerItemsAmmo[ITEM.SPEED] > 0){
		global.playerItemsAmmo[ITEM.SPEED]--;
	}
	clock = 0;
}

if(speedWalk != originalSpeedWalk && --speedTimer <= 0){
	speedWalk = originalSpeedWalk;
	global.playerItemsAmmo[ITEM.SPEED] = 15;
}

//Depth
depth = -y;