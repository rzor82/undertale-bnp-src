con = 0
if (scr_murderlv() >= 12)
{
    instance_destroy()
    return;
}
if (global.plot > 125)
{
    if (global.plot < 199 && global.flag[369] > 1)
    {
        alphysx = 513
        alphysy = 107
        alphyssprite = spr_alphys_u
        if (global.plot > 130)
        {
            alphysx = 378
            alphysy = 105
        }
        if (global.plot > 134)
        {
            alphysx = 770
            alphysy = 93
            tools = scr_marker(731, 105, spr_alphystools)
            tools.depth = 999999
            instance_create(755, 80, obj_solidwide)
        }
        alphys = instance_create(alphysx, alphysy, obj_alphys_npc)
        alphys.fun = true
        alphys.sprite_index = alphyssprite
    }
    instance_destroy()
    return;
}
image_yscale = 8
looktimer = 0
