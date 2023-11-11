if (conversation == 2 && instance_exists(OBJ_WRITER) == 0)
{
    obj_sans_interactable1.special = true
    if (obj_mainchara.x > obj_sans_interactable1.x)
        obj_sans_interactable1.hspeed = -3
    obj_sans_interactable1.image_index = 1479
    if (obj_mainchara.x < obj_sans_interactable1.x)
        obj_sans_interactable1.hspeed = 4
    obj_sans_interactable1.sprite_index = spr_sans_r
    obj_sans_interactable1.image_speed = 0.25
    obj_sans_interactable1.solid = 0
    conversation = 3
}
if (conversation == 3)
{
    global.facing = 0
    conversation = 4
}
if (conversation == 4 && instance_exists(OBJ_WRITER) == 0)
{
    conversation = 5
    alarm[2] = 20
}
if (global.plot == 37)
    instance_destroy()
