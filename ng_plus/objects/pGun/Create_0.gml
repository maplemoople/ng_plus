firingdelay = 0;
recoil = 0;
ammoMax = 20;
ammo = 20;
reload = -1
reloadTime=300;
shoulderPlacement = 35;
incVar = 0;

with (instance_create_layer(x,y,"Bullets",pGunBase)) {
	owner = other.id
	x = owner.x
	y = owner.y
}