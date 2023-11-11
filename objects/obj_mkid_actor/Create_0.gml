event_inherited()
global.flag[998] = 1
dsprite = spr_mkid_d
usprite = spr_mkid_u
lsprite = spr_mkid_l
rsprite = spr_mkid_r
dtsprite = spr_mkid_dt
utsprite = spr_mkid_ut
ltsprite = spr_mkid_lt
rtsprite = spr_mkid_rt
goner = 0
xoffset[0] = -2
yoffset[0] = -1
xoffset[1] = 0
yoffset[1] = 0
xoffset[2] = -2
yoffset[2] = 0
xoffset[3] = -4
yoffset[3] = 0
talk_enabled = 1
facechoice = "A"
typer = 5
target = 7
counter = 0
if (room == room_water3)
{
    if (global.flag[124] >= 2)
        instance_destroy()
}
stallcon = 0
con = 0
slide_yoffset = -5
