function scUseWeaponBayonet(){
	spriteAttack = sPlayerBayonetSlash;
	spriteAttackHB = sPlayerBayonetSlashHB;
	state = scPlayerStateAttack;
	stateAttack = scAttackSlash;
}

function scUseWeaponSword(){
	spriteAttack = sPlayerAttackSlash;
	spriteAttackHB = sPlayerAttackSlashHB;
	state = scPlayerStateAttack;
	stateAttack = scAttackSlash;
}