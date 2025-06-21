image_speed = 0;
mask_index = spTeleporterHB
ontop = 0;
cooldown = -1;

with(instance_create_layer(x,y,"Controllers_Camera",teleporterTP)){
	owner = other.id
	owner.TP = object_index
	image_speed = 0
}
