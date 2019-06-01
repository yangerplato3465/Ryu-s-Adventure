/// @description 
jumped = false;
landed = false;

if(control){
	if (yVelo < 1 && yVelo > -1)
	    platformCheck();
	else
	    repeat(abs(yVelo)) {
	        if (!platformCheck())
	            y += sign(yVelo);
	        else
	            break;
	    }

	if (platformTarget) {
	    if (!onGround)
	        landed = true;
    
	    if (landed)
	        with (platformTarget) other.yVelo = 0;
	    else
	        with (platformTarget) other.yVelo = 0;
	}

	repeat(abs(xVelo)) {
	    if (place_meeting(x + sign(xVelo), y, oParentSolid) && !place_meeting(x + sign(xVelo), y - 1, oParentSolid))
	        y -= 1;
         
	    if (place_meeting(x + sign(xVelo), y + 2, oParentSolid) && !place_meeting(x + sign(xVelo), y + 1, oParentSolid))
	        y += 1;
      
	  /*  // Push block //
	    if (place_meeting(x + sign(xVelo), y, oPushBlock)) {
	        // Push slowly
	        xVelo = clamp(xVelo, -1, 1);
            
	        with (instance_place(x + sign(xVelo), y, oPushBlock)) {
	            // UP slope
	            if (place_meeting(x + sign(other.xVelo), y, oParentSolid) && !place_meeting(x + sign(other.xVelo), y - 1, oParentSolid))
	                --y;
            
	            // DOWN slope
	            if (!place_meeting(x + sign(other.xVelo), y, oParentSolid) && !place_meeting(x + sign(other.xVelo), y + 1, oParentSolid) && place_meeting(x + sign(other.xVelo), y + 2, oParentSolid))
	                ++y;        

	            if (!place_meeting(x + sign(other.xVelo), y, oParentSolid))
	                x += sign(other.xVelo); 
	            else {
	                other.h = 0;
	                break;
	            }        
	        }
	    } // End push block //          */
          
	    if (!place_meeting(x + sign(xVelo), y, oParentSolid))
	        x += sign(xVelo);
	    else
	        xVelo = 0;
	}
}


