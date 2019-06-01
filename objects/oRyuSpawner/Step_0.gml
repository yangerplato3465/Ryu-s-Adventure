if(!instance_exists(oRyu)){
	if(instance_exists(oSwitch)){
		oSwitch.state = 1; //change back to initial state
		oSwitchBlockB.state = -1;
		oSwitchBlockR.state = 1;
	}
	instance_create_layer(spawnX, spawnY, "MainEntities", oRyu);
}
