myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (type == 0)
{
    global.msg[0] = scr_gettext("obj_colorlever_77")
    if (global.flag[481] == 3)
        global.msg[0] = scr_gettext("obj_colorlever_81")
    if (global.flag[481] == 2)
    {
        global.flag[481] = 3
        red = 1
        snd_play(snd_noise)
        global.msg[0] = scr_gettext("obj_colorlever_89")
    }
}
if (type == 1)
{
    global.msg[0] = scr_gettext("obj_colorlever_98")
    if (global.flag[482] == 3)
        global.msg[0] = scr_gettext("obj_colorlever_102")
    if (global.flag[482] == 2)
    {
        global.flag[482] = 3
        blu = 1
        snd_play(snd_noise)
        global.msg[0] = scr_gettext("obj_colorlever_110")
    }
}
if (type == 2)
{
    global.msg[0] = scr_gettext("obj_colorlever_119")
    if (global.flag[483] == 3)
        global.msg[0] = scr_gettext("obj_colorlever_123")
    if (global.flag[483] == 2)
    {
        global.flag[483] = 3
        gre = 1
        snd_play(snd_noise)
        global.msg[0] = scr_gettext("obj_colorlever_131")
    }
}
if (type == 3)
{
    global.msg[0] = scr_gettext("obj_colorlever_140")
    if (global.flag[484] == 3)
        global.msg[0] = scr_gettext("obj_colorlever_144")
    if (global.flag[484] == 2)
    {
        global.flag[484] = 3
        yel = 1
        snd_play(snd_noise)
        global.msg[0] = scr_gettext("obj_colorlever_152")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
