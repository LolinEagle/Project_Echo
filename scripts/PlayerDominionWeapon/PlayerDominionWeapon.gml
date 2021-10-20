function scUseWeaponHandgun(){
	if(global.playerAmmoLoad[WEAPON.GUN] > 0 && global.iLifted == noone){
		direction = point_direction(x, y, mouse_x, mouse_y);
		global.playerAmmoLoad[WEAPON.GUN]--;
		scPlayerAct(sPlayerHandgun);
		scPlayerFireAmmo(oBulletHandgun, 16);
	}
}

function scUseWeaponRifle(){
	if(
		global.playerAmmoLoad[WEAPON.ASSAULT_RIFLE] > 0
		&& global.iLifted == noone
	){
		direction = point_direction(x, y, mouse_x, mouse_y);
		global.playerAmmoLoad[WEAPON.ASSAULT_RIFLE]--;
		scPlayerAct(sPlayerRifle);
		scPlayerFireAmmo(oBulletRifle, 16);
	}
}

function scReloadWeaponHandgun(){
	if(
		global.playerAmmo[WEAPON.GUN] > 0
		&& global.playerAmmoLoad[WEAPON.GUN] < 20
	){
		scPlayerAct(sPlayerHandgunReload, scPlayerReloadHandgun);
	}
}

function scPlayerReloadHandgun(){
	var _reload = 20 - global.playerAmmoLoad[WEAPON.GUN];
	if(global.playerAmmo[WEAPON.GUN] > _reload){
		global.playerAmmoLoad[WEAPON.GUN] += _reload;
		global.playerAmmo[WEAPON.GUN] -= _reload;
	}else{
		global.playerAmmoLoad[WEAPON.GUN] += global.playerAmmo[WEAPON.GUN];
		global.playerAmmo[WEAPON.GUN] = 0;
	}
	scDropItems(x, y, [oFragHandgun]);
}

function scReloadWeaponRifle(){
	if(
		global.playerAmmo[WEAPON.ASSAULT_RIFLE] > 0
		&& global.playerAmmoLoad[WEAPON.ASSAULT_RIFLE] < 30
	){
		scPlayerAct(sPlayerRifleReload, scPlayerReloadRifle);
	}
}

function scPlayerReloadRifle(){
	var _reload = 30 - global.playerAmmoLoad[WEAPON.ASSAULT_RIFLE];
	if(global.playerAmmo[WEAPON.ASSAULT_RIFLE] > _reload){
		global.playerAmmoLoad[WEAPON.ASSAULT_RIFLE] += _reload;
		global.playerAmmo[WEAPON.ASSAULT_RIFLE] -= _reload;
	}else{
		global.playerAmmoLoad[WEAPON.ASSAULT_RIFLE] += (
			global.playerAmmo[WEAPON.ASSAULT_RIFLE]
		);
		global.playerAmmo[WEAPON.ASSAULT_RIFLE] = 0;
	}
	scDropItems(x, y, [oFragRifle]);
}

function scUseWeaponBow(){
	if(global.playerAmmo[WEAPON.BOW] > 0 && global.iLifted == noone){
		direction = point_direction(x, y, mouse_x, mouse_y);
		global.playerAmmo[WEAPON.BOW]--;
		scPlayerAct(sPlayerBow);
		scPlayerFireAmmo(oArrow, 8);
	}
}

function scPlayerFireAmmo(_ammo, _speed){
	with(instance_create_depth(floor(x), floor(y) - 28, depth, _ammo)){
		direction = point_direction(x, y, mouse_x, mouse_y);
		image_angle = direction;
		speed = _speed;
	}
}