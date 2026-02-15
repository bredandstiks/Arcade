move_speed = 0.2; // smaller number = faster speed
move_timer = move_speed * room_speed;
direct = "up"; //direction

points = 0;
points_to_add = 1;

high_score = points;

start_body_parts = 3; // includes head as 1

bodyPart[0] = SnakeObject;

for(i = 1; i < start_body_parts; i += 1)
{
	bodyPart[i] = instance_create_layer(x, y + 32 * i, "Instances", BodyObject);
}

die_on_edge = true; //checks if player dies at edge of the screen