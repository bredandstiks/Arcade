repeat (1000) {
    var xx = -16 + 32 * round(random_range(32, room_width - 32) / 32);
    var yy = -16 + 32 * round(random_range(32, room_height - 32) / 32);

    // only accept if not on snake head/body
    if (!position_meeting(xx, yy, SnakeObject) && !position_meeting(xx, yy, BodyObject)) {
        x = xx;
        y = yy;
        break;
    }
}
