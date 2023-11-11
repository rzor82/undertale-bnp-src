size += grow
image_xscale = size
image_yscale = size
image_alpha -= fade
if (image_alpha < 0.1)
    instance_destroy()
image_angle += 6
scr_depth()
if instance_exists(obj_soulvision)
{
    if (hostile == 1)
        depth = (obj_soulvision.depth - 1)
}
