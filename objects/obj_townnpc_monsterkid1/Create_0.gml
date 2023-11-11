if (global.flag[327] == 1)
{
    instance_destroy()
    return;
}
dsprite = spr_mkid_d
usprite = spr_mkid_u
lsprite = spr_mkid_l
rsprite = spr_mkid_r
dtsprite = spr_mkid_dt
utsprite = spr_mkid_ut
ltsprite = spr_mkid_lt
rtsprite = spr_mkid_rt
failedtext = 0
givenhint = 0
myinteract = 0
facing = 3
direction = 270
talkedto = 0
image_speed = 0
con = 0
fun = false
gottemlolXD = 0
tempcon = 0
solvedpuzzle = 0
if (room == room_water_undyneyard)
{
    facing = 1
    if (global.plot > 118)
        instance_destroy()
}
if (room == room_tundra_grillby)
{
    if (global.flag[89] != 1 || global.plot > 103)
        instance_destroy()
    else
        global.flag[327] = 0
    fun = true
    sprite_index = spr_mkid_sit
}
if (room == room_water_nicecream)
{
    if (global.flag[354] > 0 || global.plot > 110)
        instance_destroy()
}
if (room == room_water5)
{
    dsprite = spr_mkid_inspecttalk
    usprite = spr_mkid_inspecttalk
    lsprite = spr_mkid_inspecttalk
    rsprite = spr_mkid_inspecttalk
    dtsprite = spr_mkid_inspecttalk
    utsprite = spr_mkid_inspecttalk
    ltsprite = spr_mkid_inspecttalk
    rtsprite = spr_mkid_inspecttalk
    if (global.plot > 108)
        instance_destroy()
}
if (global.plot > 100 && room == room_tundra_town && global.flag[7] == 0)
    instance_destroy()
if (room == room_water2)
{
    if (global.plot > 103)
        instance_destroy()
    else if (global.chapter == 2)
        global.chapter = 3
}
if (room == room_water6)
{
    if (global.plot < 164 || global.flag[7] == 1 || global.flag[98] == 0 || global.flag[98] == 2)
        instance_destroy()
}
if (room == room_water13)
{
    if (global.flag[101] == 1)
        instance_destroy()
}
