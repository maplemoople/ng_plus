image_speed = 0;
alive = 0;
dead = 1;
connection = NaN;
hitBox = NaN;
spikey = NaN;
state = alive;
deadSprite = bSpikeFDeactivated;
hsp = 0;
vsp = 0;
grv = 0.4
freq = 0;
turned = 0;
with (instance_create_layer(xPos,yPos,"Enemies",objName)) {
	owner = other.id
	owner.connection = object_index;
	changed = 0;
	deActiv = 0;
	hsp = 0.9;
	vsp = 0;
	grv = 0.4;
	shootCooldown = 15;
	with(instance_create_layer(x,y,"Gun",flyingSpikeHB)){
		owner = other.id
		owner.owner.hitBox = object_index
	}
	with(instance_create_layer(x,y,"Gun",bossSpikeFHitbox)){
		owner = other.id
		owner.owner.spikey = object_index
	}
}