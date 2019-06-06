//control menu
getInput();
if(upMenu){
	audio_play_sound(sdMenu, 2, false);
	cursor += 1;
	if(cursor >= menuCount) cursor = 0;
}

if(downMenu){
	audio_play_sound(sdMenu, 2, false);
	cursor -= 1;
	if(cursor < 0) cursor = menuCount - 1;
}

if(start){
	audio_play_sound(sdMenuComfirm, 2, false);
	menuCommited = cursor;
}

switch(menuCommited){
	case 2: 
		with(oGame){
			targetRoom = r1_0;
			doTransition = true;
		}
	break;
	
	case 1:
		with(oGame){
			targetRoom = r1_0;
			doTransition = true;
		}
	break;
	
	case 0:
		game_end();
	break;
}