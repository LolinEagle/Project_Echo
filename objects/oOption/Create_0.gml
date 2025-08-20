///@desc Variable
selected = false;
percentage = round(global.gameOST * 100);

//Game
gamePausedImageSpeed = 0;
gamePausedSpeed = 0;

//Limit
limitLeft  = x - 320;
limitRight = x + 320;
x = limitLeft + ((limitRight - limitLeft) * global.gameOST);

//Camera
scCameraGetView();

//Create Option Instance
//instance_create_depth(cx + RES_W_HALF, cy + 192, depth - 1, oOptionSFX);
instance_create_depth(cx + RES_W_HALF - 256, cy + 256, depth - 1, oKeyUp);
instance_create_depth(cx + RES_W_HALF + 64, cy + 256, depth - 1, oKeyDown);
instance_create_depth(cx + RES_W_HALF - 256, cy + 352, depth - 1, oKeyLeft);
instance_create_depth(cx + RES_W_HALF + 64, cy + 352, depth - 1, oKeyRight);