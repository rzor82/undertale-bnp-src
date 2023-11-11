dsprite = spr_papyrus_d
usprite = spr_papyrus_u
lsprite = spr_papyrus_l
rsprite = spr_papyrus_r
dtsprite = spr_papyrus_dt
utsprite = spr_papyrus_ut
ltsprite = spr_papyrus_lt
rtsprite = spr_papyrus_rt
callspriteindex = 3828
alttext = 0
if (global.flag[337] == 1)
{
    global.flag[337] = 2
    callspriteindex = 4012
    dsprite = spr_papyrus_coolfit_d
    usprite = spr_papyrus_coolfit_u
    lsprite = spr_papyrus_coolfit_l
    rsprite = spr_papyrus_coolfit_r
    dtsprite = spr_papyrus_coolfit_d
    utsprite = spr_papyrus_coolfit_u
    ltsprite = spr_papyrus_coolfit_l
    rtsprite = spr_papyrus_coolfit_r
    alttext = 1
}
myinteract = 0
callsprite = 0
facing = 0
direction = 270
talkedto = 0
image_speed = 0
fun = false
dir = 0
rid = 0
if (global.flag[67] == 1)
{
    instance_destroy()
    return;
}
if (room == room_tundra_town)
{
    dir = 1
    if (global.flag[88] < 4 && global.plot <= 105)
    {
        instance_destroy()
        return;
    }
    if (global.flag[354] == 2 && global.flag[389] == 0)
    {
        instance_destroy()
        return;
    }
    if (global.flag[7] == 1)
    {
        instance_destroy()
        return;
    }
    if (global.flag[389] >= 3)
        instance_create((x - 34), (y - 9), obj_undyne_friendc)
}
if (room == room_water_undyneyard)
{
    d = 0
    if (global.flag[354] < 2)
        d = 1
    if (global.flag[88] < 4)
        d = 1
    if (global.flag[389] > 0)
        d = 1
    if (d == 1)
    {
        instance_destroy()
        return;
    }
}
tempcon = 0
