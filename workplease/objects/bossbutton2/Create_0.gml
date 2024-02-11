image_speed = 0;
alive = 0;
dead = 1;
connection = NaN;
state = alive;
deadSprite = bSpikeDeactivated;
hsp = 0;
vsp = 0;
grv = 0.4
with (instance_create_layer(xPos,yPos,"Enemies",objName)) {
	owner = other.id
	owner.connection = object_index;
	changed = 0;
	deActiv = 0;
	hsp = 1.3;
	vsp = 0;
	grv = 0.4;
	shootCooldown = 15;
	with(instance_create_layer(x,y,"Gun",groundTurretHB)){
		owner = other.id
		owner.owner.hitBox = object_index
	}
	with(instance_create_layer(x,y,"Gun",bossSpikeHitbox)){
		owner = other.id
		owner.owner.spikey = object_index
	}
	with(instance_create_layer(x,y,"Gun",gsHitbox)){
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