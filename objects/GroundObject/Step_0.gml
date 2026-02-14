speed = -20 * global.speedModifier;

if(global.gameOver)
{
	exit;
}

if(x < 0)
{
	randomize();
	var n = irandom(10);

	//20% create special type

	if(n <= 1)
	{
		image_index = choose(1, 2);
	}
	else
	{
		image_index = choose(0, 3);
	}

	image_speed = 0;
	
	move_wrap(true, false, sprite_get_width(sprite_index));
}