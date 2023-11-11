if (con == 1)
{
    if (room == room_fire_core3)
        dm1 = instance_create(143, 100, obj_darkman_actor)
    else
    {
        dm1 = instance_create(120, 100, obj_darkman_actor)
        dm2 = instance_create(180, 100, obj_darkman_actor)
    }
    con = 2
}
if (con == 2)
{
    with (obj_speedrun_tracker)
        madjick = 1
    global.msc = 0
    global.facechoice = 0
    global.typer = 5
    with (obj_mainchara)
    {
        cutscene = true
        if (scr_murderlv() < 1)
        {
            rsprite = spr_mainchara_call
            lsprite = spr_mainchara_call
            usprite = spr_mainchara_call
            dsprite = spr_mainchara_call
        }
        else
            global.facing = 0
    }
    if (global.flag[414] == 0)
    {
        snd_play(snd_phone)
        global.msg[0] = scr_gettext("obj_core_enemyevent_97")
        global.msg[1] = scr_gettext("obj_core_enemyevent_98")
        global.msg[2] = scr_gettext("obj_core_enemyevent_99")
        global.msg[3] = scr_gettext("obj_core_enemyevent_100")
    }
    if (global.flag[414] == 1 && global.flag[415] == 0)
    {
        snd_play(snd_phone)
        global.msg[0] = scr_gettext("obj_core_enemyevent_106")
        global.msg[1] = scr_gettext("obj_core_enemyevent_107")
        global.msg[2] = scr_gettext("obj_core_enemyevent_108")
        global.msg[3] = scr_gettext("obj_core_enemyevent_109")
    }
    if (global.flag[415] == 1 && global.flag[414] == 1)
    {
        snd_play(snd_phone)
        global.msg[0] = scr_gettext("obj_core_enemyevent_116")
        global.msg[1] = scr_gettext("obj_core_enemyevent_117")
        global.msg[2] = scr_gettext("obj_core_enemyevent_118")
        global.msg[3] = scr_gettext("obj_core_enemyevent_119")
    }
    if (global.flag[367] == 1)
        donotcall = 1
    con = 3
    scr_regulartext()
}
if (con == 3 && instance_exists(OBJ_WRITER) == 0)
{
    obj_darkman_actor.vspeed = 3
    con = 4
    alarm[4] = 40
}
if (con == 5)
{
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_core_enemyevent_139")
    instance_create(0, 0, obj_dialoguer)
    con = 6
}
if (con == 6 && instance_exists(OBJ_WRITER) == 0)
{
    con = 7
    snd_play(snd_break2)
    alarm[4] = 30
}
if (con == 8)
{
    global.mercy = 1
    global.flag[15] = 1
    global.battlegroup = 59
    instance_create(0, 0, obj_battler)
    con = 9
    alarm[4] = 32
}
if (con == 10)
{
    with (obj_speedrun_tracker)
        madjick = 0
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
    global.typer = 47
    global.facechoice = 6
    global.msc = 0
    global.faceemotion = 8
    global.msg[0] = scr_gettext("obj_core_enemyevent_182")
    global.msg[1] = scr_gettext("obj_core_enemyevent_183")
    global.msg[2] = scr_gettext("obj_core_enemyevent_184")
    global.msg[3] = scr_gettext("obj_core_enemyevent_185")
    global.msg[4] = scr_gettext("obj_core_enemyevent_186")
    global.msg[5] = scr_gettext("obj_core_enemyevent_187")
    global.msg[6] = scr_gettext("obj_core_enemyevent_188")
    instance_create(0, 0, obj_dialoguer)
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == 0)
{
    with (obj_mainchara)
    {
        cutscene = false
        if (scr_murderlv() < 1)
        {
            rsprite = spr_maincharar
            lsprite = spr_maincharal
            usprite = spr_maincharau
            dsprite = spr_maincharad
        }
    }
    con = 14
    global.plot = 179
    global.interact = 0
    instance_destroy()
}
if (con > 3)
{
    if instance_exists(obj_darkman_actor)
    {
        if (obj_darkman_actor.y > (obj_mainchara.y - 60))
            obj_darkman_actor.vspeed = 0
    }
}
