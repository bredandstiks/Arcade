if (global.gameOver)
{
    if (!global.runner_finished)
    {
        global.runner_finished = true;
        global.runner_last_score = floor(score);

        // set high score
    if (score > global.Runner_highScore)
	{
		global.Runner_highScore = score;
	    save_write(global.saveSlot);
	}


        // save high score
		save_write(global.saveSlot);

    }

    exit; // stop updating score/speed once game over
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