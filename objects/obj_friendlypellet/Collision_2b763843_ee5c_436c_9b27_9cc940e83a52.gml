if (global.invc < 1)
{
    global.hp -= 19
    snd_play(snd_hurt1)
    global.hshake = 8
    global.shakespeed = 1.5
    global.vshake = 2
    instance_create(0, 0, obj_shaker)
    global.invc = 30
    with (obj_floweybattle1)
    {
        if (conversation < 5)
            alt = 1
        conversation = 10
    }
    obj_friendlypellet.attackyou = 3
    with (OBJ_WRITER)
        instance_destroy()
    with (obj_blconwdflowey)
        instance_destroy()
}
