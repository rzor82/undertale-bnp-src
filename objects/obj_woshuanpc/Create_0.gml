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
if (scr_enemynpc2() != 1)
    instance_destroy()
if (room == room_water_trashzone1 && global.flag[493] >= 9 && global.flag[7] == 0)
    instance_destroy()
