dsprite = spr_visorblook_d
usprite = spr_visorblook_u
lsprite = spr_visorblook_l
rsprite = spr_visorblook_r
dtsprite = spr_visorblook_d
utsprite = spr_visorblook_u
ltsprite = spr_visorblook_l
rtsprite = spr_visorblook_r
myinteract = 0
facing = 0
direction = 270
talkedto = 0
image_speed = 0
fun = false
if (global.flag[7] == 1)
    instance_destroy()
if (scr_murderlv() >= 10)
    instance_destroy()
