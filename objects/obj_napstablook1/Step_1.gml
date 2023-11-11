script_execute(scr_depth, 0, 0, 0, 0, 0)
if (talkedto == 1 && global.choice == 0 && instance_exists(obj_dialoguer) == 0)
{
    global.battlegroup = 20
    global.flag[200] = 0
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
}
if (global.plot == 10.3)
{
    alarm[4] = 2
    global.plot = 10.35
}
if (global.plot == 10.4 && instance_exists(obj_dialoguer) == 0)
{
    image_alpha -= 0.05
    if (image_alpha < 0.1)
    {
        if (murdererlv1() == 0)
        {
            global.facing = 0
            global.typer = 5
            global.msc = 0
            global.interact = 1
            snd_play(snd_charjoined)
            global.msg[0] = "\\W* (You sense a connection&  coming from \\YNapstablook\\W...)/%%"
            scr_regulartext()
            visible = false
        }
        global.flag[121] = 2
        global.plot = 11
        x -= 500
    }
}
if (global.plot == 11 && instance_exists(obj_dialoguer) == 0)
{
    global.interact = 0
    with (obj_mainchara)
        uncan = 0
    global.border = 0
    global.mercy = 0
    instance_destroy()
}
