if(global.gameOver)
{
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