fun = false
dsprite = sprite_index
usprite = sprite_index
lsprite = sprite_index
rsprite = sprite_index
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
myinteract = 0
facing = 0
direction = 0
talkedto = 0
image_speed = 0
if (global.flag[53] == 1)
    instance_destroy()
if (global.flag[7] == 1 && room == room_tundra_grillby)
    instance_destroy()
if (global.flag[7] == 0 && room == room_tundra_town)
    instance_destroy()
sansmode = 0
