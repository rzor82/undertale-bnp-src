if (h >= 3 && solved == 0)
{
    if (room == room_water_firepuzzle)
    {
        with (obj_solidtall)
            instance_destroy()
    }
    solved = 1
    if (global.plot < 106)
        global.plot = 106
    global.flag[299] = 1
    for (i = 0; i < 13; i += 1)
    {
        g = instance_create((440 + (i * 20)), 100, obj_proxglower)
        g = instance_create((440 + (i * 20)), 180, obj_proxglower)
    }
    global.flag[412] += 1
    instance_create(420, 140, obj_boardride_a)
    obj_proxglower.image_speed = 0.25
    obj_proxglower.sprite_index = spr_smallstar
}
h = 0
