if (con == 1)
{
    caster_pause(global.currentsong)
    con = 2
    curview = __view_get(1, 0)
    alarm[4] = 30
}
if (con == 3)
{
    global.facing = 0
    __view_set(1, 0, (__view_get(1, 0) + 1))
    if (__view_get(1, 0) > (curview + 60))
        con = 4
}
if (con == 4)
{
    con = 4.1
    alarm[4] = 20
}
if (con == 5.1)
{
    con = 4.2
    rememberxview = __view_get(0, view_current)
    rememberyview = __view_get(1, view_current)
    xdiff = 130
    ydiff = (192 - __view_get(1, view_current))
    __view_set(9, view_current, -4)
    alarm[4] = 12
}
if (con == 4.2)
{
    if (__view_get(0, 0) < 130)
        __view_set(0, 0, (__view_get(0, 0) + (xdiff / 10)))
    if (__view_get(0, 0) > 130)
        __view_set(0, 0, 130)
    if (__view_get(1, 0) < 192)
        __view_set(1, 0, (__view_get(1, 0) + (ydiff / 10)))
    if (__view_get(1, 0) > 192)
        __view_set(1, 0, 192)
    if (__view_get(3, 0) > 120)
        __view_set(3, 0, (__view_get(3, 0) - 12))
    if (__view_get(3, 0) < 120)
        __view_set(3, 0, 120)
    if (__view_get(2, 0) > 160)
        __view_set(2, 0, (__view_get(2, 0) - 16))
    if (__view_get(2, 0) < 160)
        __view_set(2, 0, 160)
}
if (con == 5.2)
{
    con = 5
    alarm[4] = 10
}
if (con == 6)
{
    dummy.sprite_index = spr_dummymad
    caster_play(shock, 1, 0.8)
    con = 6.3
    remx = dummy.x
    remy = dummy.y
    alarm[4] = 60
}
if (con == 6.2)
{
    dummy.x = ((remx - 2) + random(4))
    dummy.y = ((remy - 2) + random(4))
}
if (con == 7.1)
{
    alarm[4] = 30
    con = 6.2
}
if (con == 7.2)
{
    with (dummy)
        event_user(1)
    con = 7
    alarm[4] = 10
}
if (con == 7.3)
{
    con = 6.4
    alarm[4] = 14
}
if (con == 6.4)
{
    if (__view_get(0, view_current) > 0)
        __view_set(0, view_current, (__view_get(0, view_current) - (xdiff / 10)))
    if (__view_get(0, 0) < 0)
        __view_set(0, 0, 0)
    if (__view_get(1, view_current) > rememberyview)
        __view_set(1, view_current, (__view_get(1, view_current) - (ydiff / 10)))
    if (__view_get(1, 0) < rememberyview)
        __view_set(1, 0, rememberyview)
    if (__view_get(3, view_current) < 240)
        __view_set(3, view_current, (__view_get(3, view_current) + 12))
    if (__view_get(3, 0) > 240)
        __view_set(3, 0, 240)
    if (__view_get(2, view_current) < 320)
        __view_set(2, view_current, (__view_get(2, view_current) + 16))
    if (__view_get(2, 0) > 320)
        __view_set(2, 0, 320)
}
if (con == 7.4)
{
    __view_set(9, view_current, 1584)
    con = 6.2
    alarm[4] = 25
}
if (con == 8)
{
    __view_set(1, 0, (__view_get(1, 0) - 6))
    if (__view_get(1, 0) <= (curview - 20))
    {
        con = 7.5
        alarm[4] = 10
    }
}
if (con == 8.5)
{
    global.facing = 2
    dummy.x = 180
    dummy.y = 80
    with (dummy)
    {
        event_user(0)
        event_user(1)
    }
    con = 7.6
    alarm[4] = 16
}
if (con == 8.6)
    con = 9
if (con == 9)
{
    global.msc = 0
    global.facing = 2
    global.facechoice = 0
    global.faceemotion = 0
    dummy.vspeed = 0
    con = 10
    caster_loop(predummy, 0.8, 1)
    global.typer = 130
    if (global.flag[355] == 0)
        global.msg[0] = scr_gettext("obj_dummytrigger_222")
    if (global.flag[355] == 1)
        global.msg[0] = scr_gettext("obj_dummytrigger_223")
    if (global.flag[355] == 2)
        global.msg[0] = scr_gettext("obj_dummytrigger_224")
    global.msg[1] = scr_gettext("obj_dummytrigger_225")
    global.msg[2] = scr_gettext("obj_dummytrigger_226")
    if (global.flag[14] == 0)
    {
        global.msg[3] = scr_gettext("obj_dummytrigger_229")
        global.msg[4] = scr_gettext("obj_dummytrigger_230")
        global.msg[5] = scr_gettext("obj_dummytrigger_231")
        global.msg[6] = scr_gettext("obj_dummytrigger_232")
        global.msg[7] = scr_gettext("obj_dummytrigger_233")
        global.msg[8] = scr_gettext("obj_dummytrigger_234")
        global.msg[9] = scr_gettext("obj_dummytrigger_235")
        global.msg[10] = scr_gettext("obj_dummytrigger_236")
    }
    if (global.flag[14] == 1)
    {
        global.msg[3] = scr_gettext("obj_dummytrigger_241")
        global.msg[4] = scr_gettext("obj_dummytrigger_242")
        global.msg[5] = scr_gettext("obj_dummytrigger_243")
        global.msg[6] = scr_gettext("obj_dummytrigger_244")
        global.msg[7] = scr_gettext("obj_dummytrigger_245")
        global.msg[8] = scr_gettext("obj_dummytrigger_246")
        global.msg[9] = scr_gettext("obj_dummytrigger_251")
        global.msg[10] = scr_gettext("obj_dummytrigger_252")
        global.msg[11] = scr_gettext("obj_dummytrigger_253")
    }
    if (global.flag[14] == 2)
    {
        global.msg[3] = scr_gettext("obj_dummytrigger_257")
        global.msg[4] = scr_gettext("obj_dummytrigger_258")
        global.msg[5] = scr_gettext("obj_dummytrigger_259")
        global.msg[6] = scr_gettext("obj_dummytrigger_260")
        global.msg[7] = scr_gettext("obj_dummytrigger_261")
        global.msg[8] = scr_gettext("obj_dummytrigger_262")
    }
    if (global.flag[14] == 3)
    {
        global.msg[3] = scr_gettext("obj_dummytrigger_267")
        global.msg[4] = scr_gettext("obj_dummytrigger_268")
        global.msg[5] = scr_gettext("obj_dummytrigger_269")
        global.msg[6] = scr_gettext("obj_dummytrigger_270")
        global.msg[7] = scr_gettext("obj_dummytrigger_271")
        global.msg[8] = scr_gettext("obj_dummytrigger_272")
        global.msg[9] = scr_gettext("obj_dummytrigger_273")
        global.msg[10] = scr_gettext("obj_dummytrigger_274")
    }
    if (murder == 1)
    {
        if (global.flag[355] == 0)
            global.msg[0] = scr_gettext("obj_dummytrigger_279")
        if (global.flag[355] == 1)
            global.msg[0] = scr_gettext("obj_dummytrigger_280")
        if (global.flag[355] == 2)
            global.msg[0] = scr_gettext("obj_dummytrigger_281")
        global.msg[1] = scr_gettext("obj_dummytrigger_282")
        global.msg[2] = scr_gettext("obj_dummytrigger_283")
        global.msg[3] = scr_gettext("obj_dummytrigger_284")
        global.msg[4] = scr_gettext("obj_dummytrigger_285")
        global.msg[5] = scr_gettext("obj_dummytrigger_286")
        global.msg[6] = scr_gettext("obj_dummytrigger_287")
        global.msg[7] = scr_gettext("obj_dummytrigger_288")
        global.msg[8] = "* I've NEVER been more mad!!!/"
        global.msg[9] = scr_gettext("obj_dummytrigger_289")
        con = 30
    }
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 1
}
if (con == 10 && instance_exists(OBJ_WRITER) == 0)
{
    caster_free(shock)
    caster_free(predummy)
    snd_play(snd_break2)
    dummy.sprite_index = spr_dummymad_toot
    dummy.image_index = 0
    dummy.image_speed = 0.45
    con = 11
    alarm[4] = 30
}
if (con == 12)
{
    con = 13
    global.battlegroup = 45
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
    alarm[4] = 32
}
if (con == 14)
{
    obj_mainchara.cutscene = false
    __view_set(9, 0, 1584)
    global.interact = 1
    if (global.interact == 0)
        global.interact = 1
    dummy.sprite_index = spr_napstablook_d
    con = 15
    alarm[4] = 15
}
if (con == 15)
{
    global.mercy = 0
    if (global.interact == 0)
        global.interact = 1
}
if (con == 16)
{
    global.border = 0
    global.typer = 5
    global.facechoice = "B"
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_dummytrigger_344")
    global.msg[1] = scr_gettext("obj_dummytrigger_345")
    global.msg[2] = scr_gettext("obj_dummytrigger_346")
    global.msg[3] = scr_gettext("obj_dummytrigger_347")
    global.msg[4] = scr_gettext("obj_dummytrigger_348")
    global.msg[5] = scr_gettext("obj_dummytrigger_349")
    global.msg[6] = scr_gettext("obj_dummytrigger_350")
    if (global.flag[36] == 0)
    {
        global.msg[0] = scr_gettext("obj_dummytrigger_354")
        global.msg[1] = scr_gettext("obj_dummytrigger_355")
        global.msg[2] = scr_gettext("obj_dummytrigger_356")
        global.msg[3] = scr_gettext("obj_dummytrigger_357")
    }
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 1
    global.plot = 116
    greg = 1
    con = 17
}
if (con == 17 && instance_exists(OBJ_WRITER) == 0)
{
    global.interact = 0
    dummy.vspeed = -3
    if (greg > 0)
        greg -= 0.04
    if (dummy.image_alpha == greg)
        solid = 0
    con = 18
    alarm[4] = 30
}
if (con == 19)
{
    with (dummy)
        instance_destroy()
    instance_destroy()
}
if (con == 30)
{
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.stringno == 7)
        {
            dummy.sprite_index = spr_dummymad_toot
            dummy.image_index = 0
            dummy.image_speed = 0.45
        }
    }
    else
    {
        caster_free(-3)
        snd_play(snd_break2)
        instance_create(0, 0, obj_flasher)
        con = 31
        alarm[4] = 2
    }
}
if (con == 32)
{
    with (dummy)
        sprite_index = spr_dummysurprise
    con = 33
    alarm[4] = 45
}
if (con == 34)
{
    global.typer = 130
    global.msc = 0
    global.msg[0] = scr_gettext("obj_dummytrigger_417")
    global.msg[1] = scr_gettext("obj_dummytrigger_418")
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 1
    con = 35
}
if (con == 35 && instance_exists(OBJ_WRITER) == 0)
{
    global.typer = 130
    with (dummy)
        sprite_index = spr_dummyglad
    global.msg[0] = scr_gettext("obj_dummytrigger_427")
    global.msg[1] = scr_gettext("obj_dummytrigger_428")
    global.msg[2] = scr_gettext("obj_dummytrigger_429")
    global.msg[3] = scr_gettext("obj_dummytrigger_430")
    global.msg[4] = scr_gettext("obj_dummytrigger_431")
    global.msg[5] = scr_gettext("obj_dummytrigger_432")
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 1
    con = 36
}
if (con == 36 && instance_exists(OBJ_WRITER) == 0)
{
    con = 37
    global.battlegroup = 93
    global.flag[200] = 204
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
    alarm[4] = 32
}
if (con == 38)
{
    with (dummy)
        instance_destroy()
    obj_mainchara.cutscene = false
    __view_set(9, 0, 1584)
    global.interact = 1
    if (global.interact == 0)
        global.interact = 1
    con = 39
    alarm[4] = 4
}
if (con == 40)
{
    global.mercy = 0
    global.plot = 117
    global.interact = 0
    instance_destroy()
    con = 41
}
