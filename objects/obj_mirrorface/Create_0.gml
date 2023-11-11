hearttarget = 1
switch irandom(3)
{
    case 0:
        y = (global.idealborder[2] - 20)
        x = irandom_range(global.idealborder[0], global.idealborder[1])
        break
    case 1:
        y = (global.idealborder[3] + 25)
        x = irandom_range(global.idealborder[0], global.idealborder[1])
        break
    case 2:
        y = irandom_range(global.idealborder[2], global.idealborder[3])
        x = (global.idealborder[0] - 20)
        break
    case 3:
        y = irandom_range(global.idealborder[2], global.idealborder[3])
        x = (global.idealborder[1] + 25)
        break
}

if hearttarget
{
    centerx = (obj_heart.x + 8)
    centery = (obj_heart.y + 8)
}
else
{
    centerx = (global.idealborder[0] + (c_borderwidth(1) / 2))
    centery = (global.idealborder[2] + (c_borderheight(1) / 2))
}
focus = 1
image_angle = point_direction(x, y, centerx, centery)
image_alpha = 0
delay = 2
times = 5
stage = 0
