event_inherited();

//Other
state = ENEMYSTATE.WANDER;
//statePrevious = ENEMYSTATE.WANDER;

//Enemy Sprites
sprMove = sBat;
sprAttack = sBat;
sprDie = sBatDie;
sprHurt = sBatHurt;


//Enemy Scripts
enemyScripts[ENEMYSTATE.WANDER] = scBatWander;
enemyScripts[ENEMYSTATE.CHASE] = scBatChase;
enemyScripts[ENEMYSTATE.ATTACK] = -1;
enemyScripts[ENEMYSTATE.DIE] = scBatDie;
enemyScripts[ENEMYSTATE.HURT] = scBatHurt;