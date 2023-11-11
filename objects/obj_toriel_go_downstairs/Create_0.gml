image_speed = 0.25
dsprite = spr_toriel_d
usprite = spr_toriel_u
lsprite = spr_toriel_l
rsprite = spr_toriel_r
dtsprite = spr_toriel_dt
utsprite = spr_toriel_ut
ltsprite = spr_toriel_lt
rtsprite = spr_toriel_rt
direction = 270
myinteract = 0
movespeed = 6
facing = 3
con = 0
show_debug_message(global.plot)
if (global.plot == 21)
    global.plot = 21.5
else if (global.plot == 19 && global.flag[103] == 0 && global.flag[170] == 0)
{
    global.plot = 19.05
    x = ((room_width - x) - sprite_width)
    hspeed = -6
    con = -1
}
else
    instance_destroy()
clipx = 216
clipy = 136
