velocity = 1;
radDir = direction * pi/180
hsp = velocity * cos(direction);
vsp = velocity * sin(direction);
theDirection = 0;
owner=NaN;
countdown = 180;
trackcountdown = 60;
startBoom = 0;
startTracking = 0;

xrand = 0;
yrand = 0;
with(instance_create_layer(x,y,"Bullets",homingBombVisual)){
	owner = other.id
	owner.visual = object_index
	image_speed = 1
}