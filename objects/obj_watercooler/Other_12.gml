if (room == room_fire2)
{
    if (global.flag[353] > 0)
    {
        if (madepud == 0)
        {
            pud = instance_create(170, 63, obj_readable_room5)
            pudspr = scr_marker(170, 60, spr_coolerpuddle)
            pudspr.depth = 900000
            madepud = 1
        }
        if (global.flag[353] > 0)
        {
            if (global.flag[353] > 7)
                pudspr.image_index = 1
            if (global.flag[353] > 15)
                pudspr.image_index = 2
            if (global.flag[353] > 15 && global.flag[7] == 1)
                pudspr.image_index = 3
        }
    }
}
else
{
    thisvariableisonlyheresothatutmtwillworkproperlythanks = 0
    if (global.flag[359] > 0)
    {
        if (madepud == 0)
        {
            pud = instance_create(350, 123, obj_readable_room5)
            pudspr = scr_marker(350, 120, spr_coolerpuddle)
            pudspr.depth = 900000
            madepud = 1
        }
    }
    if (global.flag[359] > 0)
    {
        if (global.flag[359] > 7)
            pudspr.image_index = 1
        if (global.flag[359] > 15)
            pudspr.image_index = 2
        if (global.flag[359] > 15 && global.flag[7] == 1)
            pudspr.image_index = 3
    }
}
