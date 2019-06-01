
if(gamepad_is_connected(0)){
	up = gamepad_axis_value(0, gp_axislv) < -0.4 || gamepad_button_check(0, gp_padu) || keyboard_check(vk_up);
	down = gamepad_axis_value(0, gp_axislv) >  0.4 || gamepad_button_check(0, gp_padd) || keyboard_check(vk_down);
	left = gamepad_axis_value(0, gp_axislh) < -0.4 || gamepad_button_check(0, gp_padl) || keyboard_check(vk_left);
	right = gamepad_axis_value(0, gp_axislh) >  0.4 || gamepad_button_check(0, gp_padr) || keyboard_check(vk_right);
	action = gamepad_button_check_pressed(0, gp_face3) || keyboard_check_pressed(ord("X"));
	jump =  gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(ord("Z"));
	jumpRelease =  gamepad_button_check_released(0, gp_face1) || keyboard_check_released(ord("Z"));
	jumpHold =  gamepad_button_check(0, gp_face1) || keyboard_check(ord("Z"));
	start = gamepad_button_check_pressed(0, gp_start) || keyboard_check_pressed(vk_enter);
	select = gamepad_button_check_pressed(0, gp_select) || keyboard_check_pressed(vk_escape);
}else if(gamepad_is_connected(4)){
	up = gamepad_axis_value(4, gp_axislv) < -0.4 || gamepad_button_check(4, gp_padu) || keyboard_check(vk_up);
	down = gamepad_axis_value(4, gp_axislv) >  0.4 || gamepad_button_check(4, gp_padd) || keyboard_check(vk_down);
	left = gamepad_axis_value(4, gp_axislh) < -0.4 || gamepad_button_check(4, gp_padl) || keyboard_check(vk_left);
	right = gamepad_axis_value(4, gp_axislh) >  0.4 || gamepad_button_check(4, gp_padr) || keyboard_check(vk_right);
	action = gamepad_button_check_pressed(4, gp_face3) || keyboard_check_pressed(ord("X"));
	jump = gamepad_button_check_pressed(4, gp_face1) || keyboard_check_pressed(ord("Z"));
	jumpRelease = gamepad_button_check_released(4, gp_face1) || keyboard_check_released(ord("Z"));
	jumpHold = gamepad_button_check(4, gp_face1) || keyboard_check(ord("Z"));
	start = gamepad_button_check_pressed(4, gp_start) || keyboard_check_pressed(vk_enter);
	select = gamepad_button_check_pressed(4, gp_select) || keyboard_check_pressed(vk_escape);
}else{
	up = keyboard_check(vk_up); 
	down = keyboard_check(vk_down);
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	action = keyboard_check_pressed(ord("X"));
	jump = keyboard_check_pressed(ord("Z")); 
	jumpRelease = keyboard_check_released(ord("Z"));
	jumpHold = keyboard_check(ord("Z"));
	start = keyboard_check_pressed(vk_enter);
	select = keyboard_check_pressed(vk_escape);
}