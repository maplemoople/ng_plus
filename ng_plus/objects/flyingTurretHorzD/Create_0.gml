changed = 0;
//hsp defined in variable definitions
vsp = 0;
hsp = hsp * initDirection
shootCooldown = shootCooldownMax
with(instance_create_layer(x,y,"Gun",flyingSpikeHB)){
	owner = other.id
	owner.hitBox = id
}
with(instance_create_layer(x,y,"Gun",ftdHitbox)){
	owner = other.id
	owner.movement= id
	x = owner.x
	y = owner.y
	hsp = owner.hsp
}