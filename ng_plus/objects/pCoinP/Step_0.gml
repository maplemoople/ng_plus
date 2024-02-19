
if (hsp == 0) hsp = irandom_range(-2,2);
if (vsp == 0) vsp = irandom_range(-2,2);


//horiaontal collision
/* if (place_meeting(x+hsp, y, obj_wall)){
	while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
	x = x + sign(hsp);
	}
	hsp = 0;
	
} */
x = x + hsp;

//vertical collision
/* if (place_meeting(x, y+vsp, obj_wall)){
	while (!place_meeting(x,y+sign(vsp),obj_wall)){
	
	y = y + sign(vsp);
	}
	vsp = 0;
	
}*/
y = y + vsp

image_alpha = image_alpha - 0.08
if image_alpha < 0{
	instance_destroy();
}