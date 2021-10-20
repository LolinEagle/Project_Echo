//Inherit the parent event
event_inherited();

//Cutscenes
if(alpha = 0 && oPlayer.hSpeed = 0 && global.gameCutscenes = 0){
	with(oMysteriousMan){
		image_index = 2;
		direction = 180;
	}
	
	//TextBox
	scNewTextBoxCutscenes("So you are the man my\nboss ask me to find.", 1);
	scNewTextBoxCutscenes("Yep!", 2);
	scNewTextBoxCutscenes("What you want from us?", 1);
	scNewTextBoxCutscenesBig(
		"I need someone for delivery this",
		"briefcase to the leader of Izanagi",
		"at Edenchester.",
		"I was told that you were the best.",
		2
	);
	scNewTextBoxCutscenesBig(
		"For what reason you gonna need me to",
		"delivery a simple briefcase, anyone",
		"can doing it?",
		"",
		1
	);
	scNewTextBoxCutscenesBig(
		"Yes that true but this briefcase",
		"contain sensitive information, i realy",
		"dont whant them out in the nature.",
		"",
		2
	);
	scNewTextBoxCutscenesBig(
		"Plus if you succeed this job that could",
		"end the tension between factions.",
		"",
		"",
		2
	);
	scNewTextBoxCutscenesBig(
		"I'm skeptical at your real intention,",
		"and i'm not interested in",
		"political issues.",
		"",
		1
	);
	scNewTextBoxCutscenesBig(
		"Look at the reward before",
		"taking any decision.",
		"",
		"",
		2
	);
	scNewTextBoxCutscenes("!", 1);
	scNewTextBoxCutscenes("Can I count on you for this mission?", 2);
	scNewTextBoxCutscenes("I accept your proposition.", 1);
	scNewTextBoxCutscenesBig(
		"Well in this case take this. And I wish",
		"you good luck, you gonna need it.",
		"",
		"",
		2
	);
	scNewTextBoxCutscenes("Luck is for amateurs.", 1);
	
	//What to do First
	scPlayerTalk();
	global.gameCutscenes++;
}

if(whatToDo){
	switch(global.gameCutscenes){
		case 14: scPlayerTalk(); scMysteriousManTalk(); break;
		case 13: scPlayerTalk(); scMysteriousManTalk(); break;
		case 12: scPlayerTalk(); scMysteriousManTalk(); break;
		case 11: scPlayerTalk(); scMysteriousManTalk(); break;
		case 10: scPlayerTalk(); scMysteriousManTalk(); break;
		case 9: break;
		case 8: scPlayerTalk(); scMysteriousManTalk(); break;
		case 7: scPlayerTalk(); scMysteriousManTalk(); break;
		case 6:
			with(oPlayer){
				reaction = true;
				reactionSubimg = 0;
			}
			scMysteriousManTalk();
		break;
		case 5: oPlayer.reaction = false; scMysteriousManTalk(); break;
		case 4: scPlayerTalk(); scMysteriousManTalk(); break;
		case 3: scPlayerTalk(); scMysteriousManTalk(); break;
		case 2: scPlayerTalk(); scMysteriousManTalk(); break;
		case 1: scPlayerTalk(); room_goto(rVillage); break;
	}
	whatToDo = false;
}