//basic variables
//Movements
event_inherited();
groundAccel = 0.25;
groundFric = 0.18;
airAccel = 0.25;
airFric = 0.1;
xVeloMax = 2.5; //5.5
yVeloMax = 10;
jumpHeight = 7;
gravityNormal = 0.35;

//states
idle = 10;
run = 11;
jump = 12;
death = 13;

state = idle;
facing = -image_xscale;

xscale = 1;
yscale = 1;

//environment
blockSize = 16;
control = true;

//coyote time
ledgeJumpTime = 4;
ledgeJumpTimer = ledgeJumpTime;

jumpBufferTime = 4
jumpBufferTimer = 0;

coyoteJump = false;

hasCheese = false;

lastSprite = sprite_index;// make sure animation starts from frame 0

deathSound = false;
//light glow
//instance_create_layer(x, y, "Lighting", oRyuLight);

