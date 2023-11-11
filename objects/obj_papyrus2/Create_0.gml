if (global.plot >= 43)
{
    with (obj_soulvision)
        instance_destroy()
    instance_destroy()
}
else
{
    conversation = 0
    image_yscale = 999
    sans = instance_create(240, 74, obj_sans_actor)
    papyrus = instance_create(240, 100, obj_papyrus_actor)
    papyrus.sprite_index = spr_papyrus_ut
    sans.sprite_index = spr_sans_dt
}
look = 0
spinagain = 0
murder = 0
if (scr_murderlv() >= 3)
    murder = 1
if (global.flag[27] == 1)
    murder = 0
if murder
{
    with (obj_soulvision)
        instance_destroy()
}
remhp = global.hp
hptalk = 0
mcmove = 0
gpsrite = 1157
gdraw = 0
