event_inherited()
image_speed = 0.25
if instance_exists(obj_face)
{
    with (obj_face)
    {
        if (id != other.id)
            instance_destroy()
    }
}
event_user(0)
if (room == room_fire_cookingshow)
{
    chefhat = instance_create((x + 10), (y - 9), obj_face_torglasses)
    chefhat.sprite_index = spr_mettaton_face_chefhat
}
image_index = global.faceemotion
instance_create(x, y, obj_face_anything_new)
instance_destroy()
