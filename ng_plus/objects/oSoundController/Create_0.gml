audio_group_load(SFX)
audio_group_load(MUSIC)

musicStart = false;
sfxStart = false;
prevLevel = 0;
currentLevel = 0;
lastLevel = 0;
sfxVolume = 0;
musicVolume = 0;
forceStart = 0;
noFade = 0;
fastFade = 500;
slowFade = 1000;
currentFade = noFade;
fadeSpeed = currentFade;
explode = 0;
heightVolume = 0;
heightVolumeMax = 0;

wuh = NaN //variable that stores sound instance ID when playing, just used to check to sync stuff
buh = 0 //variable to make sure the tracks volume changes properly (wierd loop issue)
sync = 0