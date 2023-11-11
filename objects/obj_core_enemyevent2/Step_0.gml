if (con == 1)
{
    global.interact = 1
    if (global.debug == true || (global.flag[415] == 1 && global.flag[5] >= 51 && global.flag[5] <= 55))
    {
        with (obj_rurusevent_2)
            con = 1
        instance_destroy()
    }
    else
    {
        dm1 = instance_create(130, 90, obj_darkman_actor)
        con = 6
    }
}
if (con == 6 && instance_exists(OBJ_WRITER) == 0)
{
    con = 7
    snd_play(snd_break2)
    alarm[4] = 60
}
if (con == 7)
    global.interact = 1
if (con == 8)
{
    global.mercy = 1
    global.flag[15] = 1
    global.battlegroup = 60
    instance_create(0, 0, obj_battler)
    con = 9
    alarm[4] = 32
}
if (con == 10)
{
    with (obj_darkman_actor)
        instance_destroy()
    global.interact = 1
    global.mercy = 0
    con = 11
    alarm[4] = 20
}
if (con == 11)
    global.interact = 1
if (con == 12)
{
    snd_play(snd_phone)
    global.typer = 5
    global.facechoice = 0
    global.msc = 0
    global.faceemotion = 8
    global.msg[0] = scr_gettext("obj_core_enemyevent2_142")
    global.msg[1] = scr_gettext("obj_core_enemyevent2_143")
    global.msg[2] = scr_gettext("obj_core_enemyevent2_144")
    global.msg[3] = scr_gettext("obj_core_enemyevent2_145")
    global.msg[4] = scr_gettext("obj_core_enemyevent2_146")
    global.msg[5] = scr_gettext("obj_core_enemyevent2_147")
    global.msg[6] = scr_gettext("obj_core_enemyevent2_148")
    if (global.flag[416] == 0)
    {
        global.msg[0] = scr_gettext("obj_core_enemyevent2_152")
        global.msg[1] = scr_gettext("obj_core_enemyevent2_153")
        global.msg[2] = scr_gettext("obj_core_enemyevent2_154")
        global.msg[3] = scr_gettext("obj_core_enemyevent2_155")
        global.msg[4] = scr_gettext("obj_core_enemyevent2_156")
        global.msg[5] = scr_gettext("obj_core_enemyevent2_157")
        global.msg[6] = scr_gettext("obj_core_enemyevent2_158")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == 0)
{
    con = 14
    global.flag[417] = 1
    global.interact = 0
    instance_destroy()
}
