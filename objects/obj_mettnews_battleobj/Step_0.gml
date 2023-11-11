b_buffer = 0
if (myinteract == 1 && global.interact == 0 && tangible == 1 && con == 0)
{
    global.interact = 1
    con = 1
    myinteract = 0
}
if (con == 1)
{
    with (obj_mettnews_battleobj)
        b_buffer = 50
    con = 2
    alarm[4] = 33
    global.flag[15] = 1
    global.battlegroup = (69 + bombtype)
    instance_create(0, 0, obj_battler)
}
if (con == 3)
{
    con = 4
    alarm[4] = 12
}
if (con == 4)
{
    visible = false
    global.interact = 1
}
if (con == 5)
{
    con = 90
    global.flag[15] = 0
    global.flag[395] += 1
    anti = 0
    if instance_exists(obj_doomtimer)
    {
        if (obj_doomtimer.dx >= 120)
            anti = 1
    }
    if (obj_mettnewsevent.failure == 1)
        anti = 1
    if (global.flag[395] == 1 && anti == 0)
        con = 7
    if (global.flag[395] == 5 && anti == 0)
        con = 60
    if (global.flag[395] == 6)
        obj_mettnewsevent.con = 160
}
if (con == 7)
{
    global.facechoice = 6
    global.faceemotion = 6
    global.typer = 47
    global.msg[0] = scr_gettext("obj_mettnews_battleobj_199")
    global.msc = 0
    if (bombtype == 1 || bombtype == 2 || bombtype == 4)
    {
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_204")
        global.msg[1] = scr_gettext("obj_mettnews_battleobj_205")
    }
    if (bombtype == 3)
    {
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_209")
        global.msg[1] = scr_gettext("obj_mettnews_battleobj_210")
    }
    if (bombtype == 5)
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_214")
    if (bombtype == 6)
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_218")
    if (global.flag[288] == 1)
    {
        global.faceemotion = 1
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_223")
    }
    con = 90
    instance_create(0, 0, obj_dialoguer)
}
if (con == 60)
{
    obj_mettnews_battleobj.watercancel = 1
    global.facechoice = 6
    global.faceemotion = 6
    global.typer = 47
    ex = 0
    if (ex == 0)
        global.msc = 0
    if (instance_exists(obj_mettnewsevent.newdog) && bombtype != 1)
        ex = 1
    if (instance_exists(obj_mettnewsevent.newwater) && bombtype != 2)
        ex = 2
    if (instance_exists(obj_mettnewsevent.newscript) && bombtype != 3)
        ex = 3
    if (instance_exists(obj_mettnewsevent.newbasketball) && bombtype != 4)
        ex = 4
    if (instance_exists(obj_mettnewsevent.newpresent) && bombtype != 5)
        ex = 5
    if (instance_exists(obj_mettnewsevent.newgame) && bombtype != 6)
        ex = 6
    global.msg[0] = scr_gettext("obj_mettnews_battleobj_246")
    if (ex == 1)
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_249")
    if (ex == 2)
    {
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_252")
        global.msg[1] = scr_gettext("obj_mettnews_battleobj_253")
    }
    if (ex == 3)
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_257")
    if (ex == 4)
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_261")
    if (ex == 5)
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_265")
    if (ex == 6)
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_269")
    if (global.flag[288] == 1)
    {
        global.faceemotion = 1
        global.msg[0] = scr_gettext("obj_mettnews_battleobj_275")
    }
    con = 90
    instance_create(0, 0, obj_dialoguer)
}
if (con == 90 && instance_exists(OBJ_WRITER) == 0)
{
    with (obj_mettnews_battleobj)
        b_buffer = 6
    global.interact = 0
    instance_destroy()
}
if (bombtype == 2)
{
    if (cc == 0)
    {
        cc = 1
        path_start(path_waterglass, 8, path_action_restart, 0)
    }
    if (watercancel == 1)
    {
        path_end()
        if (distance_to_point(360, 300) > 20)
            move_towards_point(360, 300, 5)
        else
            speed = 0
    }
    else
    {
        fade = scr_afterimage_new()
        fade.fadeSpeed = 0.1
    }
}
if (bombtype == 3)
{
    if (cc == 0)
    {
        hspeed = 5
        cc = 1
    }
    if (x < (xstart - 80))
        hspeed = 5
    if (x > xstart)
        hspeed = -5
}
if (bombtype == 4)
{
    if (cc == 0)
    {
        cc = 1
        hspeed = 6
    }
    if (x < (xstart - 80))
        hspeed = 5
    if (x > (xstart + 80))
        hspeed = -5
    siner += 1
    ypl = (sin((siner / 4)) * 6)
    y += ypl
    tangible = 1
}
