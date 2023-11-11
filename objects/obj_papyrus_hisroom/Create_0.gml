if (global.flag[67] == 1 || global.flag[7] == 1)
{
    instance_destroy()
    return;
}
dsprite = spr_papyrus_d
usprite = spr_papyrus_u
lsprite = spr_papyrus_l
rsprite = spr_papyrus_r
dtsprite = spr_papyrus_dt
utsprite = spr_papyrus_ut
ltsprite = spr_papyrus_lt
rtsprite = spr_papyrus_rt
myinteract = 0
facing = 0
direction = 270
talkedto = 0
image_speed = 0
fun = false
intro = 0
if (global.flag[88] >= 4)
{
    if (global.flag[337] == 1)
    {
        instance_destroy()
        return;
    }
    else
    {
        sprite_index = spr_papyrus_coolfit_r_pose
        y = 110
        x = 150
        obj_mainchara.y = 150
        obj_mainchara.x = 150
        sprite_index = spr_papyrus_r
        intro = 6
        global.flag[337] = 1
        return;
    }
}
