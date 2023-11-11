script_execute(scr_depth, 0, 0, 0, 0, 0)
if (obj_mainchara.x < (x - 40))
{
    if (t == 0)
    {
        alarm[5] = 30
        t = 1
    }
}
else
{
    alarm[5] = 24
    path_speed = 2
    if (obj_mainchara.x > (x - 25))
        path_speed = 5
    if (obj_mainchara.x > (x - 10))
        path_speed = 9
    image_speed = 0.2
}
scr_npcdir(0)
if (path_position == 1)
{
    with (instance_create(x, y, obj_torinteractable5))
        wall = instance_create(x, y, obj_solidtall)
    instance_destroy()
}
if (global.flag[163] == 1)
{
    if (con == 0)
    {
        stall += 1
        if (stall == 10)
            con = 1
    }
    if (con == 1)
    {
        global.interact = 1
        global.typer = 4
        global.facing = 1
        global.facechoice = 1
        global.faceemotion = 1
        image_speed = 0.25
        global.msc = 0
        global.msg[0] = "* No^1, no^1, no^1!&* You must not&  use violence!/"
        global.msg[1] = "\\E2* You are supposed&  to wait until I&  come rescue you./"
        global.msg[2] = "\\E1* Use MERCY to stall&  for time^1, \\E2do&  you understand?/%%"
        instance_create(0, 0, obj_dialoguer)
        con = 2
    }
    if (con == 2 && (!instance_exists(obj_dialoguer)))
    {
        global.facing = 0
        global.interact = 0
        con = 3
    }
    if (con == 1 || con == 2)
        sprite_index = ltsprite
}
