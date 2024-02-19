function PlayerHit(argument0, argument1) {
	
	if (state != PLAYERSTATE.DASH){
	var damageDelt = argument0;
	//var knockback = argument1;
	controls();
	currentHp -= damageDelt;
	//flash = 10;
	//hitFrom = obj_enemy.hitDirection;
	knockbackSpeed = argument1;
	//state = PLAYERSTATE.HIT;
	state = PLAYERSTATE.HIT;
	}
}
