var interval = 8;

// Draw sprite depending on player state
switch (state) {
    case idle: 
        image_speed = 0.3;
		sprite_index = sRyuIdle;
    break;
        
    case run: 
        image_speed = 0.8; 
        sprite_index = sRyuRun;
    break;
        
    case jump:
        if (yVelo <= 0) {
                sprite_index = sRyuJump;  
        } else {
                sprite_index = sRyuFall;
        }
    break;
	
	case death:
		xscale = 1;
		yscale = 1;
		image_speed = 0.8; 
        sprite_index = sRyuDeath;
	break;
}

if(alarm[0] % interval <= interval / 2){  //invisibility frame
// Draw player
	if (onGround) draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);    
	else draw_sprite_ext(sprite_index, image_index, x, y, facing * xscale, yscale, 0, c_white, image_alpha);
}
