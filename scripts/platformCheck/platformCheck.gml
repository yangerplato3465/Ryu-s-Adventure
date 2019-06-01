/// @description  PlatformCheck();

var collision = instance_place(x, y + sign(yVelo), oParentSolid);

if (collision) {
    if (yVelo >= 0) {
        platformTarget = collision;
    } else {
        // Platform above
        yVelo = 0;
    }
    return true;
}

if (yVelo < 0) {
    platformTarget = 0;
}

if (instance_exists(platformTarget)) {
    if (platformTarget) {
        if (place_meeting(x, y + 1, platformTarget) && !place_meeting(x, y, platformTarget)) {
            //Platform below
            yVelo = 0;
            return true;
        } else
            platformTarget = 0;
    }
} else
    platformTarget = 0;
    
if (yVelo > 0) {
    with (oParentMain) {
        {
            if (place_meeting(x, y - 1, other) && !place_meeting(x, y, other)) {
                yVelo = 0;
            }
        }
    }
    
    with (oParentJumpThru) {
        if (place_meeting(x, y - 1, other) && !place_meeting(x, y, other)) {
            // Land
            yVelo = 0;
            other.platformTarget = id;
            return true;
        }
    }
}

platformTarget = 0;
return false;