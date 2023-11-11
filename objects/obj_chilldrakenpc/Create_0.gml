dsprite = spr_chilldrakenpc_walkd
usprite = spr_chilldrakenpc_walku
lsprite = spr_chilldrakenpc_walkl
rsprite = spr_chilldrakenpc_walkr
dtsprite = spr_chilldrakenpc_walkd
utsprite = spr_chilldrakenpc_walku
ltsprite = spr_chilldrakenpc_walkl
rtsprite = spr_chilldrakenpc_walkr
myinteract = 0
facing = 0
direction = 270
talkedto = 0
image_speed = 0
master = 0
timer = -1
chara = -4
stage = 0
con = -1
if (room == room_tundra_turnbeforeteenhangout)
{
    global.flag[15] = 0
    if (global.flag[446] > 1 || global.flag[203] >= 8)
        instance_destroy()
    else if (global.flag[446] == 1)
        con = 20
    else
        con = 0
}
else if (room == room_tundra_teenhangoutroom)
{
    if (global.flag[446] == 2 || scr_murderlv() >= 2)
        instance_destroy()
}
else if (scr_enemynpc1() != 1)
    instance_destroy()
