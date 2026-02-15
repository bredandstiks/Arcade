function snake_die(){
	if(high_score < points)
	{
		high_score = points;
	}

	show_debug_message("Highscore: ", high_score, "Points: ", points);


	instance_destroy();
}