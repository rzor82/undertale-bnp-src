script_execute(scr_depth, 0, 0, 0, 0, 0)
if (room == room_kitchen_final && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[452] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_asghouse3 && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[453] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_ruins_sewer_trouble && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[116] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
