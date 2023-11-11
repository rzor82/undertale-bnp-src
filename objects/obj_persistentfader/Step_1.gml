image_alpha += tspeed
if (image_alpha < 0.02)
    instance_destroy()
if instance_exists(obj_labfog)
    depth = (obj_labfog.depth - 1)
