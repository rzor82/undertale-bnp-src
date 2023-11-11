if (myinteract == 1)
{
    if (snd_isplaying(snd_movemenu) == 0)
        snd_play(snd_movemenu)
    if (image_index == 0)
    {
        image_index = 1
        glow = 1
    }
    else
    {
        image_index = 0
        glow = 0
    }
    myinteract = 0
}
if (room == room_icecave1 && (!murder))
{
    glowtotal = 0
    for (var i = 0; i < instance_number(obj_glowshroom); i++)
    {
        q = instance_find(obj_glowshroom, i)
        if (q.glow == 0)
            glowtotal += 1
    }
    if (glowtotal >= 4 && global.flag[270] == 0)
    {
        snd_play(snd_dumbvictory)
        global.flag[270] = 1
        obj_encounterer_glyde.gottemlol = 1
    }
}
