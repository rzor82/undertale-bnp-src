alarm[10] = 30
if (con2 == 0)
{
    next = 0
    with (mypart1)
    {
        rotmod = 0.4
        speedmod = 1
    }
}
hp -= 1
if (hp < 275 && con2 < 3)
    con2 = 3
if (hp <= 195 && con2 == 5)
{
    next = 0
    con2 = 6
    move_towards_point(xstart, ystart, 8)
    global.turntimer += 80
}
if (con2 == 14)
    con2 = 15
if (con2 == 28)
{
    with (OBJ_WRITER)
        instance_destroy()
    with (blcon)
        instance_destroy()
    con2 = 29
    vol = caster_get_volume(global.batmusic)
    pitch = caster_get_pitch(global.batmusic)
    if (slowthemusic == 0)
        slowthemusic = 1
    with (mypart1)
    {
        rotmod = 0
        speedmod = 0
    }
    alarm[4] = 60
}
