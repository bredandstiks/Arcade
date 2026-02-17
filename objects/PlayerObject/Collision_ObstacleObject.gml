global.gameOver = true;
	global.speedModifier = 0;
	image_speed = 0;
	sprite_index = PlayerDeadSpriteDark;
	
if(!instance_exists(RestartButtonObject))
{
	instance_create_layer(room_width/2, room_height/2 + 50, "Instances", RestartButtonObject);
}

with(ObstacleObject)
{
	image_speed = 0;
}