image_alpha += tspeed
if special
    global.screen_border_alpha = (1 - image_alpha)
if instance_exists(obj_labfog)
    depth = (obj_labfog.depth - 1)
