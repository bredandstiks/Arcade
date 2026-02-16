function arcade_finish(status, score)
{
    global.run_last_status = status;
    global.run_last_score  = score;

    // ticket reward rule (simple for now)
    var reward = 0;
    switch (global.run_active_machine)
    {
        case "snake":  reward = score; break;
        case "runner": reward = floor(score / 10); break;
    }

    global.playerData.tickets += max(0, reward);

    room_goto(global.run_return_room);
}
