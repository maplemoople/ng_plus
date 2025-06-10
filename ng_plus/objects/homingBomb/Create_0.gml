velocity = 1;
radDir = direction * pi/180
hsp = velocity * cos(direction);
vsp = velocity * sin(direction);
theDirection = 0;
owner=NaN;
countdown = 180;
startBoom = 0;

with(instance_create_layer(x,y,"Gun",homingBombLight)){
	owner = other.id
	owner.light = object_index
	image_speed = 0
}