if (con == 1)
{
    alarm[4] = 15
    con = 2
}
if (con == 3)
{
    nap.sprite_index = spr_napstablook_d
    con = 4
    alarm[4] = 20
}
if (con == 5)
{
    global.facechoice = "B"
    global.typer = 5
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_napstablookfriendtrigger_100")
    global.msg[1] = scr_gettext("obj_napstablookfriendtrigger_101")
    global.msg[2] = scr_gettext("obj_napstablookfriendtrigger_102")
    global.msg[3] = scr_gettext("obj_napstablookfriendtrigger_103")
    if (global.flag[36] > 0)
    {
        global.facechoice = "B"
        global.typer = 5
        global.faceemotion = 0
        global.msg[0] = scr_gettext("obj_napstablookfriendtrigger_108")
        global.msg[1] = scr_gettext("obj_napstablookfriendtrigger_109")
        global.msg[2] = scr_gettext("obj_napstablookfriendtrigger_110")
        global.msg[3] = scr_gettext("obj_napstablookfriendtrigger_111")
    }
    scr_regulartext()
    con = 6
}
if (con == 6 && instance_exists(OBJ_WRITER) == 0)
{
    nap.vspeed = -3
    con = 7
    alarm[4] = 30
}
if (con == 8)
{
    global.interact = 0
    global.plot = 117
    instance_destroy()
}
