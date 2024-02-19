x = obj_player.x-shoulderPlacement;
y = obj_player.y-25-5*dsin(incVar);

if (incVar > 358) incVar = 0
incVar++


pGunBase.x = x
pGunBase.y = y


if (obj_player.image_xscale = 1)
	shoulderPlacement = lerp(shoulderPlacement,45, 0.1);
	//shoulderPlacement = 35;
	else if (obj_player.image_xscale = -1)
		shoulderPlacement = lerp(shoulderPlacement,-45, 0.1);
			//shoulderPlacement = -35;

if obj_player.state == PLAYERSTATE.DASH{
	image_angle = 0
	image_yscale = 1
	image_xscale = obj_player.image_xscale
} else {
	image_xscale = 1
		image_angle = point_direction(x,y,mouse_x,mouse_y);
	if (image_angle > 90) && (image_angle < 270)
		image_yscale = -1;
	else 
		image_yscale = 1;
}
firingdelay--;
recoil = max(0,recoil - 1);
if firingdelay = firingdelay/2{
	Crosshair.image_index = 0;
}

 if(mouse_check_button_pressed(mb_left)) && (firingdelay < 0) && (ammo > 0) && (!reload) {
	 recoil = 20;
	 firingdelay = 10;
	 ammo--;
	 Crosshair.image_xscale = 0.35;
	 Crosshair.image_yscale = 0.35;
	 Crosshair.image_index = 1;
	 Crosshair.hValue = 50;
	 screenShake(1,2)
	 with (instance_create_layer(x,y,"Bullets", pBullet)){
		 speed = 25;
		 direction = other.image_angle;
		 image_angle = direction;
	 }
 }
 
 x = x - lengthdir_x(recoil, image_angle);
 y = y - lengthdir_y(recoil, image_angle);
	
