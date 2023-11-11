if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.stringno == 1)
    {
        caster_free(global.currentsong)
        if (global.flag[61] == 0)
            global.currentsong = caster_load("music/grillby_02")
        else if (global.flag[61] == 1)
            global.currentsong = caster_load("music/grillby_01")
        else
            return;
        caster_loop(global.currentsong, 1, 1)
        return;
    }
}
else
    return;
alarm[0] = 1
