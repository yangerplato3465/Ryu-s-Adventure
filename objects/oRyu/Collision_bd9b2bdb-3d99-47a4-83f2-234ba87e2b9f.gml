getInput();
var killing = false;

if(place_meeting(x, y + 16, oParentEnemies) && yVelo >= 0){   //under my feet and velo should be positive
	instance_destroy(other);
	killing = true;
	if(jumpHold || jump || jumpRelease){  //to jump high when stomp on enemy
		yVelo = -jumpHeight
	}else{
		yVelo = -jumpHeight / 2;
	}
}else if(damaged == false && yVelo <= 0 && !killing){
	oRyuController.RyuHealth--;
	damaged = true;
	alarm[0] = 60; //invisibility frame
	killing = false;
}

//place_meeting(your x and y, the thing you are colliding)