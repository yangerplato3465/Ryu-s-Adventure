/// @description Insert description here
// You can write your code in this editor

if instance_exists(oRyu){
	//oRyu start moving
	if(startRoom == 0){
		startPosition_X = oRyu.x; //set default x
		 startRoom=1 //start or not
	}
	//get camera x
	var CameraX = camera_get_view_x(view_camera[0]);
	//move camera (choice camera ,set x ,set y)
	if( (CameraX < room_width - width) && (oRyu.x != startPosition_X) ){
		camera_set_view_pos(view_camera[0], CameraX + 1, 0);
	}
	//reset the camera (if the deathCount plus)
	if(deathflag != oRyuController.deathCount){
		camera_set_view_pos(view_camera[0], 0, 0);
		deathflag = oRyuController.deathCount;
	}
	
}else{
	camera_set_view_pos(view_camera[0], 0, 0);
}