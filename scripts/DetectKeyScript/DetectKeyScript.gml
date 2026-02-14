function DetectKeyScript(){
	jumpKey = keyboard_check_pressed(vk_space);
	altJumpKey = keyboard_check_pressed(vk_up);
	duckKey = keyboard_check(vk_down);
}