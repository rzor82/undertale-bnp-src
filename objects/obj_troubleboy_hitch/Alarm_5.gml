with (blconwd)
    instance_destroy()
with (blcon)
    instance_destroy()
talked = false
global.mnfight = 2
if (gotgold == 0 && instance_exists(obj_troubleboy_portabie) && progress < 2)
{
    if (mycommand >= 0 && mycommand < 20)
        global.border = 37
    else if (mycommand >= 20 && mycommand < 40)
        global.border = 5
    else if (mycommand >= 40 && mycommand < 80)
        global.border = 18
    else
        global.border = 7
}
else
{
    bepis = 999999
    if (mycommand >= 0 && mycommand < 25)
        global.border = 37
    else if (mycommand >= 25 && mycommand < 50)
        global.border = 5
    else if (mycommand >= 50)
        global.border = 18
}
if (progress == 3)
    progress = 4
