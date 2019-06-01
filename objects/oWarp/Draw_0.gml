var controller = oGame.gpConnected; ///if gamepad connected

if(place_meeting(x, y, oRyu)){
	if(controller){
		draw_sprite(sXboxDpadU, -1, x, y - 32);
	}else if(!controller){
		draw_sprite(sKBU, -1, x, y - 32);
	}
}