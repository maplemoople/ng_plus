event_inherited();
sprite_index = sBatMove
init_health(50);
attack = 1;
damage= 24;
image_speed = 1;

attackWait = 0
walksp = -4
vsp = 0;
grv = 0.8;
hsp = 0;

done = 0;
hitFrom = 0;
launched = 0;
flash = 0;

knockbackSpeed = 0;

if(hasWeapon){
	mygun = instance_create_layer(x,y,"Gun",eGun)
	with(mygun){
		owner = other.id;
	}
} else
mygun = noone
		

state = ENEMYSTATE.FREE;
hitByAttack = ds_list_create();
attackRange = 180
detectRange = 800
