/// @description 
if(state == death){
	//room_restart();
	oRyuController.deathCount++;
	instance_destroy(self);
}
