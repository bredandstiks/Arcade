

randomize();

var count = irandom_range(1, 2);

var i = instance_create_layer(room_width + 100, room_height - 170, "Instances", ObstacleObject);

i.sprite_index = choose(SmallObstacleSpritePh, LargeObstacleSpritePh, FlyingObstacleSpritePh);

switch (i.sprite_index)
{
	case SmallObstacleSpritePh:
	case LargeObstacleSpritePh:
		i.image_speed = 0;
		i.image_index = irandom_range(0, sprite_get_number(i.sprite_index) - 1);
		
		if (global.speedModifier > 1.5)
		{
			if(count == 2)
			{
				var j = instance_create_layer(room_width + 180, room_height - 170, "Instances", ObstacleObject);

				j.sprite_index = choose(SmallObstacleSpritePh, LargeObstacleSpritePh);
				j.image_speed = 0;
				j.image_index = irandom_range(0, sprite_get_number(j.sprite_index) - 1);
			}
		}
		
		break;
	
	default:
		i.image_speed = 1;
		i.y = choose(room_height - 200, room_height - 250, room_height - 290);

		
		break;
}

if(global.gameOver) exit;

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);