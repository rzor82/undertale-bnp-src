if (vspeed > 0)
    depth = 2
if (size < 1)
    size += 0.04
image_xscale = size
image_yscale = size
image_angle += ang
if (y > (__view_get(1, 0) + 250))
    instance_destroy()
if (x < (__view_get(0, 0) - 10))
    instance_destroy()
if (x > (__view_get(0, 0) + 320))
    instance_destroy()
