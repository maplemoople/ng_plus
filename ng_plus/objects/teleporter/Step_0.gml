if (ontop){
	if  image_index > 31 && sprite_index == spTeleporter{
	image_speed = 0;
	obj_player.x = tpx
	obj_player.y = tpy
	cooldown = 120
	} else {
		image_speed = 1;
	}
} else if image_index >1 && sprite_index == spTeleporter{
	image_speed = -1;
} else if image_index < 1 && sprite_index == spTeleporter{
	image_speed = 0;
}

with TP{
	if place_meeting(x,y,obj_player){
		owner.ontop = 1;
	} else owner.ontop = 0;
}

if cooldown >= 0 {
	sprite_index = spTeleporterCooldown
	image_speed = 1;
	cooldown--
} else if sprite_index == spTeleporterCooldown{
	sprite_index = spTeleporter;
	image_index = 28;
} else sprite_index = spTeleporter