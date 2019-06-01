//if(!instance_exists(oRyuController)) exit;
//instance_exists檢查地圖裡是否存在oRyu
if(instance_exists(oRyu)){
	var target_x = oRyu.x;
	var target_y = oRyu.y;


	x = lerp(x, target_x, 0.1); 
	y = target_y;

	if(x < width * 0.5){
		x = width * 0.5;
	}else if(x > room_width - width * 0.5){
		x = room_width - width * 0.5;
	}

	if(y < 2 * height / 3){
		y = 2 * height / 3;
	}else if(y > room_height - height / 3){
		y = room_height - height / 3;
	}

	/*if(oRyu.x < 463){
		if(oRyu.y > 300){
			y = room_height - height / 3;
		}
	}*/
	camera_set_view_pos(view_camera[0], x - width / 2, y - 2 * height / 3);
}else{
	camera_set_view_pos(view_camera[0], 0, 0);
}

 
