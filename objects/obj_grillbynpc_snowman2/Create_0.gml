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
direction = 0
talkedto = 0
image_speed = 0
if (scr_murderlv() >= 6)
    instance_destroy()
if (global.flag[7] == 1)
    sprite_index = spr_fashionsnowman
