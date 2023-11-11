if (room == room_ruins2)
{
    if (!instance_exists(obj_persistentfader))
    {
        trophy_unlock("ruins")
        instance_destroy()
    }
}
else if (room == room_ruins12A)
{
    if ((!instance_exists(obj_persistentfader)) && obj_mainchara.x >= 100)
    {
        trophy_unlock("mouse")
        instance_destroy()
    }
}
else if (room == room_tundra_spaghetti)
{
    if ((!instance_exists(obj_persistentfader)) && obj_mainchara.x >= 130)
    {
        trophy_unlock("spaghetti")
        instance_destroy()
    }
}
else if (room == room_water1)
{
    if ((!instance_exists(obj_persistentfader)) && global.screen_border_dynamic_fade_level == 0)
    {
        trophy_unlock("water")
        instance_destroy()
    }
}
else if (room == room_fire5)
{
    if (!instance_exists(obj_persistentfader))
    {
        trophy_unlock("fire")
        instance_destroy()
    }
}
else if (room == room_fire_elevator_l2 || room == room_fire_elevator_r2)
{
    if (!instance_exists(obj_persistentfader))
    {
        trophy_unlock("fire_2")
        instance_destroy()
    }
}
else if (room == room_fire_elevator_l3 || room == room_fire_elevator_r3)
{
    if (!instance_exists(obj_persistentfader))
    {
        trophy_unlock("fire_2")
        trophy_unlock("fire_3")
        instance_destroy()
    }
}
else if (room == room_fire_core_premett)
{
    if (!instance_exists(obj_persistentfader))
    {
        trophy_unlock("core")
        instance_destroy()
    }
}
else
    instance_destroy()
