move_timer--;

if(keyboard_check(ord("W")) && image_angle != 180)
{
	direct = "up";
}
if(keyboard_check(ord("A")) && image_angle != 270)
{
	direct = "left";
}
if(keyboard_check(ord("S")) && image_angle != 0)
{
	direct = "right";
}
if(keyboard_check(ord("D")) && image_angle != 90)
{
	direct = "down";
}

prev_head_x = x;
prev_head_y = y;

if(move_timer == 0)
{
	if(direction == "up")
	{
		y -= 32;
		image_angle = 0;
	}
	if(direction == "down")
	{
		y -= 32;
		image_angle = 0;
	}
	if(direction == "right")
	{
		y -= 32;
		image_angle = 0;
	}
	if(direction == "left")
	{
		y -= 32;
		image_angle = 0;
	}
}