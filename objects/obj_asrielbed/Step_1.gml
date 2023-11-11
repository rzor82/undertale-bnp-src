if (jump == 1)
{
    if (obj_mainchara.path_position == 1)
    {
        instance_create(0, 0, obj_unfader)
        alarm[2] = 60
        jump = 2
    }
}
if (jump == 3 && instance_exists(obj_dialoguer) == 0)
{
    if (obj_mainchara.path_position == 1)
    {
        if (global.hp < global.maxhp)
            jump = 98
        else
        {
            global.interact = 0
            myinteract = 0
            jump = 0
            __background_set(0, 2, c_black)
            obj_solidsmall.solid = 1
            global.phasing = 0
        }
    }
}
if (jump == 98)
{
    snd_play(snd_power)
    global.hp = global.maxhp
    global.typer = 5
    global.faceemotion = 0
    global.facechoice = 0
    global.msc = 0
    global.msg[0] = "* (After taking a short nap^1,&  you feel refreshed.)/%%"
    instance_create(0, 0, obj_dialoguer)
    jump = 99
}
if (jump == 99 && instance_exists(obj_dialoguer) == 0)
{
    if (obj_mainchara.path_position == 1)
    {
        global.interact = 0
        myinteract = 0
        jump = 0
        __background_set(0, 2, c_black)
        obj_solidsmall.solid = 1
        global.phasing = 0
    }
}
