switch state{
	case closed:
		vsp = -strength * sin(image_angle*pi/180)
		hsp = strength *cos(image_angle*pi/180)
		if place_meeting(x,y,obj_player){
			obj_player.fanSpeedx = hsp
			obj_player.fanSpeedy = vsp
		}
	
		/*if instance_exists(pBulletP){
			if place_meeting(x,y,pBulletP){
				pBulletP.x += hsp/5
				pBulletP.y += vsp/5
			}
		}*/
		/*
		if instance_exists(pBulletP4){
			if place_meeting(x,y,pBulletP4){
				var blurg = instance_place(x,y,pBulletP4)
				blurg.x += hsp/5
				blurg.y += vsp/5
			}
		}
		*/
		if place_meeting(x,y,homingBomb){
			homingBomb.x += hsp/10
			homingBomb.y += vsp/10
		}

		//calculating bottom of fan hitbox
		var fanBottomX = sprite_width/2 * -cos(image_angle*pi/180)
		var fanBottomY = sprite_width/2 * sin(image_angle*pi/180)

		spawnTimer++
		if spawnTimer%RANDOMTIMER = 0{
			RANDOMTIMER = round(random_range(20,60)) 
			repeat(round(random_range(1,4))) {
				//random left/right spawn on bottom fan hitbox
				var randInward = random_range(2,14)
				var inwardx = randInward * cos(image_angle*pi/180)
				var inwardy = randInward * -sin(image_angle*pi/180)
				var particle_height = sprite_height/2
				var randMoved = random_range(-particle_height,particle_height)
				var randy =  randMoved * -cos(image_angle*pi/180)
				var randx = randMoved * -sin(image_angle*pi/180)
				var frontorback = round(random_range(0,1))
				switch frontorback{
					case 0:
						place = "Controllers_Camera"
						break;
					case 1:
						place = "Gun"
						break;
				}
				with (instance_create_layer(x + randx + inwardx + fanBottomX , y + randy + inwardy+ fanBottomY,place, pBulletP4)){
						size = random_range(0.6,2)
						palerand = random_range(150,210)
						hsp = other.hsp * 2
						vsp = other.vsp * 2 * -1
						image_xscale = size
						image_yscale = size
						image_blend = (make_color_rgb(palerand,palerand,palerand))
				}
			}
		}
		break;
	case open:
		state = top
		break;
		
	case top:
		break;
		
	case bottom:
		state = closed
		break;
}