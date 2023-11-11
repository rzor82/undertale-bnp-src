con = 0
if (global.flag[7] == 1 && global.flag[510] == 2)
{
    if (caster_is_playing(global.currentsong) != 1 && global.flag[7] == 1)
    {
        global.currentsong = caster_load("music/reunited.ogg")
        caster_loop(global.currentsong, 1, 1)
        instance_destroy()
        return;
    }
}
if (global.flag[510] == 0 || global.flag[510] == 2)
{
    instance_destroy()
    return;
}
else
{
    instance_create(0, 0, obj_borderdrawer)
    global.hp = global.maxhp
    global.currentsong = caster_load("music/reunited.ogg")
    global.flag[7] = 1
    global.flag[287] = 1
    global.flag[509] = 0
    global.plot = 999
    with (obj_toriel_friendc)
        direction = 0
    with (obj_sans_friendc)
        direction = 0
    with (obj_asgore_friendc)
        direction = 180
    with (obj_alphys_friendc)
        direction = 180
    global.interact = 1
    con = 0.1
    alarm[4] = 140
    blk = 1
    d_blk = 1
    global.screen_border_alpha = 0
}
