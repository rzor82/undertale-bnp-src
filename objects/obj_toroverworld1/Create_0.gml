script_execute(scr_depth, 0, 0, 0, 0, 0)
image_speed = 0
dsprite = spr_toriel_d
usprite = spr_toriel_u
lsprite = spr_toriel_l
rsprite = spr_toriel_r
dtsprite = spr_toriel_dt
utsprite = spr_toriel_ut
ltsprite = spr_toriel_lt
rtsprite = spr_toriel_rt
myinteract = 0
facing = 0
phone = 0
fader = 0
if (room == room_basement3 || room == room_basement4)
{
    facing = 2
    direction = 90
    sprite_index = spr_toriel_u
}
if (room == room_basement2)
{
    rsprite = spr_toriel_r_mad
    dtsprite = spr_toriel_dtmad
    rtsprite = spr_toriel_rt_mad
}
