height = 21
bubx[0] = (4 + random(10))
buby[0] = (5 + random(15))
bubx[1] = (4 + random(10))
buby[1] = (5 + random(15))
bubx[2] = (4 + random(10))
buby[2] = (5 + random(15))
siner = 0
w_con = 1
w_timer = 0
pour_index = 0
dsprite = spr_sans_d
usprite = spr_sans_u
lsprite = spr_sans_l
rsprite = spr_sans_r
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
myinteract = 0
facing = 0
direction = 270
talkedto = 0
image_speed = 0
havewater = 0
scr_depth()
w_active = 0
madepud = 0
fakecooler = 0
event_user(2)
if (fakecooler == 0)
{
    if (room == room_fire2)
        height = (21 - global.flag[440])
    else
        height = (21 - global.flag[438])
}
