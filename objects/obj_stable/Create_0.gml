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
open = 0
scr_depth()
mysolid = instance_create(214, 52, obj_solidsmall)
if (global.flag[92] > 0)
    open = 1
if (global.flag[92] > 3)
{
    open = 2
    with (mysolid)
        instance_destroy()
}
con = 0
