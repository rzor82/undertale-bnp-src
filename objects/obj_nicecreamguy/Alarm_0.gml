if (room == room_tundra8)
{
    if (global.flag[60] == 0)
    {
        myinteract = 3
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        mouth = 1
        global.msg[0] = scr_gettext("obj_nicecreamguy_122")
        global.msg[1] = scr_gettext("obj_nicecreamguy_123")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 1
    }
    else
    {
        instance_create(0, 0, obj_golddisplay)
        myinteract = 3
        global.msc = 230
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        global.msg[0] = scr_gettext("obj_nicecreamguy_135")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
}
if (room == room_water_nicecream && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[79] == 0)
    {
        myinteract = 3
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        mouth = 1
        global.msg[0] = scr_gettext("obj_nicecreamguy_152")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 1
    }
    else
    {
        instance_create(0, 0, obj_golddisplay)
        myinteract = 3
        global.msc = 232
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        global.msg[0] = scr_gettext("obj_nicecreamguy_164")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
}
if (room == room_fire_hotelfront_1)
{
    if (global.flag[402] == 1)
    {
        if (global.flag[250] == 0)
        {
            myinteract = 3
            global.msc = 0
            global.typer = 5
            global.facechoice = 0
            global.faceemotion = 0
            mouth = 1
            global.msg[0] = scr_gettext("obj_nicecreamguy_183")
            global.msg[1] = scr_gettext("obj_nicecreamguy_184")
            global.msg[2] = scr_gettext("obj_nicecreamguy_185")
            mydialoguer = instance_create(0, 0, obj_dialoguer)
            conversation = 1
        }
        else
        {
            instance_create(0, 0, obj_golddisplay)
            myinteract = 3
            global.msc = 273
            global.typer = 5
            global.facechoice = 0
            global.faceemotion = 0
            global.msg[0] = scr_gettext("obj_nicecreamguy_197")
            mydialoguer = instance_create(0, 0, obj_dialoguer)
        }
    }
    else
    {
        global.msc = 0
        myinteract = 3
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        if (global.flag[250] >= 1)
            global.msg[0] = scr_gettext("obj_nicecreamguy_211")
        if (global.flag[250] == 0)
        {
            global.msg[0] = scr_gettext("obj_nicecreamguy_215")
            global.msg[1] = scr_gettext("obj_nicecreamguy_216")
            global.msg[2] = scr_gettext("obj_nicecreamguy_217")
            global.msg[3] = scr_gettext("obj_nicecreamguy_218")
            global.msg[4] = scr_gettext("obj_nicecreamguy_219")
            global.msg[5] = scr_gettext("obj_nicecreamguy_220")
            global.flag[250] = 1
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = scr_gettext("obj_nicecreamguy_227")
            if (global.flag[60] <= 10)
            {
                global.msg[1] = scr_gettext("obj_nicecreamguy_230")
                global.msg[2] = scr_gettext("obj_nicecreamguy_231")
            }
            if (global.flag[60] > 10)
                global.msg[1] = scr_gettext("obj_nicecreamguy_234")
            if (global.flag[60] > 40)
                global.msg[1] = scr_gettext("obj_nicecreamguy_236")
        }
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
}
