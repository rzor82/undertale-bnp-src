script_execute(scr_depth, 0, 0, 0, 0, 0)
if (instance_exists(OBJ_WRITER) == 0 && myinteract == 4)
{
    if (global.plot < 2)
        global.plot = 2
    global.interact = 5
    global.menuno = 4
    global.menusurfx = 0
    global.menusurfy = -600
    global.menuoutx = 0
    global.menuouty = -600
    myinteract = 5
}
animanim += 0.2
siner += 0.5
if (appear == 1)
{
    snd_play(snd_undynedis)
    appear = 2
}
if (appear == 2)
{
    if (image_alpha < 1)
        image_alpha += 0.05
    else
        image_alpha = 1
}
