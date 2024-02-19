// EnemyHit (Damage,knockback)
function EnemyHit(argument0, argument1) {
	var damageDelt = argument0;
	var knockback = argument1;
	currentHp -= damageDelt;
	flash = 3;
	hitFrom = obj_player.hitDir
	screenShake(1,1)
	knockbackSpeed = knockback;
	state = ENEMYSTATE.HIT;
	
	
	if currentHp <= 0 {
		state = ENEMYSTATE.DEAD
	}



}
