dsprite = spr_sans_d
usprite = spr_sans_u
lsprite = spr_sans_l
rsprite = spr_sans_r
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
scr_depth()
lafftrax = 0
conversation = 0
hspeed = 0.75
global.interact = 1
image_speed = 0.1
hh = instance_create(0, 0, obj_musfadeout)
hh.fadespeed = 0.5
uuu = instance_create(0, 0, obj_walknoise)
y = (obj_mainchara.y - 1)
shakehand = 0
murder = 0
if (scr_murderlv() >= 2)
    murder = 1
gdraw = 0
changed = 0
changed2 = 0
if (global.flag[5] == 69)
    changed = 1
if (global.flag[6] == 1)
    changed2 = 1
