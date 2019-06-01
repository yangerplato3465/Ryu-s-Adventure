/// @description 
image_xscale = random_range(0.9, 1.1);
image_yscale = random_range(0.9, 1.1);

if(instance_exists(oRyu)){
	x = oRyu.x;
	y = oRyu.y;
}else{
	instance_destroy(self)
}