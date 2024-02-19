image_speed = 0;
alive = 0;
dead = 1;
connection = NaN;
hitBox = NaN;
state = alive;
deadSprite = bTurretFDDeactivated;
hsp = 0;
vsp = 0;
grv = 0.4
freq = 0;
with (instance_create_layer(xPos,yPos,"Enemies",objName)) {
	owner = other.id
	owner.connection = object_index;
	hsp = 0.3;
	vsp = 0;
	grv = 0.4
	shootCooldown = 15
}

with (instance_create_layer(ixPos,iyPos,"Gun",indicator)){
	image_speed = 0;
	image_index = 0;
	owner = other.id;
	owner.wallLight = id;
	image_blend = owner.indColor;
}