global.plot = 2
instance_create(147, 440, obj_stalkerflowey)
speed = 0
image_alpha -= 0.08
if (image_alpha < 0.1)
    instance_destroy()
