if (callcon == 1)
{
    global.facing = 0
    if (scr_murderlv() == 0)
    {
        chara = instance_create(obj_mainchara.x, obj_mainchara.y, obj_mainchara_actor)
        chara.fun = true
        chara.sprite_index = spr_mainchara_call
    }
    with (obj_mainchara)
    {
        if (scr_murderlv() == 0)
            image_alpha = 0
    }
    callcon = 2
}
if (callcon == 2 && (!instance_exists(obj_dialoguer)))
{
    if (scr_murderlv() == 0)
    {
        with (chara)
            instance_destroy()
        with (obj_mainchara)
            image_alpha = 1
    }
    global.interact = 0
    global.plot = 12
    callcon = 3
}
if (callcon == 3 && (!instance_exists(obj_dialoguer)))
    instance_destroy()
