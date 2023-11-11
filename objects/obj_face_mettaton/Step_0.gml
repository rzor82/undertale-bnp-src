image_index = global.faceemotion
if (global.facechoice == 0)
    instance_destroy()
if instance_exists(obj_dialoguer)
    depth = (obj_dialoguer.depth - 100000000000)
