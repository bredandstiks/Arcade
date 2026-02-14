function CollisionCheckScript(){
	
	if(place_meeting(x, y + vspd, BlockObject))
	{
		while(!place_meeting(x, y+sign(vspd), BlockObject))
		{
			y += sign(vspd);
		}
		
		vspd = 0;
	}
	y += vspd;
}

