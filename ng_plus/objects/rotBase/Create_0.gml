with (instance_create_layer(x,y,"Entities", obj_turret_rot)){
	owner = other.id
	direction = other.image_angle - 90
	image_angle = direction;
	shootspeed = owner.shootspeed
	shootStart = owner.shootStart
	bulletSpeed = owner.bulletSpeed
	bulletGrav = owner.bulletGrav
}