
//horiaontal collision
 if (place_meeting(x+hsp, y, obj_wall)){
//	while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
//	x = x + sign(hsp);
//	}
	hsp = 0;
	
} 
x = x + hsp;

//vertical collision
 if (place_meeting(x, y-vsp, obj_wall)){
//	while (!place_meeting(x,y-sign(vsp),obj_wall)){
	
//	y = y - sign(vsp);
//	}
	vsp = 0;
	
}
y = y - vsp

image_angle += spinspeed

vsp += grv;
timer++
if timer >= 0.6 * aliveFor{
image_alpha = image_alpha - 1/0.4*aliveFor
}
if timer >= aliveFor{
	instance_destroy()	
}