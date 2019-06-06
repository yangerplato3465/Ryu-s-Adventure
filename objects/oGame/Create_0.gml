///@desc for transition and stuff and a timer
width = display_get_gui_width();
height = display_get_gui_height();

transitionAlpha = 0;

doTransition = false;
targetRoom = noone;

deathFade = false;

timerSecond = 0;
timerMinute = 0;
//alarm[10] = 1;

gpConnected = false;

f = font_add("EquipmentPro.ttf", 20, false, false, 32, 128);

audio_group_load(soundEffect);