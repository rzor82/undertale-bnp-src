if (global.flag[67] == 1 || room != room_tundra_town)
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
con = 0
rid = 0
if (global.plot < 101)
    instance_destroy()
if ((global.flag[88] >= 4 && global.flag[7] == 0) || global.flag[7] == 1)
{
    instance_create(x, y, obj_papyrus_room)
    instance_destroy()
}
if (global.flag[88] != 1)
    instance_destroy()
stepmake = 0
crunchybunchy = 0
