image_speed = 0;
mask_index = spTeleporterHB
ontop = 0;
cooldown = -1;
xrand = 0;
yrand = 0;

with(instance_create_layer(x,y,"Controllers_Camera",teleporterTP)){
	owner = other.id
	owner.TP = object_index
	image_speed = 0
}
spawnParticleTimer = 0
spawnParticleBOOM = 35
TopOrBottom = 0;
FrontOrBack = "Controllers_Camera";
guh = 255; //amount of red for image_blend
buh = 0; //check for sound to stop or start playing
wuh = 0; //used for single playing of sounds
weener = -1;
particleSpeed = -4