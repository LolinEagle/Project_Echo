///@desc Transition
with(oPlayer){
	if(state != scPlayerStateDead){state = scPlayerStateTransition;}
}

if(leading == OUT){
	percent = min(1, percent + TRANSITION_SPEED);
	
	//if 100% or more
	if(percent >= 1){
		room_goto(target);
		leading = IN;
	}
}else{
	percent = max(0, percent - TRANSITION_SPEED);
	
	//if 0% or less
	if(percent <= 0){
		with(oPlayer){
			if(instance_exists(oIntro)){state = scPlayerStateCutscenes;}
			else{state = scPlayerStateFree;}
		}
		instance_destroy();
	}
}