image_speed = 0
ontop = false
spawn1 = false
spawn2 = false
spawn3 = false
allSpawned = false
id1 = 0
id2 = 0
id3 = 0
Lives = 0
checkpoint = 1;

wuh = 0; //used for single playing of sounds
weener = -1; //variable to store sound

with(instance_create_layer(x,y,"Controllers_Camera",cloneMachineTop)){
	owner = other.id
	owner.rednub = object_index
	image_speed = 0
}