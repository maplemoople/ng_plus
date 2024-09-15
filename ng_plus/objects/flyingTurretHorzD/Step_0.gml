image_xscale = sign(hsp) * 1
x = movement.x
y = movement.y
with movement{
	if (instance_exists(owner)){owner.image_xscale = sign(hsp) * 1}
	if (instance_exists(owner.hitBox)){owner.hitBox.image_xscale = sign(hsp) * 1}
	//horizontal collision
	if (place_meeting(x+hsp, y, obj_wall)){
		while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
		x = x + sign(hsp);
		}
		hsp = -hsp;
	}
	x = x + hsp;
}
with(hitBox){
	x = owner.x
	y = owner.y
}

shootCooldown--
if (!shootCooldown && animation_end()){
	with (instance_create_layer(x + 16,y + 10,"Bullets", eBullet)){
		if other.image_xscale == -1 direction = 270; else direction = 270;
		speed = 2
		image_angle = direction;
	}
	with (instance_create_layer(x - 16,y + 10,"Bullets", eBullet)){
		if other.image_xscale == -1 direction = 270; else direction = 270;
		speed = 2
		image_angle = direction;
	}
	shootCooldown = shootCooldownMax //frames
	audio_play_sound(aBulletShoot,1,false)
}
		