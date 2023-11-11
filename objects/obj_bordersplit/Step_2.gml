image_yscale = (c_borderheight(0) / 2)
x = (obj_lborder.x + (c_borderwidth(0) / 2))
y = obj_uborder.y
for (var i = 0; i < array_length_1d(target_objs); i++)
{
    target_obj = target_objs[i]
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, target_obj, 0, 0)
    {
        if (target_obj.x > x)
            target_obj.x = (x + sprite_width)
        else
            target_obj.x = (x - target_obj.sprite_width)
    }
}
if (global.mnfight != 2)
    instance_destroy()
