if (!instance_exists(obj_mirror_death_event))
{
    scr_monsterdefeat()
    global.flag[365] = (1 + killed)
    if (killed && murder && actcon >= 4)
        global.flag[365] = 3
    else if (!killed)
        global.flag[27] = 1
    with (obj_mirrorbg)
    {
        new_sat = -1
        sin_speed = 0
        tick_speed = 0
        event_user(1)
    }
}
