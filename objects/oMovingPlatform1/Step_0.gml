/// @description 
x += SpeedX * DirX;
y += SpeedY * DirY;

if(x <= CurrentX || x >= TargetX){
	DirX *= -1;
}

if(y <= CurrentY || y >= TargetY){
	DirY *= -1;
}