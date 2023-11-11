if (dogged == 0)
{
    myinteract = 3
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = "* (There's a cone blocking&  your path forward.)/%%"
    if (global.flag[326] > 6)
        global.msg[0] = "* (Cone blocking the way.)/%%"
    read += 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
else
{
    snd_play(snd_pombark)
    myinteract = 0
    global.interact = 0
}
