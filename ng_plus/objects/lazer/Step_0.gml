realAngle = modulo(image_angle,360)
facing = (realAngle - 90) * pi/180
var belowX =x + 999 * cos(facing)
var belowY =y + 999 * -sin(facing)

if whatsBelowMe > 0{
	oldDistance = distance;
	if realAngle >= 0 && realAngle < 90{
		surface = things[| 0].bbox_top
		xORy = y
		partX = x + 1.5
		partY = surface
		d = true
	}else if realAngle >= 90 && realAngle < 180{
		surface = things[| 0].bbox_left
		xORy = x
		partX = surface
		partY = y - 1.5
		d = true
	}else if realAngle >= 180 && realAngle < 270{
		surface = things[| 0].bbox_bottom
		xORy = y
		partX = x - 1.5
		partY = surface
		d = true
	}else if realAngle >= 270 && realAngle < 360{
		surface = things[| 0].bbox_right
		xORy = x
		partX = surface
		partY = y + 1.5
		d = true
	}
	if d {
		distance = abs(surface - xORy);
		d = false
	}
	if oldDistance != distance{
			image_yscale = distance/heightOfSprite;
	}
	ds_list_clear(things);
	whatsBelowMe = 0;
} else whatsBelowMe = collision_line_list(x,y,belowX,belowY,collide,false,true,things,true)


var frontOrBack = round(random_range(0,1))
if frontOrBack == 0{
	place = "DoorLayer"
}	else place = "Bullets"


with (instance_create_layer(partX, partY, place, lazerParticle)){
		sizex = random_range(0.3,0.8)
		sizey = random_range(0.3,0.8)
		palerand = random_range(150,210)
		hsp = random_range( -0.8,0.8)
		vsp = random_range(0.05,0.45)
		image_xscale = sizex
		image_yscale = sizey
		image_blend = c_red
}