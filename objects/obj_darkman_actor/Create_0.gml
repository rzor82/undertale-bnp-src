if (room == room_fire_core3)
    sprite_index = spr_madjick_npc
else if (room == room_fire_core_freebattle)
    sprite_index = spr_knightknight_npc
else if (room == room_fire_core_roadblock)
    sprite_index = spr_finalfroggit_npc
else if (room == room_fire_hland_entrance)
    sprite_index = spr_barricade
else
    sprite_index = spr_darkman_d
if (room == room_fire_hland_entrance)
    depth = (obj_mainchara.depth + 10000)
else
    scr_depth()
dsprite = spr_darkman_d
lsprite = spr_darkman_l
rsprite = spr_darkman_r
usprite = spr_darkman_d
image_speed = 0
mov = 0
fun = false
