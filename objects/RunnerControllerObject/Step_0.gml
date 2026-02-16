if(global.gameOver)
{
	//set high score
	if(global.Runner_highScore < score)
	{
		global.Runner_highScore = score;
	}
	//save high score
	open_save(global.saveSlot);
	
	score = 0;
}

if (global.colorMode == 0)
{
	SmallObstacleSpritePh = SmallObstacleSpriteDark;
	LargeObstacleSpritePh = LargeObstacleSpriteDark;
	FlyingObstacleSpritePh = FlyingObstacleSpriteDark;
}

if (global.colorMode == 1)
{
	SmallObstacleSpritePh = SmallObstacleSpriteLight;
	LargeObstacleSpritePh = LargeObstacleSpriteLight;
	FlyingObstacleSpritePh = FlyingObstacleSpriteLight;
}

global.speedModifier += 0.0005;
score += 1 * global.speedModifier;