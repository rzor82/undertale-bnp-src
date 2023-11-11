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
papyrustalkedto = 0
direction = 270
talkedto = 0
image_speed = 0
if (room == room_water_dogroom)
{
    if (global.flag[67] == 1 || scr_murderlv() >= 8)
        instance_destroy()
    if (global.flag[67] != 1)
    {
        if (global.plot > 121 && scr_murderlv() < 8)
            instance_create((x + 24), (y - 12), obj_papyrus_room)
    }
}
