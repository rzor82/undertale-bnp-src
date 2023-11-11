if instance_exists(OBJ_WRITER)
{
    if control_check_pressed(1)
    {
        with (OBJ_WRITER)
            stringpos = string_length(originalstring)
        control_clear(1)
    }
}
