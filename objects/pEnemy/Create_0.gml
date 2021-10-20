event_inherited();

//Other
state = ENEMYSTATE.IDLE;
stateTarget = state;
statePrevious = state;
stateWait = 0;
stateWaitDuration = 0;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0;

//Aggro
aggroCheck = 0;
aggroCheckDuration = 5;

//Time var
timePassed = 0;
waitDuration = 60;
wait = 0;

//Enemy Sprites
sprMove = sSlime;

//Enemy Scripts
enemyScripts[ENEMYSTATE.IDLE] = -1;
enemyScripts[ENEMYSTATE.WANDER] = -1;
enemyScripts[ENEMYSTATE.CHASE] = -1;
enemyScripts[ENEMYSTATE.ATTACK] = -1;
enemyScripts[ENEMYSTATE.HURT] = -1;
enemyScripts[ENEMYSTATE.DIE] = -1;
enemyScripts[ENEMYSTATE.WAIT] = scEnemyWait;

//Entity Drop List
scEntityDropList();