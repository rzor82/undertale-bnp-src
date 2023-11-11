active = false
if (room == room_water_trashzone1)
{
    if (global.plot < 114)
    {
        global.flag[17] = 0
        active = true
        obj_mainchara.image_angle = -90
        obj_mainchara.y += 20
    }
}
if (room == room_area1_room_of_fallen_stars)
{
    if (global.flag[513] == 1)
        instance_destroy()
    else if (global.plot < 1)
    {
        global.flag[513] = 1
        active = true
        obj_mainchara.fun = true
        obj_mainchara.sprite_index = spr_mainchara_lie_2
        obj_mainchara.x -= 18
        obj_mainchara.y += 10
    }
}
