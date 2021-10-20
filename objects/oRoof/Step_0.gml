if(position_meeting(oPlayer.x, oPlayer.y, id)){
	image_alpha = max(image_alpha - 0.05, 0.25);
}else{
	image_alpha = min(image_alpha + 0.05, 1.00);
}