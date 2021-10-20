///@desc Destroy
if(place_meeting(x, y, oExplode)){instance_destroy();}
if(place_meeting(x, y, oLightning)){instance_destroy();}
if(place_meeting(x, y, oPlayer) && oPlayer.state = scPlayerStateDash){
	instance_destroy();
}