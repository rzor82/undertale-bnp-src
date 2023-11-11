if (won == 1)
{
    if ((!instance_exists(OBJ_WRITER)) || OBJ_WRITER.halt != false)
    {
        with (obj_expander)
            instance_destroy()
        room_goto(global.currentroom)
    }
}
