if (myinteract == 1 && con == 0)
{
    snd_play(snd_mysterygo)
    image_index = 1
    con = 1
}
if (room == ROOM_MONITOR)
{
    if (obj_mainchara.x < 400)
    {
        snd_play(snd_mysterygo)
        image_index = 1
        con = 1
        snd_stop(snd_mysterygo)
    }
}
if (con == 1)
    image_alpha -= 0.04
