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
w = 0
v = 0
unfade = 0
special = false
xxx = global.flag[350] == 1
if (room == room_fire_conveyorlaser || room == room_fire_machinepit)
    visible = false
if (room == room_fire_core_topright)
    sprite_index = spr_shadowman
