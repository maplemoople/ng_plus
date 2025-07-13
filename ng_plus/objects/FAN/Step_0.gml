vsp = -strength * sin(image_angle*pi/180)
hsp = strength *cos(image_angle*pi/180)
if place_meeting(x,y,obj_player){
	obj_player.x += hsp
	obj_player.y += vsp
}
if instance_exists(pBulletP){
	if place_meeting(x,y,pBulletP){
		pBulletP.x += hsp/5
		pBulletP.y += vsp/5
	}
}
if instance_exists(pBulletP3){
	if place_meeting(x,y,pBulletP3){
		pBulletP3.x += hsp/5
		pBulletP3.y += vsp/5
	}
}

if place_meeting(x,y,homingBomb){
	homingBomb.x += hsp/5
	homingBomb.y += vsp/5
}