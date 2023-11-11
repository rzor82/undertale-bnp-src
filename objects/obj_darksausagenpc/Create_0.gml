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
if (scr_enemynpc3() != 1)
    instance_destroy()
if (scr_murderlv() >= 12)
    instance_destroy()
if (room == room_fire_core2)
    sprite_index = spr_astigmatism_npc
if (room == room_fire_core3)
    sprite_index = spr_madjick_npc
if (room == room_fire_core_freebattle)
{
    if (global.flag[7] == 1)
        sprite_index = spr_knightknight_npc
    else
        sprite_index = spr_knightknight_npc_sleep
}
if (room == room_fire_core_warrior)
    sprite_index = spr_finalfroggit_npc
if (room == room_fire_core_center)
    sprite_index = spr_whimsalot_npc
