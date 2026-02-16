points += 1;
move_speed -= difficulty;

//add new BodyObject

var lastIndex = array_length(bodyPart) - 1;

var newBodyX = bodyPart[lastIndex].x;
var newBodyY = bodyPart[lastIndex].y;


bodyPart[start_body_parts + points - 1] = instance_create_layer(newBodyX, newBodyY, "Instances", BodyObject);


instance_destroy(other);

