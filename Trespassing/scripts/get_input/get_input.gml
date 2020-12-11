// Configures controls for player. Specifically, maps inputs to specific variables.
function get_input(){
	right = keyboard_check_direct(ord("D"));
	left = keyboard_check_direct(ord("A"));
	jump = keyboard_check_pressed(vk_space);
	crouch = keyboard_check_direct(vk_lcontrol);
	roll = keyboard_check_pressed(vk_lshift);
}