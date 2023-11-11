if (global.plot > 105)
{
    instance_create(160, 265, obj_sign_room)
    instance_destroy()
}
else
{
    con = 0
    image_yscale = 999
    mkid = instance_create(260, 275, obj_sans_actor)
    undyne = instance_create(260, 100, obj_undynea_actor)
    undyne.sprite_index = spr_undynea_starku
    mkid.sprite_index = spr_mkid_r
    papyrus = instance_create(60, 110, obj_papyrus_undyne1_actor)
    if (global.flag[67] == 1)
    {
        with (papyrus)
            visible = false
    }
    stk = instance_create(0, 0, obj_starker)
    stk.subject = undyne
    stk.sprite_index = spr_undyne_shad
}
yeah = 0
look = 0
spinagain = 0
helltrigger = 0
