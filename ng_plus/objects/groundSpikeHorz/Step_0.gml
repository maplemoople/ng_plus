//image_xscale = sign(hsp) * 1
vsp =+ grv
//if (instance_exists(spikey)){spikey.image_xscale = sign(hsp) * 1}
//if (instance_exists(hitBox)){hitBox.image_xscale = sign(hsp) * 1}
//horizontal collision
if (place_meeting(x+hsp, y, obj_wall)){
	while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
	x = x + sign(hsp);
	}
	if speedMode{
		hsp = speedHsp * sign(hsp); //speedHsp is defined in variable Definitiions
		screenShake(1,5)
	}
	hsp = -hsp;
	
}

with (groundSpikeHorz){
	if id != other.id{
		if point_distance(x,y,other.x,other.y) < 30{
			hsp = -hsp
		}
	}
}

if speedMode{
hsp = hsp * speedAccel //once again in variable definitions
}
x = x + hsp;
	
//vertical collision
	if (place_meeting(x, y+vsp, obj_wall)){
while (!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y + sign(vsp);
		}
		vsp = 0;
	} 
	y = y + vsp	
	
with(hitBox){
	x = owner.x
	y = owner.y
}
with(spikey){
	x = owner.x
	y = owner.y
}		

if place_meeting(x,y-1,obj_wall){
	var headhitWall = instance_place(x, y - 1, obj_wall);
	if(headhitWall.bbox_bottom > bbox_top){
		var squishedWall = 1;
	} else squishedWall = 0;
	if squishedWall && place_meeting(x,y+1, obj_wall){
		repeat(30){
			instance_create_layer(x,y,"Bullets",EXPLOSION_PARTICLEP)	
		}
		audio_play_sound(aEXPLODE,1,false)
		screenShake(2,6)
		instance_destroy(hitBox)
		instance_destroy(spikey)
		instance_destroy()
	} else y = y + 1;
}