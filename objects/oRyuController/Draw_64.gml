var text1 = "X" + string(deathCount);
var text2 = "X" + string(cheeseCount);

if(room != rCredit){
	draw_sprite(sDeathCounter, -1, healthX, healthY + 5);
	draw_sprite(sCheese, -1, healthX + 70, healthY + 5);
	draw_set_color(c_white);
	draw_text(healthX + 18, healthY, text1);
	draw_text(healthX + 18 + 70, healthY, text2);
}else if(room == rCredit){
	//credit temp LUUUL
	draw_sprite_ext(sDeathCounter, -1, 200, 215, 3, 3, 0, c_white, 1);
	draw_sprite_ext(sCheese, -1, 400, 215, 3, 3, 0, c_white, 1);
	draw_set_color(c_white);
	draw_text_transformed(260, 200, text1, 3, 3, 0);
	draw_text_transformed(460, 200, text2 + "  /5", 3, 3, 0);
}


