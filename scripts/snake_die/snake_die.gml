function snake_die()
{
    if (high_score < points) high_score = points;

    // finish & return to hub
    arcade_finish("dead", points);

    // kill snake (and optionally body parts)
    instance_destroy();
}
