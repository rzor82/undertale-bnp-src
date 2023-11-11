if (con == 0 && instance_exists(obj_mainchara))
{
    if (obj_mainchara.x > 120)
    {
        x = mkid2.x
        y = mkid2.y
        move_towards_point(320, 100, 4)
        mkidcoll = instance_create(320, 100, obj_solidsmall)
        mkidcoll.image_yscale = (mkid2.sprite_height / mkidcoll.sprite_height)
        with (mkid2)
        {
            follow = -1
            sprite = rsprite
        }
        con = 1
    }
}
if (con == 1)
{
    with (mkid2)
        sprite = rsprite
    ganer += 0.334
    if instance_exists(mkid2)
    {
        with (mkid2)
        {
            sprite_x = other.x
            sprite_y = other.y
            image_index = other.ganer
            sprite_subimg = image_index
        }
    }
    if (x >= 316)
    {
        global.flag[327] = 0
        with (obj_mkid_actor)
            instance_destroy()
        mkid = instance_create(320, 100, obj_townnpc_monsterkid1)
        mkid.direction = 0
        mkid.image_index = ganer
        with (mkid)
            sprite_index = spr_mkid_rt
        con = 2
    }
}
if (con == 4)
{
    con = 5
    alarm[4] = 120
}
if (con == 5)
{
    if (obj_mainchara.x < 180)
        walkedaway = 1
}
if (con == 6 && instance_exists(OBJ_WRITER) == 0 && global.interact == 0)
{
    unbuffer += 1
    with (obj_mainchara)
        uncan = 1
}
else if (con == 6)
{
    unbuffer = 0
    with (obj_mainchara)
        uncan = 0
}
if ((con == 6 && instance_exists(OBJ_WRITER) == 0 && global.interact == 0 && unbuffer >= 4) || (walkedaway == 1 && instance_exists(OBJ_WRITER) == 0 && global.interact == 0))
{
    with (obj_mainchara)
        uncan = 1
    with (obj_dialoguer)
        instance_destroy()
    with (OBJ_WRITER)
        instance_destroy()
    with (obj_choicer)
        instance_destroy()
    global.interact = 1
    with (mkid)
    {
        fun = true
        scr_npc_watch(0)
    }
    global.facechoice = "A"
    global.typer = 5
    global.msg[0] = scr_gettext("obj_monsterkidtrigger6_192")
    global.msg[1] = scr_gettext("obj_monsterkidtrigger6_193")
    if (global.flag[85] == 1)
        global.msg[1] = scr_gettext("obj_monsterkidtrigger6_195")
    if (walkedaway == 1)
    {
        global.msg[0] = "\\FA* Hey^1, where&  are you going?/"
        global.msg[1] = "\\E3* You wanna see&  Undyne^1, right...?/"
        global.msg[2] = scr_gettext("obj_monsterkidtrigger6_193")
        if (global.flag[85] == 1)
            global.msg[2] = scr_gettext("obj_monsterkidtrigger6_195")
        walkedaway = 2
    }
    scr_regulartext()
    con = 7
}
if (con == 7 || walkedaway == 2)
{
    if instance_exists(OBJ_WRITER)
    {
        if (instance_exists(obj_face_anything_new) && global.facechoice == "A")
            mkid.image_index = obj_face_anything_new.image_index
    }
    else
    {
        alarm[7] = 5
        global.plot = 112
        mkid.fun = true
        mkid.sprite_index = spr_mkid_prostrate
        walkedaway = 3
        con = 8
        global.interact = 0
    }
}
if (con == 10)
{
    global.phasing = 1
    global.interact = 1
    mkid.solid = 0
    obj_mainchara.facing = 1
    global.facing = 1
    obj_mainchara.image_speed = 0.25
    difx = (mkid.x - obj_mainchara.x)
    dify = ((mkid.y - 18) - obj_mainchara.y)
    con = 11
    alarm[4] = 10
}
if (con == 11)
{
    obj_mainchara.x += (difx / 10)
    obj_mainchara.y += (dify / 10)
}
if (con == 12)
{
    con = 13
    alarm[4] = 20
    difx = (345 - obj_mainchara.x)
    dify = (70 - obj_mainchara.y)
}
if (con == 14)
{
    con = 15
    alarm[4] = 10
}
if (con == 15)
{
    obj_mainchara.x += (difx / 10)
    obj_mainchara.y += (dify / 10)
}
if (con == 16)
{
    con = 17
    alarm[4] = 30
    obj_mainchara.image_speed = 0
}
if (con == 18)
{
    mkid.image_speed = 0
    mkid.image_index = 0
    mkid.sprite_index = mkid.rtsprite
    con = 19
    alarm[4] = 20
}
if (con == 20)
{
    side = 1
    ledgewall.x -= 20
    global.facechoice = "A"
    global.msg[0] = scr_gettext("obj_monsterkidtrigger6_272")
    global.msg[1] = scr_gettext("obj_monsterkidtrigger6_273")
    if (scr_murderlv() >= 9 && global.flag[27] == 0)
    {
        global.facechoice = "A"
        global.msg[0] = scr_gettext("obj_monsterkidtrigger6_276")
        global.msg[1] = scr_gettext("obj_monsterkidtrigger6_277")
        if (sidebhappened == 1)
        {
            global.facechoice = "A"
            global.msg[0] = "\\FA\\E4* See^1?&* You can count on&  me to help^1, haha.../"
            global.msg[1] = "\\E6* I.../"
            global.msg[2] = "\\E4* I'll see you&  up ahead^1, dude.../%%"
        }
    }
    scr_regulartext()
    con = 21
    global.phasing = 0
}
if (con == 21)
{
    if instance_exists(OBJ_WRITER)
    {
        if (instance_exists(obj_face_anything_new) && global.facechoice == "A")
            mkid.image_index = obj_face_anything_new.image_index
    }
    else
    {
        mkid.direction = 180
        mkid.fun = false
        mkid.image_speed = 0.25
        mkid.hspeed = -5
        con = 25
        alarm[4] = 12
    }
}
if (con == 26)
{
    mkid.hspeed = 0
    mkid.fun = true
    mkid.image_index = 0
    mkid.image_speed = 0.334
    mkid.sprite_index = spr_mkid_trip_l
    con = 49.2
}
if (con == 49.2)
{
    if (mkid.image_index >= 19)
    {
        mkid.image_index = 0
        mkid.x -= 13
        mkid.sprite_index = mkid.lsprite
        con = 22
        alarm[4] = 25
    }
}
if (con == 23)
{
    mkid.hspeed = -3
    con = 24
}
if (con == 24 && instance_exists(OBJ_WRITER) == 0)
{
    global.facing = 0
    global.plot = 113
    global.flag[91] = 10
    global.interact = 0
    instance_destroy()
}
if (con > 10 && con < 24 && global.interact == 0)
{
    with (obj_speedrun_tracker)
        mkid2 = 1
}
if (con == 149 || (walkedaway == 2 && instance_exists(OBJ_WRITER) == 0 && scr_murderlv() >= 8))
    con = 150
if (con == 150 && instance_exists(OBJ_WRITER) == 0)
    con = 151
if (con == 151 && instance_exists(OBJ_WRITER) == 0)
{
    global.currentsong = caster_load("music/prebattle1.ogg")
    if (played == 0)
    {
        caster_loop(global.currentsong, 1, 0.25)
        played = 1
    }
    image_speed = 0
    if (global.facing != 1)
        global.facing = 1
    if (obj_mainchara.x < (mkid.x - 24))
    {
        global.phasing = 1
        obj_mainchara.hspeed = 3
        obj_mainchara.moving = true
        obj_mainchara.image_speed = 0.25
    }
    else
    {
        con = 152
        deedisdone = 1
        global.phasing = 0
        obj_mainchara.hspeed = 0
        obj_mainchara.moving = false
        obj_mainchara.image_speed = 0
    }
}
if (con == 152 && deedisdone == 1 && instance_exists(OBJ_WRITER) == 0)
{
    image_speed = 0.25
    global.msc = 3018
    global.facechoice = "A"
    global.typer = 5
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
if (con == 101 && instance_exists(OBJ_WRITER) == 0)
{
    fade2 = instance_create(0, 0, obj_musfadeout)
    fade2.fadespeed = 0.02
    global.facechoice = "A"
    global.typer = 5
    global.msg[0] = "\\FA\\E0* There we go^1!&* Perfect^1, right?/"
    global.msg[1] = scr_gettext("obj_monsterkidtrigger6_193")
    if (global.flag[85] == 1)
        global.msg[1] = scr_gettext("obj_monsterkidtrigger6_195")
    scr_regulartext()
    mkid.sprite_index = spr_mkid_prostrate
    con = 102
    walkedaway = 6
}
if (con == 102 && instance_exists(OBJ_WRITER) == 0)
{
    alarm[7] = 5
    global.plot = 112
    mkid.fun = true
    con = 8
    global.interact = 0
}
if (con == 103 && instance_exists(OBJ_WRITER) == 0)
{
    fade3 = instance_create(0, 0, obj_musfadeout)
    fade3.fadespeed = 0.02
    sidebhappened = 1
    global.facechoice = "A"
    global.typer = 5
    global.msg[0] = "\\FA\\E4* A-alright..^1.&* I think this&  will work.../"
    global.msg[1] = "* Climb on my shoulders./%%"
    if (global.flag[85] == 1)
        global.msg[1] = scr_gettext("obj_monsterkidtrigger6_195")
    scr_regulartext()
    mkid.sprite_index = spr_mkid_prostrate
    con = 104
    walkedaway = 5
}
if (con == 104 && instance_exists(OBJ_WRITER) == 0)
{
    alarm[7] = 5
    global.plot = 112
    mkid.fun = true
    con = 8
    global.interact = 0
}
