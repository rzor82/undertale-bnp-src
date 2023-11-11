if (image_alpha < 1)
    image_alpha += 0.2
image_angle += ang
if (y > (__view_get(1, 0) + 245))
    instance_destroy()
if (x < (__view_get(0, 0) - 4))
    instance_destroy()
if (x > (__view_get(0, 0) + 324))
    instance_destroy()
