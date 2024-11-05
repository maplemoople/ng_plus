changed = 0;
//hsp defined in variable definitions
vsp = 0;
with(instance_create_layer(x,y,"Gun",flyingSpikeHB)){
	owner = other.id
	owner.hitBox = object_index
}

hsp = hsp * initDirection
