changed = 0;
//hsp defined in variable definitions
vsp = 0;
shootCooldown = shootCooldownMax
with(instance_create_layer(x,y,"Gun",flyingSpikeHB)){
	owner = other.id
	owner.hitBox = object_index
}
with(instance_create_layer(x,y,"Gun",ftdHitbox)){
	owner = other.id
	owner.movement= object_index
	x = owner.x
	y = owner.y
	hsp = owner.hsp
}