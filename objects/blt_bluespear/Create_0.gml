dmg = 0
gench = 0
trych = 0
if (scr_monstersum() > 1)
    speartype = 1
else
    speartype = 0
x = (global.idealborder[1] + 20)
if (instance_exists(obj_dogeB) && (!obj_dogeB.attacked))
    y = (global.idealborder[2] + 46)
else
{
    y = (global.idealborder[2] + 6)
    gench = choose(0, 1)
    trych = choose(0, 1)
}
hspeed = -4
image_blend = c_white
hit = 0
hitted = 0
con = 0
side = 0
len = 50
wait = 40
eo = 0
credits = 120
rr = choose(0, 1)
if rr
    side = 1
if gench
    con = 1
alarm[0] = (20 + random(10))
