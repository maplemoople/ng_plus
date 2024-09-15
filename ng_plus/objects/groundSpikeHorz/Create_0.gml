changed = 0;
//hsp defined in variable definitions
vsp = 0;
grv = 0.4
with(instance_create_layer(x,y,"Gun",groundTurretHB)){
	owner = other.id
	owner.hitBox = object_index
}
with(instance_create_layer(x,y,"Gun",bossSpikeHitbox)){
	owner = other.id
	owner.spikey = object_index
}
