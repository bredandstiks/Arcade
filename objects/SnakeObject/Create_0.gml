move_speed = 0.2; // smaller number = faster speed
move_timer = move_speed * room_speed;
direct = "up"; //direction

points = 0;
start_body_parts = 3; // includes head

bodyPart[0] = SnakeObject;

for(i = 1; i < start_body_parts; i += 1)
{
	bodyPart[i] = instance_create_layer(x, y + 32 * i, "Instances", BodyObject);
}