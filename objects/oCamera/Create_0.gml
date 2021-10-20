/// @desc Set up
cam = view_camera[0];
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;

//Destination
xTo = xstart;
yTo = ystart;

//Shake
shakeLenght = 0;
shakeMagnitude = 0;
shakeRemain = 0;