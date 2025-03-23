audio_group_load(SFX)
audio_group_load(MUSIC)

musicStart = false;
sfxStart = false;
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
sync = 0