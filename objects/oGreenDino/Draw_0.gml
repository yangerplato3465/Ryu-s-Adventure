switch (state) {
	case walk:
		sprite_index = sRatRun;
	break;
	
	case hit:
		sprite_index = sRatHit;
	break;
	
}

if (lastSprite != sprite_index) {
   image_index = 0;
   lastSprite = sprite_index;
}

if (onGround) {
	draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);    
} else {
	draw_sprite_ext(sprite_index, image_index, x, y, facing * xscale, yscale, 0, c_white, image_alpha);
}

