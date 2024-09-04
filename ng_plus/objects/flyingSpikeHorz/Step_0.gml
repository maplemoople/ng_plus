image_xscale = sign(hsp) * 1
	if (instance_exists(spikey)){spikey.image_xscale = sign(hsp) * 1}
	if (instance_exists(hitBox)){hitBox.image_xscale = sign(hsp) * 1}
	//horizontal collision
	if (place_meeting(x+hsp, y, obj_wall)){
		while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
		x = x + sign(hsp);
		}
		turned = 1;
		hsp = 0.1 * sign(hsp);
		hsp = -hsp;
	
	}

hsp = hsp * 1.05
x = x + hsp;
	
with(hitBox){
	x = owner.x
	y = owner.y
}
with(spikey){
	x = owner.x
	y = owner.y
}		
		