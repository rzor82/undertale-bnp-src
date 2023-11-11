buffer -= 1
depth = 600000
if instance_exists(obj_coreobj_parent)
    depth = (obj_coreobj_parent.depth - 1)
if (myinteract == 1 && buffer > 0)
    myinteract = 0
if (myinteract == 1 && global.interact == 0 && instance_exists(readable))
{
    show_debug_message("Redirecting interact to readable")
    with (readable)
        myinteract = 1
    global.interact = 1
    myinteract = 0
}
if (myinteract == 1 && global.interact == 0 && con == 0)
{
    if allow_open
    {
        global.interact = 1
        con = 1
        if (room == room_fire_apron)
        {
            if (global.flag[7] == 0)
                instance_create(0, 0, obj_musfadeout)
        }
        snd_play(snd_elecdoor_open)
        event_user(0)
    }
    else
        con = 42
}
if (con == 1)
{
    side += 2
    if (side >= 20)
    {
        con = 2
        global.interact = 0
        with (s1)
            instance_destroy()
        with (s2)
            instance_destroy()
        if (instance_exists(obj_alphys_npc) && room == room_fire_core_final)
        {
            obj_alphysfollow_event.con = 50
            global.interact = 1
            m = instance_create(0, 0, obj_musfadeout)
        }
    }
}
if (myinteract == 1 && global.interact == 0 && con == 40)
{
    global.interact = 1
    con = 41
}
if (con == 41)
{
    global.interact = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_elevatordoor_215")
    global.msg[1] = scr_gettext("obj_elevatordoor_218")
    global.msg[2] = scr_gettext("obj_elevatordoor_219")
    global.msg[3] = scr_gettext("obj_elevatordoor_220")
    global.msg[4] = scr_gettext("obj_elevatordoor_221")
    global.msg[5] = scr_gettext("obj_elevatordoor_222")
    global.msg[6] = scr_gettext("obj_elevatordoor_223")
    global.msg[7] = scr_gettext("obj_elevatordoor_224")
    if (global.flag[415] == 1)
    {
        global.msg[5] = scr_gettext("obj_elevatordoor_228")
        global.msg[6] = scr_gettext("obj_elevatordoor_229")
        global.msg[7] = scr_gettext("obj_elevatordoor_230")
    }
    global.flag[414] = 1
    if (scr_murderlv() >= 12)
        global.msg[0] = scr_gettext("obj_elevatordoor_234")
    scr_regulartext()
    con = 42
}
if (con == 42 && instance_exists(OBJ_WRITER) == 0)
{
    buffer = 4
    con = 43
    myinteract = 0
    global.interact = (!allow_open)
}
if (con == 43 && myinteract == 1 && global.interact == 0)
{
    global.interact = 1
    global.msg[0] = scr_gettext("obj_elevatordoor_250")
    scr_regulartext()
    con = 42
}
if (con == 50 && myinteract == 1 && global.interact == 0)
{
    global.interact = 1
    global.msg[0] = scr_gettext("obj_elevatordoor_258")
    scr_regulartext()
    con = 42
}
