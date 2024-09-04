changed = 0;
hsp = 0.9;
vsp = 0;
with(instance_create_layer(x,y,"Gun",flyingSpikeHB)){
	owner = other.id
	owner.hitBox = object_index
}
with(instance_create_layer(x,y,"Gun",bossSpikeFHitbox)){
	owner = other.id
	owner.spikey = object_index
}
