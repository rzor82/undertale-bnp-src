if (c == 4)
{
    ddd = instance_create(x, y, obj_vaporized_new)
    with (ddd)
        scr_newvapordata(9)
    ddd.sprite_index = sprite_index
    ddd.depth = depth
    obj_papyrusdeadhead.depth = (ddd.depth - 1000)
    ddd.ht = sprite_height
    ddd.wd = sprite_width
    instance_destroy()
}
