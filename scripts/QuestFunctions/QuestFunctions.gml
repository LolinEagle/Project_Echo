function scActivateFuel(){
	var _hasFuel = (
		global.iLifted != noone && global.iLifted.object_index == oFuel
	);
	switch(global.questStatus[? "TheFuelQuest"]){
		case 0:
			//Not started
			if(_hasFuel){
				scNewTextBox(
					"You bring me the barrel without\n me even asking to!", 1
				);
				scNewTextBox("Thanks you!", 1);
				global.questStatus[? "TheFuelQuest"] = 2;
				with(oFuel){instance_destroy();}
				global.iLifted = noone;
				with(oPlayer){
					sprite = sPlayer;
					spriteRun = sPlayerRun;
				}
			}else{
				scNewTextBox("Hello there!", 1);
				scNewTextBox(
					"Can you bring me the barrel over there",
					1,
					["4:Sure!", "5:Do it your self."]
				);
			}
		break;
		case 1:
			//Quest in progress
			if(_hasFuel){
				scNewTextBox("You bring me the barrel i ask for?", 1);
				scNewTextBox("Thanks you!", 1);
				global.questStatus[? "TheFuelQuest"] = 2;
				with(oFuel){instance_destroy();}
				global.iLifted = noone;
				with(oPlayer){
					sprite = sPlayer;
					spriteRun = sPlayerRun;
				}
			}else{
				scNewTextBox("You bring me the barrel i ask for?", 1);
			}
		break;
		case 2:
			//Quest in completed
			scNewTextBox("Thanks again!", 1);
		break;
	}
}