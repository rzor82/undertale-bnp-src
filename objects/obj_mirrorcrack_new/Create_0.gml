var banned = (instance_exists(obj_mirrorcrack_gen_new) ? obj_mirrorcrack_gen_new.previous_dir : -1)
for (dir = banned; dir == banned; dir = irandom(3))
{
}
murder = 0
if instance_exists(obj_mirrorb)
{
    dmg = global.monsteratk[obj_mirrorb.myself]
    murder = obj_mirrorb.murder
}
else
    dmg = 7
traveldir = 1
var buffersize = 25
with (obj_mirrorcrack_gen_new)
    previous_dir = other.dir
var heartx = (obj_heart.x + 8)
var hearty = (obj_heart.y + 8)
var range = 8
switch dir
{
    case 0:
        y = (global.idealborder[2] + 5)
        x = clamp((heartx + irandom_range((-range), range)), ((global.idealborder[0] + buffersize) + 5), (global.idealborder[1] - buffersize))
        break
    case 1:
        traveldir = -1
        y = global.idealborder[3]
        x = clamp((heartx + irandom_range((-range), range)), ((global.idealborder[0] + buffersize) + 5), (global.idealborder[1] - buffersize))
        break
    case 2:
        y = clamp((hearty + irandom_range((-range), range)), ((global.idealborder[2] + buffersize) + 5), (global.idealborder[3] - buffersize))
        x = (global.idealborder[0] + 5)
        break
    case 3:
        y = clamp((hearty + irandom_range((-range), range)), ((global.idealborder[2] + buffersize) + 5), (global.idealborder[3] - buffersize))
        x = global.idealborder[1]
        traveldir = -1
        break
}

depth -= instance_number(object_index)
stall = 0
decay = 60
startx = x
starty = y
amount = 0
buffer = 10
spacing = 3
surface = -4
drawlimit = 0
stalltimer = 0
w = (c_borderwidth(1) - 5)
h = (c_borderheight(1) - 5)
wbuffer = (((global.idealborder[0] + 5) + (w / 2)) - x)
hbuffer = (((global.idealborder[2] + 5) + (h / 2)) - y)
horizontal = dir > 1
maximum = (horizontal ? h : w)
goal = (horizontal ? w : h)
skewamount = undefined
skew = round(random(2))
odds = [1, 1, 1]
plot = []
con = 0
