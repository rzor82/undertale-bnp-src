if (con == 1)
{
    global.interact = 1
    obj_mainchara.fun = true
    obj_mainchara.image_speed = 0.22
    obj_mainchara.hspeed = 3
    con = 2
    mkid = scr_marker(360, (obj_mainchara.y - 1), spr_mkid_l)
    mkid.fun = true
    mkid.depth = (obj_mainchara.depth - 100000000)
    alarm[4] = 25
}
if (con == 3)
{
    mkid.hspeed = -5
    mkid.myinteract = 0
    mkid.image_speed = 0.3
    con = 4
    alarm[4] = 16
}
if (con == 5)
{
    obj_mainchara.image_speed = 0
    obj_mainchara.hspeed = 0
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.01
    mkid.hspeed = 0
    mkid.image_index = 0
    mkid.image_speed = 0.334
    mkid.sprite_index = spr_mkid_trip_l
    con = 6
}
if (con == 6)
{
    if (mkid.image_index > 2 && mkid.image_index < 4)
    {
        if (!snd_isplaying(snd_getup))
            snd_play(snd_getup)
    }
    if (mkid.image_index >= 6)
    {
        mkid.image_speed = 0
        mkid.image_index = 6
        con = 7
        alarm[4] = 15
    }
}
if (con == 8)
{
    if (scr_murderlv() == 0)
    {
        obj_mainchara.fun = true
        obj_mainchara.image_speed = 0.2
        obj_mainchara.hspeed = 2
    }
    alarm[4] = 14
    con = 9
}
if (con == 10 && (!instance_exists(OBJ_WRITER)))
{
    if (scr_murderlv() == 0)
        scr_pan(2, 0, 12, 0)
    else
        scr_pan(2, 0, 17, 0)
    obj_mainchara.image_speed = 0
    obj_mainchara.hspeed = 0
    global.typer = 5
    global.facechoice = 0
    global.msc = 0
    global.msg[0] = "* Yo^1, don't worry^1!&* I'm okay!/"
    global.msg[1] = "* Give me a second to.../%%"
    mywriter = instance_create(0, 0, obj_dialoguer)
    mywriter.side = 0
    con = 11
}
if (con == 11 && instance_exists(OBJ_WRITER))
{
    if (mkid.image_index >= 7)
        mkid.image_index = 6
}
if (con == 11 && (!instance_exists(OBJ_WRITER)))
{
    con = 12
    mkid.xstart = mkid.x
    alarm[4] = 30
}
if (con == 13)
{
    con = 14
    alarm[4] = 15
}
if (con == 14)
{
    mkid.image_index = 7
    ggg = irandom_range(-2, 2)
    mkid.x = (mkid.xstart + ggg)
}
if (con == 15)
{
    mkid.x = mkid.xstart
    con = 16
    alarm[4] = 30
}
if (con == 17)
{
    mkid.xstart = mkid.x
    con = 18
    alarm[4] = 10
}
if (con == 18)
{
    ggg2 = irandom_range(-4, 4)
    mkid.x = (mkid.xstart + ggg2)
}
if (con == 19)
{
    mkid.x = mkid.xstart
    con = 20
    alarm[4] = 5
}
if (con == 21)
{
    mkid.image_speed = 0.334
    con = 22
}
if (con == 22)
{
    if (mkid.image_index >= 19)
    {
        mkid.image_speed = 0
        mkid.x -= 13
        mkid.sprite_index = spr_mkid_l
        con = 23
        alarm[4] = 15
    }
}
if (con == 23)
{
    con = 24
    mkid.image_index = 0
    mkid.image_speed = 0.3
    alarm[4] = 20
}
if (con == 25)
{
    up = 0
    mkid.fun = true
    mkid.image_speed = 0.3
    con = 26
    mkid.sprite_index = spr_mkid_r
    alarm[4] = 20
}
if (con == 27)
{
    if (up == 1)
        mkid.sprite_index = spr_mkid_u
    if (up == 0)
        mkid.sprite_index = spr_mkid_d
    con = 28
    alarm[4] = 20
}
if (con == 29)
{
    if (up == 0)
    {
        up = 1
        con = 27
    }
    else
        con = 30
}
if (con == 30)
{
    mkid.fun = false
    mkid.image_speed = 0
    mkid.npctalk = 1
    obj_mainchara.fun = false
    global.currentsong = caster_load("music/mkid.ogg")
    caster_loop(global.currentsong, 1, 1)
    mkid.sprite_index = spr_mkid_lt
    global.typer = 5
    global.msc = 0
    global.facechoice = "A"
    global.msg[0] = "\\E3* See^1?&* I got up all&  by myself^1! Haha./"
    global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_80")
    global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_81")
    global.msg[3] = scr_gettext("obj_townnpc_monsterkid1_82")
    global.msg[4] = "\\E0* Well^1, anyway^1!&* Hey, dude!/"
    global.msg[5] = "* I didn't see you&  there^1, I almost&  ran right into you!/"
    global.msg[6] = "\\E3* I guess it's a good&  thing I tripped^1, huh^1?&\\E0* Haha./"
    global.msg[7] = "\\E5* Uh^1, did you move&  in just recently?/"
    global.msg[8] = "\\E0* I not sure if&  we've met yet.../"
    global.msg[9] = "* I'm from Snowdin Town^1,&  it's nice to meet you!/"
    if (scr_murderlv() >= 2)
    {
        global.msg[7] = "\\E0* Uh, dude...?/"
        global.msg[8] = "\\E3* You're acting a bit&  weird^1, you okay?/"
        global.msg[9] = "\\E0* Oh^1! Are you cold^1?&* Head that way^1, you&  can warm up in Snowdin!/"
    }
    global.msg[10] = "* Hope I see you around&  there sometime./"
    global.msg[11] = "\\E3* ... 'cause I'm off to&  buy some Nice Cream^1!&* Haha./"
    global.msg[12] = "\\E0* Later^1, dude!/%%"
    if (scr_murderlv() >= 2)
    {
        global.msg[12] = "\\E5* ... what^1?&* The Nice Cream guy..^1&  isn't even there?/"
        global.msg[13] = "* Yo^1, that's a&  bummer^1, dude.../"
        global.msg[14] = "\\E6* Alright^1, guess&  I'll just head&  back home.../"
        global.msg[15] = "\\E0* Later!/%%"
        alter = 1
    }
    mywriter = instance_create(0, 0, obj_dialoguer)
    mywriter.side = 0
    con = 31
}
if (con == 31)
{
    if (!instance_exists(OBJ_WRITER))
    {
        b = instance_create(0, 0, obj_musfadeout)
        b.fadespeed = 0.025
        mkid.fun = true
        if (obj_mainchara.y < 130)
        {
            mkid.vspeed = 3
            mkid.sprite_index = spr_mkid_d
        }
        else
        {
            mkid.vspeed = -3
            mkid.sprite_index = spr_mkid_u
        }
        mkid.myinteract = 0
        mkid.image_speed = 0.3
        con = 32
        alarm[4] = 6
    }
    else
        mkid.fun = false
}
if (con == 33)
{
    mkid.npctalk = 0
    if (alter == 0)
    {
        if (obj_mainchara.y < 130)
            global.facing = 0
        else
            global.facing = 2
    }
    with (mkid)
    {
        vspeed = 0
        myinteract = 0
        image_speed = 0.35
        if (other.alter == 0)
        {
            hspeed = -5
            sprite_index = spr_mkid_l
        }
        else
        {
            hspeed = 3
            image_speed = 0.25
            sprite_index = spr_mkid_r
        }
    }
    con = 34
    alarm[4] = 10
}
if (con == 35)
{
    if (alter == 0)
        global.facing = 3
    con = 36
}
if (con == 36)
{
    if (mkid.x <= 0 || mkid.x > (room_width + mkid.sprite_width))
    {
        global.facing = 0
        con = 38
        with (mkid)
            instance_destroy()
    }
}
if (con == 38)
{
    if (scr_murderlv() == 0)
    {
        scr_pan(-1, 0, 24, 1)
        con = 39
        alarm[4] = 20
    }
    else
    {
        scr_pan(-1, 0, 34, 1)
        con = 39
        alarm[4] = 30
    }
}
if (con == 40 && (!instance_exists(OBJ_WRITER)))
{
    global.currentsong = caster_load("music/snowy.ogg")
    caster_loop(global.currentsong, 1, 0.95)
    if (scr_murderlv() >= 2 && global.flag[27] == 0)
        caster_set_pitch(global.currentsong, 0.4)
    global.interact = 0
    global.flag[37] = 2
    con = 41
    instance_destroy()
}
