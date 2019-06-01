event_inherited();
if(hitWall() || place_meeting(x, y, oParentEnemies) || place_meeting(x, y + 5, oParentEnemies)) {
	facing *= -1;
	yVelo = -jumpHeight / 3;
}


//gravity
if(!onGround){
	yVelo = approach(yVelo, yVeloMax, gravityNormal);
}

if(facing = -1){ //left
	//Apply acceleration left
	image_xscale = -1
	if(xVelo > 0) xVelo = approach(xVelo, 0, groundFric);
	xVelo = approach(xVelo, -xVeloMax, groundAccel);
}else if(facing = 1){ //right
	//Apply acceleration right
	image_xscale = 1;
	if(xVelo < 0) xVelo = approach(xVelo, 0, groundFric);
	xVelo = approach(xVelo, xVeloMax, groundAccel);	
}

//particles
if(random(100) > 95 && abs(xVelo) > 0.5 && !onMovingPlatform) {
	instance_create(x, y + 8, oParticle);
	instance_create(x, y - 8, oEParticle);
}

//squash and stretch
xscale = approach(xscale, 1, 0.05);
yscale = approach(yscale, 1, 0.05);

if(oRyu.jump){
	alarm[1] = 15;
}