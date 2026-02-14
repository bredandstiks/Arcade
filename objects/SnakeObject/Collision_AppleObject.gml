points += points_to_add;

//add new BodyObject

var newBodyX = bodyPart[start_body_parts + points - 2].x;
var newBodyY = bodyPart[start_body_parts + points - 2].y;

bodyPart[start_body_parts + points - 1] = instance_create_layer(newBodyX, newBodyY, "Instances", BodyObject);

instance_destroy(other);

