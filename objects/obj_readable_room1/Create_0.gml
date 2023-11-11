myinteract = 0
read = 0
specialread = 0
cantalk = 1
mydialoguer = 438274832
if (room < room_basement3)
{
    if (global.plot == 0)
        instance_destroy()
}
if (room == room_area1_room_of_fallen_stars && global.flag[7] == 0)
    instance_destroy()
if (room == ROOM_DOOR && instance_exists(obj_greydoor) == 1)
    instance_destroy()
if (room == room_castle_throneroom && global.flag[7] == 1 && (!instance_exists(obj_bench)))
{
    with (obj_asgorethrone)
    {
        var obj = collision_rectangle(x, y, (x + sprite_width), (y + sprite_height), obj_solidsmall, 0, 0)
        while instance_exists(obj)
        {
            with (obj)
                instance_destroy()
            obj = collision_rectangle(x, y, (x + sprite_width), (y + sprite_height), obj_solidsmall, 0, 0)
        }
        with (instance_create(x, y, obj_bench))
        {
            sprite_index = other.sprite_index
            scr_depth()
            depth -= 1
        }
        instance_destroy()
    }
    with (object_index)
        instance_destroy()
}
