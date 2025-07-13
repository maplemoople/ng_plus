image_speed = 0;
closed = 0
open = 1
top = 2
bottom = 3
//state defaults to closed
hsp = 0;
vsp = 0;
image_blend = whatColor
image_speed = 5
guh = 90 //timer for when to reopen
detector =  -1
with(instance_create_layer(x,y,"Controllers_Camera",doorSlamMiniHB)){
	owner = other.id
	owner.detector= object_index
	image_speed = 0
}