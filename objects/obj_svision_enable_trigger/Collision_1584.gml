if instance_exists(obj_soulvision)
{
    with (obj_soulvision)
    {
        if (room != room_fire_lasers1 || global.flag[371] == 0)
            event_user(1)
    }
}
