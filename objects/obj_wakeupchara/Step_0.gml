if (active == false)
    instance_destroy()
if (active == true)
{
    active = 2
    alarm[2] = 60
}
if (active == 2)
    global.interact = 1
if (active == 3)
{
    active = 4
    alarm[2] = 10
}
if (active == 5)
{
    snd_play(snd_getup)
    active = 6
}
if (active == 6)
{
    if (room == room_water_trashzone1)
    {
        obj_mainchara.image_angle += 18
        obj_mainchara.y -= 4
        obj_mainchara.x -= 8
        if (obj_mainchara.image_angle >= -1)
        {
            obj_mainchara.image_angle = 0
            instance_destroy()
        }
        global.plot = 115
    }
    else
    {
        obj_mainchara.fun = false
        obj_mainchara.x -= 18
        obj_mainchara.y -= 10
        obj_mainchara.draw_armor = 1
        instance_destroy()
    }
    global.facing = 0
    global.interact = 0
}
