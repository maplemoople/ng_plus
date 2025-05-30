radDir = direction * pi/180;
hsp = velocity * cos(radDir);
vsp = velocity * sin(radDir);

//horizontal collision
if (place_meeting(x+hsp, y, obj_wall)){
	while (!place_meeting(x+sign(hsp),y,obj_wall)){
		x = x + sign(hsp);
	}
	hsp = 0;
} else 	x += hsp;

//vertical collision
if (place_meeting(x, y-vsp, obj_wall)){
	while (!place_meeting(x,y-sign(vsp),obj_wall)){
		y = y - sign(vsp);
		}
		vsp = 0;
}  else y -= vsp;
	

if !collision_line(x, y, obj_player.x, obj_player.y,obj_wall,false, false){
	velocity = 0.85;
	direction += angle_difference(point_direction(x,y,obj_player.x,obj_player.y),direction) * 0.1
} else velocity = lerp(velocity,0,0.05)