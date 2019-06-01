if(place_meeting(x, y, oRyu)){
	//instance_destroy(oCheese);
	oRyu.hasCheese = true;
	follow = true;
}

if(follow){ ///////float toward ryu
	var targetX = oRyu.x;
	var targetY = oRyu.y - 5;
	
	if(oRyu.facing == 1){      //////always follow behind Ryu depends on facing
		x = lerp(x, targetX + 6, 0.1);  
	}else if(oRyu.facing == -1){
		x = lerp(x, targetX - 23, 0.1);  
	}
	y = lerp(y, targetY, 0.1);
}else{
	y += floatSpeed * dir
	if(y >= bottom || y <= top) dir *= -1;
}

