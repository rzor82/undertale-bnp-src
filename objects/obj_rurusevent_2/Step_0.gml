if (con == 1)
{
    with (obj_mainchara)
    {
        cutscene = true
        visible = false
    }
    marker = scr_marker(obj_markerA.x, obj_markerA.y, spr_maincharau)
    with (marker)
    {
        vspeed = -3
        image_speed = 0.25
    }
    global.interact = 1
    global.facing = 2
    con = 2
}
else if (con == 2)
{
    if (marker.y <= 120)
    {
        marker.y = 120
        marker.vspeed = 0
        marker.image_speed = 0
        marker.image_index = 0
        snd_play(snd_impact)
        wall = instance_create(__view_get(0, 0), 0, obj_solidlong)
        with (wall)
        {
            y = ((__view_get(1, 0) + __view_get(3, 0)) - (sprite_height * 2))
            other.wall_visual = scr_marker(x, y, spr_pixblk)
            other.wall_visual.image_xscale = (sprite_width * 2)
            other.wall_visual.image_yscale = (sprite_height * 2)
            with (other.wall_visual)
                scr_depth()
        }
        caster_free(global.currentsong)
        alarm[4] = 30
        con = 3
    }
    else
        global.interact = 1
}
else if (con == 4)
{
    global.typer = 5
    draw_set_alpha(1)
    global.msg[0] = scr_gettext("obj_phonecall_room_190")
    global.msg[1] = scr_gettext("obj_phonecall_room_191")
    global.msg[2] = "* N-not this agai-\\T0 \\E0 %"
    scr_anyface_dialogue(3, 0, "X", "Y", -40, 20)
    global.msg[4] = "%%"
    snd_play(snd_phone)
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    con = 5
}
else if (con == 5 && (!instance_exists(obj_dialoguer)))
{
    snd_play(snd_rurus_appear)
    with (instance_create(x, y, obj_rurus_appear))
        depth = (other.depth - 1)
    con = 5.5
}
else if (con == 5.5 && ((!instance_exists(obj_rurus_appear)) || obj_rurus_appear.rect_width <= 0))
{
    with (obj_rurus_appear)
        instance_destroy()
    alarm[4] = 20
    show = 1
    con = 6
}
else if (con == 7)
{
    global.typer = 124
    caster_loop(mus_rurus, 1, 1.1)
    global.msg[0] = "\\E4* Geh ha ha.../"
    global.msg[1] = "\\E3* Thoust really think that&  was all I hadst!?/"
    global.msg[2] = "\\W\\K0\\E1* \\K1WRONGE^1!\\K0&* It's time for you to&  feel my \\YReale Powere\\W!/"
    global.msg[3] = "\\K0\\E2* Behold^1!&* My \\K1ULTIMATE\\K0 Puzzle!/%%"
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    con = 8
}
else if (con == 8 && (!instance_exists(obj_dialoguer)))
{
    global.facing = 1
    snd_play(snd_heal_c)
    instance_create(0, 0, obj_flasher)
    marker.sprite_index = spr_maincharar
    for (i = 100; i <= 200; i += 10)
    {
        with (instance_create(i, 0, obj_bluelaser_o))
        {
            blue = 2
            hspeed = 0
            special = true
            y = (-sprite_height)
            rememberhspeed = 0
            depth = (other.depth - 1)
        }
    }
    x -= (sprite_width * 2.5)
    marker.x = 80
    alarm[4] = 45
    con = 9
}
else if (con == 10)
{
    global.typer = 124
    global.msg[0] = "\\K0\\E1* \\K1HAVE AT YOU!\\K0/%%"
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    with (obj_dialoguer)
        depth = (other.depth - 2)
    with (OBJ_WRITER)
        depth = (other.depth - 3)
    con = 11
}
else if (con == 11 && (!instance_exists(obj_dialoguer)))
{
    obj_mainchara.visible = true
    obj_mainchara.x = marker.x
    obj_mainchara.y = marker.y
    marker.visible = false
    global.interact = 0
    global.flag[17] = 1
    con = 12
}
else if (con == 12 && obj_mainchara.x >= 215)
{
    caster_free(mus_rurus)
    snd_play(snd_dumbvictory)
    global.interact = 1
    with (obj_mainchara)
    {
        other.marker.x = x
        other.marker.y = y
        visible = false
    }
    marker.visible = true
    alarm[4] = 30
    con = 13
}
else if (con == 14)
{
    with (obj_bluelaser_o)
        instance_destroy()
    marker.sprite_index = spr_maincharal
    con = 15
}
else if (con == 15)
{
    if (x < remx)
        x += 3
    else
        x = remx
    with (marker)
    {
        scr_depth()
        image_speed = 0.25
        if (x > xstart)
            x -= 3
        else if (y < 120)
        {
            if (sprite_index != spr_maincharad)
            {
                sprite_index = spr_maincharad
                image_index = 0
            }
            y += 3
        }
        else
        {
            if (sprite_index == spr_maincharad)
                y = 120
            sprite_index = spr_maincharau
            image_speed = 0
            image_index = 0
            if (other.x == other.remx)
                other.con = 16
        }
    }
}
else if (con == 16 && (!instance_exists(OBJ_WRITER)))
{
    global.typer = 124
    global.msg[0] = "\\E1* .../"
    global.msg[1] = "\\E6* ..................../"
    global.msg[2] = "\\E5* Ahhh.../"
    global.msg[3] = "\\E5* Ahh... Ha...^1!&* Ha ha ha^1!&* Gullible worm!/"
    global.msg[4] = "\\E5* That wasn'tst REALLY my&  ultimate puzzle!/"
    global.msg[5] = "\\E4* I have a wayst better&  one right..^1. \\E4here!/%%"
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    con = 17
}
else if (con == 17 && (!instance_exists(OBJ_WRITER)))
{
    global.typer = 5
    global.msg[0] = "\\F0* Ring.../"
    global.msg[1] = "\\TS \\E3 \\F6 \\TA %"
    global.msg[2] = "* Can..^1.&* Can we see it?/"
    scr_anyface_dialogue(3, 0, "X", "Y", -40, 20)
    global.msg[4] = "%%"
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    con = 18
}
else if (con == 18)
{
    if instance_exists(OBJ_WRITER)
    {
        if (!rung)
        {
            snd_play(snd_phone)
            rung = 1
        }
    }
    else if (!instance_exists(OBJ_WRITER))
        con = 19
}
else if (con == 19 && (!instance_exists(OBJ_WRITER)))
{
    global.typer = 124
    global.msg[0] = "\\E5* No/%%"
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    con = 20
}
else if (con == 20)
{
    global.facing = 0
    if instance_exists(OBJ_WRITER)
    {
        if (!rise)
        {
            alarm[4] = 150
            wall_visual.vspeed = 5
            wall.vspeed = 5
            vspeed = -5
            rise = 1
        }
    }
    if ((y + sprite_height) < __view_get(1, 0))
        con = 21
}
else if (con == 21)
{
    caster_loop(global.currentsong, 1, 1)
    obj_mainchara.x = marker.x
    obj_mainchara.y = marker.y
    with (obj_mainchara)
    {
        cutscene = false
        visible = true
    }
    with (wall_visual)
        instance_destroy()
    with (OBJ_WRITER)
        instance_destroy()
    with (marker)
        instance_destroy()
    with (wall)
        instance_destroy()
    global.flag[417] = 1
    global.flag[415] = 2
    global.flag[17] = 0
    global.interact = 0
    global.facing = 0
    instance_destroy()
}
