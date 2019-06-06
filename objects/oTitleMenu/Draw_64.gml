draw_set_halign(fa_center);
draw_set_font(f);

for(var i = 0; i < menuCount; i++){
	var txt = menu[i];
	if(cursor == i){
		//txt = string_insert("> ", txt, 0);
		var c = c_white;
	}else{
		var c = c_gray;
	}
	var xx = widthHalf;
	var yy = heightHalf - (fontSize * (i * 1.5)) + 150;
	draw_set_color(c);
	draw_text(xx, yy, txt);
}
