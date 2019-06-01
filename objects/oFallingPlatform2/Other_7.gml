/// @description 
if(sprite_index == sBlockBreak){
	//respawn a platform
	instance_create_layer(originalX, originalY, "FunctionPlatform", oFallingPlatform2);
	instance_destroy(self);
}