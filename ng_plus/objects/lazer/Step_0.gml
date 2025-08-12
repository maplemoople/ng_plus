if whatsBelowMe > 0{
	oldDistance = distance;
	distance = things[| 0].bbox_top - y;
	if oldDistance != distance{
			image_yscale = distance/heightOfSprite;
	}
	ds_list_clear(things);
	whatsBelowMe = 0;
} else whatsBelowMe = collision_line_list(x,y,x,999,collide,false,true,things,true)


var frontOrBack = round(random_range(0,1))
if frontOrBack == 0{
	place = "DoorLayer"
}	else place = "Bullets"


with (instance_create_layer(x + 1.5 , bbox_bottom,place, lazerParticle)){
		sizex = random_range(0.3,0.8)
		sizey = random_range(0.3,0.8)
		palerand = random_range(150,210)
		hsp = random_range( -0.8,0.8)
		vsp = random_range(0.05,0.45)
		image_xscale = sizex
		image_yscale = sizey
		image_blend = c_red
}