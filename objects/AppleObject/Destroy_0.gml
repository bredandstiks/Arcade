var xx, yy;

repeat (1000) {
    xx = -16 + 32 * round(random_range(32, room_width - 32) / 32);
    yy = -16 + 32 * round(random_range(32, room_height - 32) / 32);

    if (!position_meeting(xx, yy, SnakeObject) && !position_meeting(xx, yy, BodyObject)) {
        break;
    }
}

instance_create_layer(xx, yy, "Instances", AppleObject);
