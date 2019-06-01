draw_surface(light, 0, 0);
surface_set_target(light);
draw_set_color(c_black);
draw_set_alpha(0.3);
draw_rectangle(0, 0, width, height, false);
surface_reset_target();
draw_set_alpha(1); //set back to 1