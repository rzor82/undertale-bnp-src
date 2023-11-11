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
con = 0
if (scr_murderlv() >= 8 && global.flag[27] == 0)
{
    if (room == room_water_firepuzzle)
    {
        instance_create((x - 20), y, obj_solidtall)
        instance_create((x + 20), y, obj_solidtall)
        while (y < room_height)
        {
            with (collision_point(x, y, obj_solidsmall, 0, 0))
                instance_destroy()
            instance_create(x, y, obj_magicglass_personal)
            y += 20
        }
        instance_create(x, y, obj_door_s_musfade)
    }
    y = 900
}
if (global.entrance == 24)
{
    global.interact = 1
    con = 20
    visible = false
    obj_mainchara.visible = false
    obj_mainchara.x = x
    obj_mainchara.y = (y - 15)
}
else if ((room != room_water_firepuzzle && room != room_water2 && global.plot < 110) || (room == room_water2 && global.flag[299] == 0))
    instance_destroy()
