function snake_die(){
	if(high_score < points)
	{
		high_score = points;
	}

	show_debug_message("Highscore: ", high_score, "Points: ", points);
	
	instance_create_layer(room_width/2 - 40, room_height/2 - 40, "Instances", SnakeRestartButtonObject);
	instance_destroy();
}