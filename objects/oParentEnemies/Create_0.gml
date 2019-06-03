platformTarget = 0;
//Velocity
xVelo = 0;
yVelo = 0;

//for sub pixel movement
cx = 0;
cy = 0;

onGround = OnGround();
onMovingPlatform = OnMovingPlatform();

walk = 11;
hit = 12;
death = 13;

state = walk;