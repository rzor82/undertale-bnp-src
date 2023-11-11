if (con == 0 && switches == 2 && obj_mainchara.x < 390 && obj_mainchara.x > 380 && obj_mainchara.y < 90 && global.interact == 0)
{
    global.facechoice = 0
    global.typer = 5
    global.msc = 0
    global.interact = 1
    snd_play(snd_phone)
    global.msg[0] = scr_gettext("obj_triswitchevent_120")
    global.msg[1] = scr_gettext("obj_triswitchevent_121")
    global.msg[2] = scr_gettext("obj_triswitchevent_122")
    global.plot = 140
    with (obj_mainchara)
    {
        if (scr_murderlv() < 1)
        {
            rsprite = spr_mainchara_call
            lsprite = spr_mainchara_call
            usprite = spr_mainchara_call
            dsprite = spr_mainchara_call
        }
        else
            global.facing = 3
    }
    instance_create(0, 0, obj_dialoguer)
    con = 0.1
    alarm[4] = 28
}
if (con == 1.1 && instance_exists(OBJ_WRITER) == 0)
{
    con = 2
    global.interact = 0
}
if (con == 2 && obj_mainchara.x < 280 && global.interact == 0 && switches < 3 && won == 0 && instance_exists(OBJ_WRITER) == 0)
{
    global.interact = 1
    global.facechoice = 6
    global.faceemotion = 3
    global.typer = 47
    global.msc = 0
    global.msg[0] = scr_gettext("obj_triswitchevent_147")
    global.msg[1] = scr_gettext("obj_triswitchevent_148")
    global.msg[2] = scr_gettext("obj_triswitchevent_149")
    global.msg[3] = scr_gettext("obj_triswitchevent_150")
    global.msg[4] = scr_gettext("obj_triswitchevent_151")
    global.msg[5] = scr_gettext("obj_triswitchevent_152")
    global.plot = 140
    instance_create(0, 0, obj_dialoguer)
    con = 3
}
if (con == 3 || con == 1 || con == 0.1 || con == 1.1)
{
    if instance_exists(OBJ_WRITER)
    {
        if (con == 3 && OBJ_WRITER.stringno == 2)
        {
            if (deltaco == 0)
                deltaco = 1
        }
    }
}
if (con == 3 && instance_exists(OBJ_WRITER) == 0)
{
    con = 4
    global.interact = 0
    with (obj_mainchara)
    {
        if (scr_murderlv() < 1)
        {
            rsprite = spr_maincharar
            lsprite = spr_maincharal
            usprite = spr_maincharau
            dsprite = spr_maincharad
        }
    }
}
if (switches == 3 && con < 4)
{
    won = 1
    deltaco = 1
}
if (won == 1 && obj_mainchara.x < 280 && global.interact == 0 && global.plot < 140)
{
    global.interact = 1
    snd_play(snd_phone)
    global.facechoice = 6
    global.faceemotion = 6
    global.typer = 5
    global.msc = 0
    global.msg[0] = scr_gettext("obj_triswitchevent_213")
    global.msg[1] = scr_gettext("obj_triswitchevent_214")
    global.msg[2] = scr_gettext("obj_triswitchevent_215")
    global.msg[3] = scr_gettext("obj_triswitchevent_216")
    global.msg[4] = scr_gettext("obj_triswitchevent_217")
    global.msg[5] = scr_gettext("obj_triswitchevent_218")
    global.msg[6] = scr_gettext("obj_triswitchevent_219")
    global.plot = 140
    instance_create(0, 0, obj_dialoguer)
    con = 8
    global.plot = 140
}
if (con == 8 && (!instance_exists(obj_dialoguer)))
{
    global.interact = 0
    con = 9
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
}
if (deltaco == 1)
{
    obj_conveyorr.altspeed = 0
    if instance_exists(ff)
    {
        with (ff)
        {
            basic = 3
            image_alpha -= 0.05
        }
        if (ff.image_alpha < 0.06)
        {
            with (ff)
                instance_destroy()
            deltaco = 2
        }
    }
    else
        deltaco = 2
}
