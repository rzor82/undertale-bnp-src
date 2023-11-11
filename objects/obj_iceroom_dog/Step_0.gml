if (battlecon == 0)
{
    if (myinteract == 1)
    {
        if (!instance_exists(obj_dialoguer))
        {
            global.interact = 1
            alarm[0] = 1
            myinteract = 2
        }
    }
    if (myinteract == 3)
    {
        if (!instance_exists(mydialoguer))
        {
            global.interact = 0
            myinteract = 0
        }
    }
}
if (battlecon == 1)
{
    global.interact = 1
    global.battlegroup = 200
    b = instance_create(0, 0, obj_battler)
    b.claptimer = 4
    battlecon = 2
}
if (battlecon == 2 && (!instance_exists(obj_battler)))
{
    global.interact = 1
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("SCR_TEXT_5550")
    global.msg[1] = scr_gettext("SCR_TEXT_5551")
    global.msg[2] = scr_gettext("SCR_TEXT_5552")
    global.msg[3] = scr_gettext("SCR_TEXT_5553")
    global.msg[4] = scr_gettext("SCR_TEXT_5554")
    global.msg[5] = scr_gettext("SCR_TEXT_5555")
    global.msg[6] = scr_gettext("SCR_TEXT_5556")
    global.msg[7] = scr_gettext("SCR_TEXT_5557")
    instance_create(0, 0, obj_dialoguer)
    battlecon = 3
}
if (battlecon == 3 && (!instance_exists(obj_dialoguer)))
{
    caster_set_volume(global.currentsong, 1)
    caster_resume(global.currentsong)
    global.interact = 0
    battlecon = 0
}
if (battlecon > 0)
    global.interact = 1
