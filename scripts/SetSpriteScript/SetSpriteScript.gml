function SetSpriteScript(){
	if(jumping || falling)
	{
		sprite_index = PlayerStandSpriteDark;
	}
	if(ducking)
	{
		sprite_index = PlayerDuckSpriteDark;
		image_speed = 2;
	}
	if(!ducking && !falling && !jumping)
	{
		sprite_index = PlayerRunSpriteDark;
		image_speed = 2;
	}
}