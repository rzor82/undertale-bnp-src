if (con == 0 && global.interact == 0)
{
    if place_meeting(x, y, obj_mainchara)
    {
        obj_mainchara.hspeed = -3
        obj_mainchara.image_speed = 0.25
        global.facing = 3
        global.interact = 1
        con = 1
    }
}
if (con == 1)
{
    obj_mainchara.image_speed = 0.25
    if (room == room_water_bhouse_exit)
    {
        if (obj_mainchara.x < 170)
        {
            obj_mainchara.hspeed = 0
            alarm[0] = 20
            con = 3
        }
    }
    else if (obj_mainchara.x < 410)
    {
        obj_mainchara.hspeed = 0
        alarm[0] = 20
        con = 3
    }
}
if (con == 4)
{
    if (room == room_water_bhouse_exit)
        cozy = scr_marker((obj_mainchara.x + 10), 137, spr_mainchara_clothes_onesie)
    else
        cozy = scr_marker((obj_mainchara.x + 10), 153, spr_mainchara_clothes_cozy)
    with (cozy)
    {
        vspeed = -5
        gravity = 0.25
        depth = (obj_mainchara.depth - 1)
    }
    secret = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_mainchara_disapprove)
    with (secret)
    {
        image_speed = 0.125
        depth = obj_mainchara.depth
    }
    snd_play(snd_clothes_yeet)
    if (room == room_water_bhouse_exit)
    {
        global.flag[227] = 1
        with (obj_mainchara)
        {
            dsprite = spr_maincharad_cozy
            lsprite = spr_maincharal_cozy
            rsprite = spr_maincharar_cozy
            usprite = spr_maincharau_cozy
            disable_run = 1
            visible = false
        }
    }
    else
    {
        global.flag[227] = 0
        with (obj_mainchara)
        {
            dsprite = spr_maincharad
            lsprite = spr_maincharal
            rsprite = spr_maincharar
            usprite = spr_maincharau
            disable_run = 0
            visible = false
        }
    }
    alarm[0] = 60
    con = 5
}
if (con == 5)
{
    with (cozy)
    {
        image_angle += 6
        if (room == room_water_bhouse_exit)
        {
            if (y > 148)
                instance_destroy()
        }
        else if (y > 163)
            instance_destroy()
    }
}
if (con == 6)
{
    with (secret)
        instance_destroy()
    with (obj_mainchara)
        visible = true
    obj_mainchara.hspeed = -3
    obj_mainchara.image_speed = 0.25
    con = 7
    alarm[0] = 25
}
if (con == 8)
{
    obj_mainchara.hspeed = 0
    obj_mainchara.image_speed = 0
    global.facing = 0
    global.interact = 0
    con = 0
}
