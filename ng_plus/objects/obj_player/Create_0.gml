hsp = 0;
vsp = 0;
grv = 0.4;
rsp = 1.8;
dsp = 20;
csp = 1.8;
asp = 0;
asp = 0;
facing = 1
facing1 = 1;
hitByAttack = ds_list_create();
hitFrom = 0;
knockbackSpeed = 0;
jumpTime = 6;
canJump= 0;
blowup = 0
onTop = 0;
resetRoom = Line1
enum PLAYERSTATE{
	FREE,
	DASH,
	HIT,
	ATTACK,
	ATTACK2,
	DEAD,
}

mx = x;
my = y;
active = false;
//grapplehook=0;
doublejump = 0;
inJump = 0;
image_speed = 0;
init_health(100);
dash = 150;
staminaMax = 300
stamina = staminaMax
flash = 0;
//idle = 1;
hitDir = 0
spawnx = x;
spawny = y;
ends = 0;
time = 0;
touched = 0;
deadTimer = 0
state = PLAYERSTATE.FREE;
currentDeaths = 0;
goback = Line1;