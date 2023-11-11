global.border = 1
eliminate = 0
global.turntimer = -1
SCR_BORDERSETUP()
var w = (c_borderwidth(1) - 5)
var h = w
var boxcenter = floor(((room_width / 3) * 2))
global.idealborder[0] = ((boxcenter - floor((w / 2))) - 5)
global.idealborder[1] = ((boxcenter + floor((w / 2))) + 2)
global.idealborder[2] = ((global.idealborder[3] - h) - 6)
global.border = -1
boss = obj_mirrorb.id
murder = boss.murder
with (boss)
{
    destx = ((room_width / 3) - (sprite_width / 2))
    desty = (global.idealborder[3] - sprite_height)
    travel = 1
}
with (obj_heart)
{
    x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
    y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
    movement = -1
    pink = 1
}
dmg = (murder ? (2 + floor((global.lv * 0.35))) : 2)
times = (murder ? 20 : 10)
steps = global.firingrate
waittime = (murder ? 18 : 20)
var divisor = 4
var multiplier = floor(((1 - (1 / divisor)) * divisor))
var x1 = (((global.idealborder[0] + floor((w / divisor))) + 5) - 8)
var x2 = (((global.idealborder[0] + (floor((w / divisor)) * multiplier)) + 5) - 5)
var y1 = (((global.idealborder[2] + floor((h / divisor))) + 5) - 8)
var y2 = (((global.idealborder[2] + (floor((h / divisor)) * multiplier)) + 5) - 5)
positions[0, 0] = x1
positions[0, 1] = y1
positions[1, 0] = x2
positions[1, 1] = y1
positions[2, 0] = x2
positions[2, 1] = y2
positions[3, 0] = x1
positions[3, 1] = y2
movediv = (divisor * 2)
boss.shieldanimspeed = 0.01
shieldamt = (murder ? 25 : 35)
targetalpha = 0
flasher = -4
flashed = 0
var pos = irandom(3)
for (var i = 0; i < 4; i++)
{
    if (i == pos)
        hearts[i] = obj_heart.id
    else
        hearts[i] = scr_marker(obj_heart.x, obj_heart.y, spr_heartpink)
    with (hearts[i])
    {
        scr_getideal(other.positions[i, 0], other.positions[i, 1])
        index = i
    }
    zonealpha[i] = 0
    zones[i] = 0
}
with (obj_npc_marker)
    depth = obj_heart.depth
alarm[4] = 30
lock = 1
con = 0
lithit = 168
lithit2 = 169
gothit = 0
