draw_set_font(f);
//room transition
if(doTransition){
	if(room != targetRoom) {
		transitionAlpha += 0.1;
		if(transitionAlpha >= 1) {
			room_goto(targetRoom);
		}
	}else{
		transitionAlpha -= 0.1;
		if(transitionAlpha <= 0) doTransition = false;
	}
	
	draw_set_alpha(transitionAlpha);
	draw_rectangle_color(0, 0, width, height,  c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

//death
if(deathFade){
	with(oRyu){
		if(state == death){
			oGame.transitionAlpha += 0.1;
		}else{
			oGame.transitionAlpha -= 0.1;
		}
	}
	if(transitionAlpha <= 0) deathFade = false;
	
	draw_set_alpha(transitionAlpha);
	draw_rectangle_color(0, 0, width, height,  c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

//var totalTime = string(timerMinute) + "." + string(timerSecond);
creditRole();

/*if(room != rCredit){
	draw_text_transformed_color(20, 40, totalTime, 1.5, 1.5, 1, c_white, c_white, c_white, c_white, 1);
}else */if(room == rCredit){
	//draw_text_transformed_color(200, 100, "Timer: ", 3, 3, 1, c_white, c_white, c_white, c_white, 1);
	//draw_text_transformed_color(450, 100, totalTime, 3, 3, 1, c_white, c_white, c_white, c_white, 1);*/
	draw_text(200, 300, credit);
}