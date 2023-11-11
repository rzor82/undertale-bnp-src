special = (global.weapon == 3 || global.weapon == 13 || global.weapon == 14 || global.weapon == 51 || global.weapon == 52)
global.monsterinstance[3] = id
global.monsterdef[3] = (global.df + global.adef)
global.hurtanim[3] = 0
var prev = global.border
global.border = 0
SCR_BORDERSETUP()
offset = c_borderheight(1)
global.border = prev
SCR_BORDERSETUP()
murder = obj_mirrorb.murder
borderalpha = 0
slashangle = 0
slashside = 0
diff = -1
dist = 20
rate = 15
rem_shiftstate = 0
image_alpha = 0
target = -4
times = (3 + irandom(3))
hitx = x
hity = y
con = 0
dmg = 0
ht = 0
wd = 0
for (var i = 0; i < 4; i++)
{
    border[i] = global.idealborder[i]
    sliced[i] = border[i]
}
if special
    global.border = -1
with (obj_mirrorb)
{
    prevdef = global.monsterdef[myself]
    other.rem_shiftstate = didshift
    didshift = 2
}
with (obj_mirrorbg)
{
    new_blend = merge_color(c_black, c_white, 0.2)
    blend_speed = 0.05
    event_user(0)
}
