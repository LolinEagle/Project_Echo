///@desc Variable
selected = false;
percentage = round(global.gameSFX * 100);

//Game
gamePausedImageSpeed = 0;
gamePausedSpeed = 0;

//Limit
limitLeft  = x - 320;
limitRight = x + 320;
x = limitLeft + ((limitRight - limitLeft) * global.gameSFX);

//Camera
scCameraGetView();