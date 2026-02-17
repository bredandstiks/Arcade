

alarm[0] = room_speed * 3;

alarm[1] = room_speed * 10;

score = 0;

global.runner_finished = false;
global.runner_last_score = 0;

world_speed = 10;		// baseline
world_speed_ramp = 0.01;	// per step (tiny)
world_speed_max = 18;

jump_buffer = 0.12;		// seconds
coyote_time = 0.10;		// seconds

