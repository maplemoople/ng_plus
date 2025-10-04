initVelocity = 1;
Velocity = 1;
radDir = direction * pi/180
hsp = initVelocity * cos(direction);
vsp = initVelocity * sin(direction);
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
	owner.visual = id
	image_speed = 1
}