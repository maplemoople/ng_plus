initx = x
inity = y
maxCountdown = -1
countdown = maxCountdown
closed = 0
open = 1
top = 2
bottom = 3
hitbox = noone
aboveVisual = noone
image_blend = whatColor
with(instance_create_layer(x,y,"DoorLayer",fanbase2Collision)){
	owner = other.id
	owner.hitbox = id
	image_angle = owner.image_angle
}
with(instance_create_layer(x,y,"lightRender",fanbase2Top)){
	owner = other.id
	owner.aboveVisual = id
	image_angle = owner.image_angle
	image_blend = owner.whatColor
}
//state is deafulted to closed