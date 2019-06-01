/// movement
getInput();

if(up){
	sprite_index = sShipUp;
	y -= ySpeed;
}else if(down){
	sprite_index = sShipDown;
	y += ySpeed;
}else{
	sprite_index = sShip;
}

if(right){
	x += xSpeed;
}else if(left){
	x -= xSpeed;
}

//lock inside the room
if(x < 30) x = 30;
if(y < 15) y = 15
if(y > height - 15) y = height - 15;
