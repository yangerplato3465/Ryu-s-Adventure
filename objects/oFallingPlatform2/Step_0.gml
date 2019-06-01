if(place_meeting(x, y - 20, oRyu) && !stepped && (oRyu.yVelo >= 0)){
	alarm[2] = 15;
	
	stepped = true
}
	
y += SpeedY * DirY;

if(y >= 240){
	sprite_index = sBlockBreak;
	image_speed = 0.5;
	SpeedY = 0;
}