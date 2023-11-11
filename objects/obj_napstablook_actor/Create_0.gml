script_execute(scr_depth, 0, 0, 0, 0, 0)
dsprite = spr_napstablook_d_headphone
usprite = spr_napstablook_u_headphone
lsprite = spr_napstablook_l_headphone
rsprite = spr_napstablook_r_headphone
dtsprite = spr_napstablook_d_headphone
utsprite = spr_napstablook_u_headphone
ltsprite = spr_napstablook_l_headphone
rtsprite = spr_napstablook_r_headphone
watchmebruh = 0
myinteract = 0
facing = 0
direction = 90
talkedto = 0
image_speed = 0
fun = false
if (global.flag[7] == 1)
{
    direction = 270
    instance_create(216, 122, obj_npc_room)
}
if (global.flag[7] == 0 && room == room_water_blookyard)
    instance_destroy()
if (scr_murderlv() >= 10)
    instance_destroy()
