if (ontop){
	if  image_index > 31 && sprite_index == spTeleporter{
	image_speed = 0;
	obj_player.x = tpx
	obj_player.y = tpy
	cooldown = 120
	} else {
		image_speed = 1;
	}
} else if image_index >1 && sprite_index == spTeleporter{
	image_speed = -1;
} else if image_index < 1 && sprite_index == spTeleporter{
	image_speed = 0;
}

with TP{
	if place_meeting(x,y,obj_player){
		owner.ontop = 1;
	} else owner.ontop = 0;
}

if cooldown >= 0 {
	sprite_index = spTeleporterCooldown
	image_speed = 1;
	cooldown--
} else if sprite_index == spTeleporterCooldown{
	sprite_index = spTeleporter;
	image_index = 28;
} else sprite_index = spTeleporter


spawnParticleBOOM = random_range(15,70)
spawnParticleTimer += 1 +  image_index/6
if spawnParticleTimer>=spawnParticleBOOM && cooldown <= 0{
	spawnParticleTimer = 0;
	repeat(ceil(image_index/10)+1){
			TopOrBottom = round(random(1))
			switch TopOrBottom{
				case 1:
					FrontOrBack = "Controllers_Camera"
				break;
				case 0:
					FrontOrBack = "Bullets"
				break;
			}
			xrand = random_range(-4,4)
			yrand = random_range(-10,-3)
			with (instance_create_layer(x + xrand,y + yrand,FrontOrBack,pBulletP3)){
				buh = -0.3
				grv = 0.005 + 0.001 * other.image_index
				size = random_range(0.3,1)
				palerand = random_range(0,150)
				image_xscale = size
				image_yscale = size
				image_blend = (make_color_rgb(255,palerand,palerand))
				vanishSpeed = random_range(0.03,0.15)
			}
	}
}