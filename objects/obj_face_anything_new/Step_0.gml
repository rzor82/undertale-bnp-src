if (instance_exists(OBJ_WRITER) && (!should_blink))
{
    if (global.facechoice == "D" && OBJ_WRITER.halt != false)
        image_speed = anim_speed
    else if (global.facechoice == "E" && OBJ_WRITER.halt != false)
        image_speed = anim_speed
    else if (OBJ_WRITER.halt != false)
    {
        image_speed = 0
        image_index = 0
    }
    else
        image_speed = anim_speed
    if instance_exists(obj_mettaton_actor)
    {
        if (global.facechoice == "D" || global.facechoice == "E")
            image_speed = obj_mettaton_actor.image_speed
    }
}
if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth - 100000000000)
should_blink = 0
if (instance_exists(OBJ_WRITER) && does_face_blink)
    should_blink = OBJ_WRITER.halt != false
scr_set_face()
if instance_exists(obj_dialoguer)
{
    if (obj_dialoguer.side == 0)
    {
        with (obj_face)
        {
            if (y > (obj_dialoguer.yy + 80))
                y -= 155
        }
    }
    if (obj_dialoguer.side == 1)
    {
        with (obj_face)
        {
            if (y < (obj_dialoguer.yy + 80))
                y += 155
        }
    }
}
if (room == room_fire_cookingshow)
{
    if (instance_exists(obj_face_torglasses) == 0)
    {
        chefhat = instance_create((x + 10), (y - 9), obj_face_torglasses)
        chefhat.sprite_index = spr_mettaton_face_chefhat
    }
}
