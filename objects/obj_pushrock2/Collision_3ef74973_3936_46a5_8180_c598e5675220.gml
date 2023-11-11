if (push == 0)
{
    snd_play(snd_noise)
    push = 1
    obj_mainchara.x -= 6
    if (room == room_ruins_sewer2)
    {
        global.flag[32] = 2
        x = 340
    }
    else
    {
        if (global.flag[32] == 0)
            global.flag[32] = 1
        x = 280
    }
}
