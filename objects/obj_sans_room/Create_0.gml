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
visor = 0
dont = 0
talkingto = 0
fun = false
if (room == room_tundra8 || room == room_fire_hotdog)
    visor = 1
if (visor == 1)
{
    sprite_index = spr_sans_d_visor
    dsprite = spr_sans_d_visor
    usprite = spr_sans_u_visor
    lsprite = spr_sans_l_visor
    rsprite = spr_sans_r_visor
    dtsprite = spr_sans_d_visor
    utsprite = spr_sans_u_visor
    ltsprite = spr_sans_l_visor
    rtsprite = spr_sans_r_visor
}
if (room == room_water_friendlyhub && global.plot > 117)
    instance_destroy()
if (room == room_tundra6 && global.plot >= 43)
    instance_destroy()
if (room == room_tundra8 && global.plot >= 46)
    instance_destroy()
if (room == room_tundra_iceexit_new && global.plot > 64)
    instance_destroy()
gone = 0
if (room != room_fire_hotellobby)
{
    if (global.flag[413] > 0)
        gone = 1
}
if (global.flag[67] == 1)
    gone = 1
if (global.plot > 200)
    instance_destroy()
murder = 0
if (scr_murderlv() >= 2 && global.flag[27] == 0)
    murder = 1
if (global.flag[203] >= 16)
    murder = 1
if (room == room_tundra6 && murder == 1)
    gone = 1
if (room == room_tundra8 && murder == 1)
    gone = 1
if (room == room_fire_hotellobby)
{
    if (global.flag[413] == 0 || global.plot > 200 || global.flag[7] == 1)
        gone = 1
}
if (gone == 1)
    instance_destroy()
s_click = 0
