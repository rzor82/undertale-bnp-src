if (con == 1)
{
    global.interact = 1
    dm1 = instance_create(140, 95, obj_darkman_actor)
    con = 2
    alarm[4] = 30
}
if (con == 2)
    con = 3
if (con == 3)
    con = 4
if (con == 4)
{
    obj_darkman_actor.vspeed = 3
    obj_darkman_actor.image_speed = 0.2
}
if (con == 7)
    global.interact = 1
if (con == 8)
{
    global.mercy = 1
    global.flag[15] = 1
    global.battlegroup = 61
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
    alarm[4] = 40
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
    global.msg[0] = "\\F0* Ring.../"
    global.msg[1] = "\\TS \\E3 \\F6 \\TA %"
    global.msg[2] = "* A-are you okay?/"
    global.msg[3] = "\\E8* I hope that's& the last of them./"
    global.msg[4] = "\\E4* Keep going^1,&  I think we're&  almost there!/"
    global.msg[5] = scr_gettext("obj_core_enemyevent2_147")
    global.msg[6] = scr_gettext("obj_core_enemyevent2_148")
    instance_create(0, 0, obj_dialoguer)
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == 0)
{
    global.flag[335] = 1
    global.interact = 0
    instance_destroy()
}
if (con > 3)
{
    if instance_exists(obj_darkman_actor)
    {
        if (obj_darkman_actor.y > (obj_mainchara.y - 60) && obj_darkman_actor.vspeed > 0)
        {
            obj_darkman_actor.vspeed = 0
            obj_darkman_actor.image_index = 0
            obj_darkman_actor.image_speed = 0
            con = 7
            snd_play(snd_break2)
            alarm[4] = 40
        }
    }
}
