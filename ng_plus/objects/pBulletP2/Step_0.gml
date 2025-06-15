
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

vsp += grv;
image_alpha = image_alpha - vanishSpeed
if image_alpha < 0{
	instance_destroy();
}
if image_alpha < 0.6{
	grv = 0.1
}