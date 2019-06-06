if(instance_number(obj_textevent)>1 or instance_number(obj_textbox)>0){ instance_destroy(); exit; }

//-----------Customise (FOR USER)
myVoice			= -1;
myTextCol		= c_white;
myPortrait		= -1;
myFont			= font_add("EquipmentPro.ttf", 20, false, false, 32, 128);
myName			= "None";

//-----------Setup (LEAVE THIS STUFF)
myTextbox   = noone;
reset_dialogue_defaults();