var controller = oGame.gpConnected; ///if gamepad connected


if(place_meeting(x, y, oRyu)){
	//draw_text_transformed(x - 8, y - 8, text, 0.4, 0.4, 0);
	if(controller){
		draw_text_transformed_color(x, y - 4, text, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
		draw_sprite(spriteGP, -1, x + 32, y);
	}else if(!controller){
		draw_text_transformed_color(x, y - 4, text, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
		draw_sprite(spriteKB, -1, x + 32, y);
	}
}
