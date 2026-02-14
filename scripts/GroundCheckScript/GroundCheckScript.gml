function GroundCheckScript(){
	if(duckKey)
	{
		ducking = true;
		falling = true;
		jumping = false;
	}
	if(place_meeting(x, y + 1, BlockObject))
	{
		vspd = 0;
		falling = false;
		jumping = false;
	
		if(!duckKey)
		{
			ducking = false;
		}
	
		if((jumpKey || altJumpKey) && !duckKey)
		{
			jumping = true;
			vspd = -jspd;
		}
	}
	else
	{
		if(ducking)
		{
			vspd += grav * 4;
		}
		else
		{
			if(vspd < termVelocity)
			{
				vspd += grav;
			}
		
			if(sign(vspd) == 1)
			{
				falling = true;
			}
		}
	}
}