
f = font_add("EquipmentPro.ttf", 20, false, false, 32, 128);

chosen = -1;

width = display_get_gui_width();
height = display_get_gui_height();
widthHalf = width / 2;
heightHalf = height / 2;
padding = 40;
fontSize = font_get_size(f);
menuCommited = -1;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menuCount = array_length_1d(menu);
cursor = 2;

