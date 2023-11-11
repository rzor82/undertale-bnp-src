upspeed = image_speed
downspeed = (image_speed + 0.2)
a += 1
if (sin((a / 4.5)) > 0)
    y += upspeed
else
    y -= upspeed
depth = (obj_movedogebody.depth + 1)
