if (con == 0 && global.interact == 0 && fakeactive == 1)
{
    with (obj_killertownevent)
        con = 5
    snd_play(snd_escaped)
    if (x < 1000)
        con = 5
    if (x > 1000)
        con = 10
    with (obj_mainchara)
    {
        movement = 1
        running = 0
        disable_run = 1
        speed = 0
        y = -60
    }
    global.interact = 1
    global.phasing = 1
    fakeactive = 0
}
