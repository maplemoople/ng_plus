image_speed = 0;
alive = 0;
dead = 1;
connection = NaN;
hitBox = NaN;
wheel = NaN;
state = alive;
deadSprite = bTurretTDeactivated;
hsp = 0;
vsp = 0;
grv = 0.4
with (instance_create_layer(xPos,yPos,"Enemies",objName)) {
	owner = other.id
	owner.connection = object_index;
	hsp = 0.5;
	vsp = 0;
	grv = 0.4
	shootCooldown = 15
	with(instance_create_layer(x,y,"Gun",groundTurretTHB)){
		owner = other.id
		owner.owner.hitBox = object_index
	}
	with(instance_create_layer(x,y,"Gun",bossWheelT)){
		owner = other.id
		owner.owner.wheel = object_index
	}
	with(instance_create_layer(x,y,"Gun",gtTHitbox)){
		owner = other.id
		owner.turnAround = object_index
	}
}

with (instance_create_layer(ixPos,iyPos,"Gun",indicator)){
	image_speed = 0;
	image_index = 0;
	owner = other.id;
	owner.wallLight = id;
	image_blend = owner.indColor;
}