touched = false
if (room == room_ruinsexit)
{
    if (global.flag[7] == 1 || (global.flag[45] == 4 && global.flag[161] == 1))
    {
        instance_create(x, y, obj_door_s_musfade)
        instance_destroy()
    }
}
