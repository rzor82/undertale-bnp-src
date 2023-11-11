if (global.plot >= 24 && jump < 5)
{
    global.typer = 31
    global.faceemotion = 0
    global.facechoice = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_asrielbed_87")
    global.msg[1] = scr_gettext("obj_asrielbed_88")
    global.msg[2] = scr_gettext("obj_asrielbed_89")
    if (global.armor == 64)
    {
        global.typer = 5
        global.msg[0] = "* (Well^1, okay^1, you didn't&  really go to sleep.)/"
        global.msg[1] = "* (You laugh a little^1,&  because you just realized&  you tried to sleep in armor.)/"
        global.msg[2] = "* (You're a pretty&  ridiculous person.)/"
        global.msg[3] = "* (^1.^1.^1.)/"
        global.msg[4] = "* (Anyway...)/%%"
    }
    if (global.flag[7] == 1)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_asrielbed_93")
        global.msg[1] = scr_gettext("obj_asrielbed_94")
    }
    if (scr_murderlv() >= 1)
    {
        global.typer = 89
        global.msg[0] = (((("* " + global.charname) + "..^3.&* ") + global.charname) + "...?/")
        global.msg[1] = "* You can't sleep now^1,&  we still need to&  finish the plan.../"
        global.msg[2] = (("* Wake up^1, " + global.charname) + "^1, come on.../")
        global.msg[3] = "* ^1.^1.^1./"
        global.msg[4] = "* Please...?/%%"
    }
    obj_asriellamp.idealvolume[0] = 0
    obj_asriellamp.idealvolume[1] = 0
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        depth = -999999
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            depth = -9999999
    }
    jump = 5
}
if (jump == 5)
    alarm[2] = 2
if (instance_exists(obj_dialoguer) == 0)
{
    jump = 6
    if (global.flag[45] != 4)
        __background_set(0, 1, c_black)
    __background_set(0, 0, 0x000001)
    if (global.plot < 20)
        __background_set(0, 2, 0x000001)
    global.facing = 3
    obj_mainchara.x = 200
    obj_mainchara.y = 104
    if instance_exists(obj_unfader)
    {
        with (obj_unfader)
            instance_destroy()
    }
    instance_create(0, 0, obj_fader)
    obj_asriellamp.idealvolume[0] = 0
    obj_asriellamp.idealvolume[1] = 1
    if (global.flag[103] == 0 && global.plot < 20)
    {
        global.flag[103] = 1
        instance_create(130, 140, obj_pie_pickup)
    }
    alarm[3] = 60
}
