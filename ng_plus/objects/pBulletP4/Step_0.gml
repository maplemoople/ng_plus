
//horiaontal collision
 if (place_meeting(x+hsp, y, obj_wall)){
//	while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
//	x = x + sign(hsp);
//	}
	hsp = 0;
	disappear = true
} 
x = x + hsp;

//vertical collision
 if (place_meeting(x, y-vsp, obj_wall)){
//	while (!place_meeting(x,y-sign(vsp),obj_wall)){
	
//	y = y - sign(vsp);
//	}
	vsp = 0;
	disappear = true
}
y = y - vsp

image_angle += spinspeed

vsp += grv;
timer++
if !instance_place(x,y,FAN) || disappear {
image_alpha = image_alpha - 1/aliveForFrames
}

if image_alpha <= 0{
	instance_destroy()
}