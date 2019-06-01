jumped = false;
landed = false;
damaged = false
platformTarget = 0;
wallTarget = 0;
push = false;

//Velocity
xVelo = 0;
yVelo = 0;

//for sub pixel movement
cx = 0;
cy = 0;

onGround = OnGround();
onMovingPlatform = OnMovingPlatform();
clingRight = place_meeting(x + 1, y, oBlock);
clingLeft = place_meeting(x - 1, y, oBlock);
