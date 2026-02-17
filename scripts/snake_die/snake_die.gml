function snake_die()
{
    if (points > global.Snake_highScore)
	{
	    global.Snake_highScore = points;
	    save_write(global.saveSlot);
	}


    instance_create_layer(room_width/2 - 40, room_height/2 - 40, "UI", SnakeRestartButtonObject);
    instance_destroy();
}
