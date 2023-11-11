if (global.flag[430] == 0)
    sprite_index = u[global.faceemotion]
if instance_exists(obj_face_sans)
{
    with (obj_face_sans)
        instance_destroy()
}
if instance_exists(obj_face_undyne)
{
    with (obj_face_undyne)
        instance_destroy()
}
if instance_exists(obj_face_papyrus)
{
    with (obj_face_papyrus)
        instance_destroy()
}
if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth - 100000000000)
if instance_exists(obj_face_asgore)
{
    with (obj_face_asgore)
        instance_destroy()
}
if instance_exists(obj_face_torieltalk)
{
    with (obj_face_torieltalk)
        instance_destroy()
}
if instance_exists(obj_face_torielblink)
{
    with (obj_face_torielblink)
        instance_destroy()
}
if instance_exists(obj_torbody)
{
    with (obj_torbody)
        instance_destroy()
}
if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt != false)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = 0.25
}
if (global.flag[430] == 1)
    sprite_index = u[(global.faceemotion + 10)]
if (global.flag[430] == 2)
    sprite_index = u[(global.faceemotion + 15)]
if (global.flag[430] == 3)
{
    sprite_index = u[global.faceemotion]
    if (global.faceemotion == 7)
        sprite_index = u[24]
    if (global.faceemotion == 0)
        sprite_index = u[25]
}
if (global.flag[7] == 1)
{
    sprite_index = u[global.faceemotion]
    if (global.faceemotion == 1)
        sprite_index = spr_alphysface_laugh
    if (global.faceemotion == 2)
        sprite_index = spr_alphysface_smarmy
    if (global.faceemotion == 8)
        sprite_index = spr_alphysface_2
    if (global.faceemotion == 9)
        sprite_index = u[24]
}
if (global.flag[430] == 4)
{
    image_index = global.faceemotion
    sprite_index = spr_alphysface_new
}
