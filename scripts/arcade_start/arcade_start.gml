function arcade_start(machine_id, room_to_go)
{
    global.run_active_machine = machine_id;
    global.run_return_room = global.hub_room;
    global.run_last_score = 0;
    global.run_last_status = "none";
    room_goto(room_to_go);
}
