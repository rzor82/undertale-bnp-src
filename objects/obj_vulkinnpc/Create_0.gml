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
talkedto = 0
image_speed = 0
var roomname = room_get_name(global.currentroom)
if (room == room_fire_hh_shortcut)
    sprite_index = spr_vulkinnpc_worker
if (room != room_fire_lavalake || room != room_fire_hh_shortcut)
{
    if (scr_enemynpc3() != 1)
        instance_destroy()
}
if (scr_murderlv() >= 12)
    instance_destroy()
fun = false
