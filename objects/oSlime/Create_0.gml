event_inherited();

//Other
state = ENEMYSTATE.WANDER;
statePrevious = ENEMYSTATE.WANDER;

//Enemy Sprites
sprMove = sSlime;
sprAttack = sSlimeAttack;
sprDie = sSlimeDie;
sprHurt = sSlimeHurt;


//Enemy Scripts
enemyScripts[ENEMYSTATE.WANDER] = scSlimeWander;
enemyScripts[ENEMYSTATE.CHASE] = scSlimeChase;
enemyScripts[ENEMYSTATE.ATTACK] = scSlimeAttack;
enemyScripts[ENEMYSTATE.DIE] = scSlimeDie;
enemyScripts[ENEMYSTATE.HURT] = scSlimeHurt;