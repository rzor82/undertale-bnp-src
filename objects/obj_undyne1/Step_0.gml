if (con == 1)
{
    obj_mainchara.x -= 3
    global.interact = 1
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.02
    global.currentsong = caster_load("music/undynescary.ogg")
    song2 = caster_load("music/undynetheme.ogg")
    obj_mainchara.cutscene = true
    con = 1.5
    alarm[4] = 10
    originy = __view_get(1, 0)
}
if (con == 2.5)
{
    if (__view_get(1, 0) > 80)
        __view_set(1, 0, (__view_get(1, 0) - 2))
    else if (global.flag[67] != 1)
    {
        papyrus.hspeed = 2
        papyrus.image_speed = 0.25
        con = 2.6
        alarm[4] = 50
    }
    else
    {
        con = 90
        caster_loop(global.currentsong, 0, 1)
        t = instance_create(0, 0, obj_musfadein)
        t.fadespeed = 0.02
        alarm[4] = 240
    }
}
if (con == 3.6)
{
    papyrus.hspeed = 0
    papyrus.image_index = 0
    papyrus.image_speed = 0
    con = 3
    alarm[4] = 40
}
if (con == 4)
{
    global.msc = 0
    caster_loop(global.currentsong, 0, 1)
    t = instance_create(0, 0, obj_musfadein)
    t.fadespeed = 0.02
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_undyne1_154")
    global.msg[1] = scr_gettext("obj_undyne1_155")
    global.msg[2] = scr_gettext("obj_undyne1_156")
    global.msg[3] = scr_gettext("obj_undyne1_157")
    global.msg[4] = scr_gettext("obj_undyne1_158")
    global.msg[5] = scr_gettext("obj_undyne1_159")
    global.msg[6] = scr_gettext("obj_undyne1_160")
    global.msg[7] = scr_gettext("obj_undyne1_161")
    global.msg[8] = scr_gettext("obj_undyne1_162")
    global.msg[9] = scr_gettext("obj_undyne1_163")
    global.msg[10] = scr_gettext("obj_undyne1_164")
    global.msg[11] = scr_gettext("obj_undyne1_165")
    global.msg[12] = scr_gettext("obj_undyne1_166")
    global.msg[13] = scr_gettext("obj_undyne1_167")
    global.msg[14] = scr_gettext("obj_undyne1_168")
    global.msg[15] = scr_gettext("obj_undyne1_169")
    global.msg[16] = scr_gettext("obj_undyne1_170")
    global.msg[17] = scr_gettext("obj_undyne1_171")
    global.msg[18] = scr_gettext("obj_undyne1_172")
    global.msg[19] = scr_gettext("obj_undyne1_173")
    global.msg[20] = scr_gettext("obj_undyne1_174")
    g = instance_create(0, 0, obj_dialoguer)
    g.side = 1
    OBJ_WRITER.y += 155
    con = 80
    minicon = 0
    papx = papyrus.x
}
if (con == 80 && instance_exists(OBJ_WRITER) == 1)
{
    if (minicon == 0)
    {
        if (OBJ_WRITER.stringno == 13 || OBJ_WRITER.stringno == 14)
        {
            if (papyrus.sprite_index == spr_papyrus_r_stark && papyrus.x < (papx + 60))
            {
                papyrus.image_speed = 0.25
                papyrus.x += 1
            }
            else
            {
                papyrus.image_index = 0
                papyrus.image_speed = 0
            }
        }
    }
}
if (con == 80 && instance_exists(OBJ_WRITER) == 0)
{
    undyne.sprite_index = spr_undynea_starkl
    papyrus.hspeed = -0.5
    papyrus.image_speed = 0.25
    con = 80.5
    alarm[4] = 40
}
if (con == 81.5)
{
    papyrus.image_index = 0
    papyrus.hspeed = 0
    papyrus.image_speed = 0
    con = 81
    alarm[4] = 90
}
if (con == 82 && instance_exists(OBJ_WRITER) == 0)
{
    global.msg[0] = scr_gettext("obj_undyne1_217")
    global.msg[1] = scr_gettext("obj_undyne1_218")
    global.msg[2] = scr_gettext("obj_undyne1_219")
    g = instance_create(0, 0, obj_dialoguer)
    g.side = 1
    OBJ_WRITER.y += 155
    con = 5
}
if (con == 5 && instance_exists(OBJ_WRITER) == 0)
{
    global.flag[20] = 3
    papyrus.hspeed = -3
    papyrus.image_speed = 0.25
    con = 5.1
    gg = instance_create(0, 0, obj_musfadeout)
    gg.fadespeed = 0.02
    global.currentsong = song2
}
if (con == 5.1)
{
    if (__view_get(1, 0) < originy)
        __view_set(1, 0, (__view_get(1, 0) + 2))
    else
        con = 5.2
}
if (con == 5.2)
{
    obj_mainchara.cutscene = false
    global.interact = 0
    con = 6
    helltrigger = 0
}
if (con == 6 && helltrigger > 5)
{
    alarm[4] = 4
    con = 6.1
}
if (con == 6.1 && instance_exists(obj_dialoguer))
{
    with (obj_speedrun_tracker)
        sgs = (global.menucoord[0] == 2 ? 2 : 1)
}
if (con == 7.1)
{
    obj_mainchara.cutscene = true
    global.interact = 1
    con = 7.2
    obj_mainchara.x = obj_mainchara.xprevious
    obj_mainchara.y = obj_mainchara.yprevious
}
if (con == 7.2)
{
    if (__view_get(1, 0) > 80)
        __view_set(1, 0, (__view_get(1, 0) - 10))
    else
        con = 8
}
if (con == 8)
{
    global.interact = 1
    instance_create((undyne.x + 10), (undyne.y - 10), obj_cosmeticblcon)
    undyne.sprite_index = spr_undyne_starkd
    snd_play(snd_b)
    con = 9
    alarm[4] = 20
}
if (con == 10)
{
    snd_stop(snd_b)
    caster_loop(global.currentsong, 1, 1)
    con = 11
    alarm[4] = 20
}
if (con == 12)
{
    undyne.vspeed = 0.5
    undyne.image_speed = 0.2
    alarm[4] = 30
    con = 14.6
}
if (con == 14)
{
    undyne.vspeed = 0
    undyne.sprite_index = spr_undyne_throw
    undyne.fun = true
    undyne.image_index = 0
    undyne.image_speed = 0.3334
    con = 14.1
}
if (con == 14.1)
{
    if (undyne.image_index >= 9)
    {
        undyne.image_speed = 0
        undyne.image_index = 9
        alarm[4] = 100
        con = 13.2
    }
}
if (con == 14.2)
{
    undyne.image_index = 10
    undyne.image_speed = 0.035
    con = 14.3
}
if (con == 14.3)
{
    if (undyne.image_index >= 13)
    {
        undyne.image_speed = 0
        undyne.image_index = 13
        alarm[4] = 30
        con = 13.4
    }
}
if (con == 14.4)
{
    undyne.image_index = 9
    undyne.image_speed = -0.5
    con = 14.5
}
if (con == 14.5)
{
    if (undyne.image_index <= 1)
    {
        undyne.sprite_index = spr_undyne_starkd
        undyne.fun = false
        undyne.image_speed = 0
        undyne.image_index = 0
        con = 18
    }
}
if (con == 15.6)
{
    undyne.vspeed = 0
    undyne.image_speed = 0
    con = 15.1
    alarm[4] = 50
}
if (con == 16.1)
{
    undyne.vspeed = 0.5
    undyne.image_speed = 0.2
    alarm[4] = 20
    con = 15.2
}
if (con == 16.2)
{
    undyne.vspeed = 0
    undyne.image_speed = 0
    con = 13
    alarm[4] = 60
}
if (con == 18)
{
    undyne.vspeed = 0
    undyne.image_speed = 0
    alarm[4] = 60
    con = 19
}
if (con == 20)
{
    undyne.vspeed = -2
    undyne.image_speed = 0.2
    alarm[4] = 20
    con = 21
}
if (con == 22)
{
    undyne.vspeed = 0
    undyne.image_speed = 0
    alarm[4] = 60
    con = 23
}
if (con == 24)
{
    d = instance_create(undyne.x, undyne.y, obj_npc_marker)
    d.sprite_index = spr_undyne_starkeye
    d.visible = true
    b = instance_create(0, 0, obj_musfadeout)
    b.fadespeed = 0.01
    con = 25
    snd_play(snd_undynedis)
}
if (con == 25)
{
    if (undyne.image_alpha > 0)
        undyne.image_alpha -= 0.02
    else
        con = 26
}
if (con == 26)
{
    if (d.image_alpha > 0)
        d.image_alpha -= 0.02
    else
        con = 27
}
if (con == 27)
{
    if (__view_get(1, 0) < originy)
        __view_set(1, 0, (__view_get(1, 0) + 2))
    else
        con = 28
}
if (con == 28)
{
    global.currentsong = caster_load("music/mkid.ogg")
    obj_mainchara.cutscene = false
    global.interact = 0
    con = 39
}
if (con == 39)
{
    if (collision_rectangle(60, 100, 80, 900, obj_mainchara, 0, 1) || collision_rectangle(430, 100, 440, 900, obj_mainchara, 0, 1))
    {
        caster_free(-3)
        global.interact = 1
        con = 40
    }
}
if (con == 40)
{
    if (obj_mainchara.y > 276)
    {
        mkid.y = 260
        up = 0
    }
    else
    {
        mkid.y = 286
        up = 1
    }
    with (mkid)
        depth = 900000
    if (obj_mainchara.x < 200)
    {
        left = 1
        mkid.hspeed = -4
        mkid.fun = true
        mkid.sprite_index = mkid.lsprite
    }
    else
    {
        left = 0
        mkid.hspeed = 4
    }
    con = 40.5
    alarm[4] = 28
    if (left == 1)
        alarm[4] = 36
}
if (con == 41.3)
    con = 41.5
if (con == 41.5)
{
    mkid.hspeed = 0
    con = 42
    mkid.image_index = 0
    mkid.image_speed = 0.3
    alarm[4] = 20
}
if (con == 43)
{
    mkid.fun = true
    mkid.image_speed = 0.3
    con = 44
    if (left == 1)
        mkid.sprite_index = spr_mkid_r
    else
        mkid.sprite_index = spr_mkid_l
    alarm[4] = 20
}
if (con == 45)
{
    if (up == 1)
        mkid.sprite_index = spr_mkid_u
    if (up == 0)
        mkid.sprite_index = spr_mkid_d
    con = 46
    alarm[4] = 20
}
if (con == 47)
{
    if (left == 1)
        mkid.sprite_index = spr_mkid_lt
    else
        mkid.sprite_index = spr_mkid_rt
    mkid.myinteract = 3
    global.typer = 5
    global.msc = 0
    global.facechoice = "A"
    if (global.flag[67] != 1)
    {
        global.msg[0] = scr_gettext("obj_undyne1_537")
        global.msg[1] = scr_gettext("obj_undyne1_538")
        global.msg[2] = scr_gettext("obj_undyne1_539")
        global.msg[3] = scr_gettext("obj_undyne1_540")
        global.msg[4] = scr_gettext("obj_undyne1_541")
        global.msg[5] = scr_gettext("obj_undyne1_542")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_undyne1_546")
        global.msg[1] = scr_gettext("obj_undyne1_547")
        global.msg[2] = scr_gettext("obj_undyne1_548")
        global.msg[3] = scr_gettext("obj_undyne1_549")
        global.msg[4] = scr_gettext("obj_undyne1_550")
        global.msg[5] = scr_gettext("obj_undyne1_551")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 47.1
}
if (con == 47.1)
{
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.stringno == 2)
        {
            if (yeah == 0)
            {
                caster_loop(global.currentsong, 0.6, 1)
                yeah = 1
            }
        }
    }
    else
        con = 48
}
if (con == 48 && instance_exists(OBJ_WRITER) == 0)
{
    mkid.hspeed = 6
    mkid.myinteract = 0
    mkid.image_speed = 0.3
    mkid.sprite_index = spr_mkid_r
    con = 48.1
    if (left == 1)
        alarm[4] = 6
    else
        alarm[4] = 16
}
if (con == 49.1)
{
    b = instance_create(0, 0, obj_musfadeout)
    b.fadespeed = 0.01
    mkid.hspeed = 0
    mkid.fun = true
    mkid.image_index = 0
    mkid.image_speed = 0.334
    mkid.sprite_index = spr_mkid_trip_r
    con = 49.2
}
if (con == 49.2)
{
    if (mkid.image_index >= 19)
    {
        mkid.image_index = 0
        mkid.x += 13
        mkid.sprite_index = spr_mkid_r
        con = 49.3
        alarm[4] = 15
    }
}
if (con == 50.3)
{
    mkid.hspeed = 4
    alarm[4] = 30
    con = 49
}
if (con == 50 && instance_exists(OBJ_WRITER) == 0)
{
    global.currentsong = caster_load("music/waterfall.ogg")
    global.interact = 0
    caster_loop(global.currentsong, 0.8, 1)
    if (scr_murderlv() >= 8 && global.flag[27] == 0)
        caster_set_pitch(global.currentsong, 0.15)
    con = 51
    global.plot = 106
    instance_destroy()
}
if (con == 90)
{
}
if (con == 91)
{
    undyne.sprite_index = spr_undyne_starkphone
    global.facechoice = 0
    snd_play(snd_phone)
    global.msc = 0
    global.typer = 5
    global.msg[0] = "* (Ring... ring...)/%%"
    obj_mainchara.y -= 1000
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 1000
    con = 93
}
if (con == 93 && instance_exists(OBJ_WRITER) == 0)
{
    global.facechoice = 0
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_undyne1_154")
    global.msg[1] = "YOU'VE REACHED THE VOICE&MAILBOX FOR THE&GREAT PAPYRUS!/"
    global.msg[2] = "I'M NOT AT THE PHONE&RIGHT NOW^1,&SO^1, PLEASE...!/"
    global.msg[3] = "LEAVE A MESSAGE AT THE&TONE!! BEEP!!!!/%%"
    obj_mainchara.y -= 1000
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 1000
    con = 94
}
if (con == 94 && instance_exists(OBJ_WRITER) == 0)
{
    undyne.sprite_index = spr_undynea_starku
    global.facechoice = 0
    global.msc = 0
    global.typer = 5
    global.msg[0] = "* (Click...)/%%"
    obj_mainchara.y -= 1000
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 1000
    con = 95
}
if (con == 95 && instance_exists(OBJ_WRITER) == 0)
{
    gg = instance_create(0, 0, obj_musfadeout)
    gg.fadespeed = 0.02
    global.currentsong = song2
    con = 5.1
}
