function processEnemyAttack(argument0, argument1, argument2, argument3, argument4) {
	//start attack
	if(sprite_index != argument0){
		image_speed = 1;
		sprite_index = argument0;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	//attack hitbox check
	mask_index = argument1;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y, obj_player, hitByAttackNow,false);
	if (hits > 0){
		for (var i = 0; i < hits; i++){
			//if not yet hit by attack
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1){
				ds_list_add(hitByAttack, hitID);
				with(hitID){
					PlayerHit(argument2, argument3);
				}
			}
		}		
	}
	
	ds_list_destroy(hitByAttackNow);
	mask_index = argument4;


}
