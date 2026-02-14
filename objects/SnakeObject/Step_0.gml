move_timer--;

//checks to make sure snake doesn't move backwards
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

//sets old head pos
prev_head_x = x;
prev_head_y = y;

//moves if move_timer is 0
if(move_timer == 0)
{
	//checks where to move
	if(direct == "up")  
	{
		y -= 32;
		image_angle = 0;
	}
	if(direct == "down")  
	{
		y += 32;
		image_angle = 180;
	}
	if(direct == "right")  
	{
		x += 32;
		image_angle = 270;
	}
	if(direct == "left")  
	{
		x -= 32;
		image_angle = 90;
	}
	
	//move body parts with head
	for(i = 1; i < start_body_parts + points; i += 1)
	{
		var prevX = bodyPart[i].x;
		var prevY = bodyPart[i].y;
		
		bodyPart[i].x = prev_head_x;
		bodyPart[i].y = prev_head_y;
		
		//reset prev_head positions
		prev_head_x = prevX;
		prev_head_y = prevY;
	}
	//reset move timer
	move_timer = move_speed * room_speed;
}