heartdirx = (obj_heart.xprevious - obj_heart.x)
var yoff = 0
if (heartdirx < 0)
{
    des_x = ((obj_heart.x + 115) + irandom_range(-5, 5))
    yoff = 20
}
else if (heartdirx > 0)
{
    des_x = ((obj_heart.x - 60) + irandom_range(-5, 5))
    yoff = 0
}
else
{
    des_x = ((obj_heart.x - 10) + irandom_range(-5, 5))
    yoff = 0
}
heartdiry = (obj_heart.yprevious - obj_heart.y)
if (heartdiry < 0)
    des_y = (((obj_heart.y + 20) + yoff) + irandom_range(-5, 5))
else if (heartdiry > 0)
    des_y = (((obj_heart.y - 20) + yoff) + irandom_range(-5, 5))
else
    des_y = ((obj_heart.y + yoff) + irandom_range(-5, 5))
des_rot = irandom_range(-5, 5)
alarm[0] = 15
