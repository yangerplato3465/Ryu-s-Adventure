/// @description 
if(place_meeting(x, y - 12, oRyu) && (oRyu.yVelo >= 0)) {
	SpeedX = 1;
	alarm[4] = 60;
}

if(place_meeting(x, y, oEndBlock)){
	//instance_create_layer(originalX, originalY, "FunctionalPlatform", oMovingPlatform2);
	instance_destroy(self);
}

x += SpeedX * DirX;
