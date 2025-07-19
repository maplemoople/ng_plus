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
if instance_exists(pBulletP4){
	if place_meeting(x,y,pBulletP4){
		var blurg = instance_place(x,y,pBulletP4)
		blurg.x += hsp/5
		blurg.y += vsp/5
	}
}

if place_meeting(x,y,homingBomb){
	homingBomb.x += hsp/5
	homingBomb.y += vsp/5
}

//calculating bottom of fan hitbox
var fanBottomX = sprite_height*image_xscale/2 * -cos(image_angle*pi/180)
var fanBottomY = sprite_height*image_xscale/2 * sin(image_angle*pi/180)


spawnTimer++
if spawnTimer%60 = 0{
	repeat(3) {
		//random left/right spawn on bottom fan hitbox
		var randMoved = random_range(-20,20)
		var randy =  randMoved * -cos(image_angle*pi/180)
		var randx = randMoved * -sin(image_angle*pi/180)
		with (instance_create_layer(x + randx + fanBottomX, y + randy + fanBottomY,"Player", pBulletP4)){
				buh = -0.3
				size = random_range(0.6,3)
				palerand = random_range(150,210)
				hsp = other.hsp/5
				vsp = other.vsp/5 * -1
				image_xscale = size
				image_yscale = size
				image_blend = (make_color_rgb(palerand,palerand,palerand))
		}
	}
}