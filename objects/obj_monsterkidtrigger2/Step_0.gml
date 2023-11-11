if (conversation == 1)
{
    t = 0
    with (obj_monsterkidtrigger1)
        instance_destroy()
    if instance_exists(obj_mkid_actor)
    {
        obj_mkid_actor.hspeed = 6
        obj_mkid_actor.sprite_index = spr_mkid_r
        obj_mkid_actor.image_speed = 0.4
    }
    global.plot = 104
}
