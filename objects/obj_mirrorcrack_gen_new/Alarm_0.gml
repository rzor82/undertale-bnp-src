if (!endturn)
{
    with (instance_create(0, 0, obj_mirrorcrack_new))
        other.previous_dir = dir
    if (started == 1)
    {
        global.turntimer = turn_timer
        started = 2
    }
}
