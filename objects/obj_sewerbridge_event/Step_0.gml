if (con == 1)
{
    caster_pause(global.currentsong)
    alarm[4] = 20
    con = 2
}
else if (con == 2)
    global.interact = 1
else if (con == 3)
{
    caster_loop(snd_bigdoor_open, 1, 1)
    con = 5
}
else if (con == 5)
{
    if (ext > 0)
    {
        alarm[4] = 4
        ext -= 2
        con = 4
    }
    else
    {
        with (wall)
            instance_destroy()
        caster_stop(snd_bigdoor_open)
        caster_resume(global.currentsong)
        caster_play(snd_elecdoor_shutheavy, 1, 1)
        alarm[4] = 20
        ext = 0
        con = 7
    }
}
else if (con == 8)
{
    with (obj_fakewater)
    {
        if layer_exists(other.layer)
            depth = (layer_get_depth(other.layer) + 1)
        else
            depth = max(depth, (other.depth + 1))
    }
    layer_set_visible(layer, 1)
    global.flag[451] = 1
    global.interact = 0
    instance_destroy()
}
if depth_adj
{
    with (obj_fakewater)
        depth = max(depth, (other.depth + 1))
    depth_adj = 0
}
