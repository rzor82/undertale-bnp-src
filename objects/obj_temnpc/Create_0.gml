dsprite = spr_temmie_lt
usprite = spr_temmie_rt
lsprite = spr_temmie_lt
rsprite = spr_temmie_rt
dtsprite = spr_temmie_lt
utsprite = spr_temmie_rt
ltsprite = spr_temmie_lt
rtsprite = spr_temmie_rt
myinteract = 0
facing = 0
direction = 180
talkedto = 0
image_speed = 0
if (scr_murderlv() >= 10)
    instance_destroy()
if (x == 145 || x == 205 || x == 450)
    direction = 0
if (room == room_ice_dog)
{
    dsprite = spr_temmie_chang
    usprite = spr_temmie_chang
    lsprite = spr_temmie_chang
    rsprite = spr_temmie_chang
    dtsprite = spr_temmie_chang
    utsprite = spr_temmie_chang
    ltsprite = spr_temmie_chang
    rtsprite = spr_temmie_chang
}
