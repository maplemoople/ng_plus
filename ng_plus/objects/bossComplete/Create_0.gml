image_speed = 0;
closed = 0
open = 1
top = 2
bottom = 3
connection = NaN
state = closed
hsp = 0;
vsp = 0;
explode = 0;
bossDead = 0;
dead = 1;
image_blend = whatColor
with (instance_create_layer(xPos,yPos,"DoorLayer",doorB)) {
	image_xscale = 1
	image_yscale = 1
	owner = other.id
	owner.connection = object_index;
	image_blend = owner.whatColor
}