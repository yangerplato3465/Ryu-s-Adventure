/// @description  EntityStep();

jumped = false;
landed = false;

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
        
    if (!place_meeting(x + sign(xVelo), y, oParentSolid))
        x += sign(xVelo);
    else
        xVelo = 0;
}