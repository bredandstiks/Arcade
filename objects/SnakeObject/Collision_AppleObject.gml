points += floor(points_to_add);
move_speed -= difficulty;
points_to_add += 0.1;

//add new BodyObject

var newBodyX = bodyPart[start_body_parts + points - 2].x;
var newBodyY = bodyPart[start_body_parts + points - 2].y;

bodyPart[start_body_parts + points - 1] = instance_create_layer(newBodyX, newBodyY, "Instances", BodyObject);


instance_destroy(other);

