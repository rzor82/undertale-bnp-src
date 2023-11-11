if (dooract == 1)
{
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_mainchara, 0, 0)
        event_user(2)
}
if instance_exists(obj_kitchenchecker)
    image_alpha = obj_kitchenchecker.bgalpha
