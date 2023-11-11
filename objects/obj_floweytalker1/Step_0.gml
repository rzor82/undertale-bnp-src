if (room == room_area1_meetflowey)
{
    if (global.plot != 0)
        instance_destroy()
}
if instance_exists(obj_face_anything_new)
    image_index = obj_face_anything_new.image_index
if (sprite_index == spr_floweysink && image_index == 5)
    instance_destroy()
