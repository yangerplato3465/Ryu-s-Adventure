/// @description 
if(place_meeting(x, y, oRyu)){
	image_index = 1;
	oRyuSpawner.spawnX = x + 40;
	oRyuSpawner.spawnY = y;
	instance_create_layer(x + 16, y + 8, "Lighting", oLightGlow);
}