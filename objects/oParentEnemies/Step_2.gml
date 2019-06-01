//handle sub pixel movement
cx += xVelo;
cy += yVelo;
xVeloNew = round(cx);
yVeloNew = round(cy);
cx -= xVeloNew;
cy -= yVeloNew;

EntityStep();