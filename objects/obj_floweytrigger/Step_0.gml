if (conversation == 1 && (!instance_exists(OBJ_WRITER)))
{
    if instance_exists(obj_cosmeticblcon)
        instance_destroy(obj_cosmeticblcon)
    obj_floweytalker1.depth = obj_mainchara.depth
    global.interact = 3
    alarm[0] = 1
    conversation = 2
    instance_create(0, 0, obj_fader)
}
if (conversation == 3 && instance_exists(obj_torface))
    conversation = 3.5
if (conversation == 3.5 && instance_exists(obj_torface) == 0)
{
    room_persistent = false
    global.specialbattle = 0
    obj_toroverworld1.direction = 90
    obj_toroverworld1.speed = 2
    alarm[3] = 15
    conversation = 4
}
if (conversation == 20 && instance_exists(OBJ_WRITER) == 0)
{
    mus = instance_create(0, 0, obj_musfadeout)
    global.interact = 1
    visible = false
    flow = obj_floweytalker1
    with (flow)
        visible = false
    flow_m = scr_marker(flow.x, flow.y, spr_floweysink)
    with (flow_m)
        scr_depth()
    flow_m.image_speed = 0.25
    conversation = 21
}
if (conversation == 21 && instance_exists(OBJ_WRITER) == 0)
{
    if (flow_m.image_index >= 5)
    {
        flow_m.visible = false
        conversation = 21.2
        alarm[4] = 50
    }
}
if (conversation == 22.2 && instance_exists(OBJ_WRITER) == 0)
{
    global.plot = 1
    with (flow_m)
        instance_destroy()
    with (mus)
        instance_destroy()
    caster_free(global.currentsong)
    conversation = 23
}
if (conversation == 23)
{
    temptor = scr_marker(146, (__view_get(1, 0) - 58), spr_toriel_d)
    temptor.image_speed = 0.25
    temptor.vspeed = 2
    global.currentsong = caster_load("music/toriel.ogg")
    caster_loop(global.currentsong, 0.7, 0.86)
    conversation = 24
}
if (conversation == 24)
{
    with (temptor)
        scr_depth()
    if (temptor.y >= 258)
    {
        faketor = 1
        temptor.image_index = 0
        temptor.speed = 0
        temptor.image_speed = 0
        conversation = 25
        alarm[2] = 30
    }
}
if (conversation == 50)
{
    if (flow_p.image_index == 0)
    {
        with (flow_p)
        {
            image_speed = 0
            instance_destroy()
        }
        with (flow)
            visible = true
        conversation = 55
    }
}
if (conversation == 55)
{
    other.x = other.xprevious
    other.y = other.yprevious
    global.interact = 1
    if (obj_mainchara.x > (obj_floweytalker1.x + 40))
        global.facing = 3
    if (obj_mainchara.x < (obj_floweytalker1.x - 40))
        global.facing = 1
    if (alter == 0)
    {
        ossafe_ini_open("undertale.ini")
        g = ini_read_real("Flowey", "Met1", 0)
        truename = ini_read_real("Flowey", "truename", 0)
        IK = ini_read_real("Flowey", "IK", 0)
        NK = ini_read_real("Flowey", "NK", 0)
        global.currentsong = caster_load("music/flowey.ogg")
        if (YesHeDid > 0)
            caster_loop(global.currentsong, 1, 0.8)
        else if (YesHeDid >= 3)
            caster_loop(global.currentsong, 1, 0.6)
        else
            caster_loop(global.currentsong, 1, 1)
        global.typer = 9
        global.facechoice = 2
        global.faceemotion = 0
        global.msc = 200
        conversation = 1
        spec = 0
        if (g > 1)
        {
            global.msc = 0
            global.msg[0] = scr_gettext("obj_floweytrigger_327")
        }
        else if (g == 1)
        {
            global.msc = 0
            global.msg[0] = scr_gettext("obj_floweytrigger_316")
            global.msg[1] = scr_gettext("obj_floweytrigger_317")
            global.msg[2] = scr_gettext("obj_floweytrigger_318")
            global.msg[3] = scr_gettext("obj_floweytrigger_319")
            global.msg[4] = scr_gettext("obj_floweytrigger_320")
            global.msg[5] = scr_gettext("obj_floweytrigger_321")
            global.msg[6] = scr_gettext("obj_floweytrigger_322")
        }
        if (NK > 0 || IK > 0 || truename > 0)
            spec = 1
        if (spec == 1)
        {
            global.msc = 0
            ini_write_real("Flowey", "Alter", 1)
            global.msg[0] = scr_gettext("obj_floweytrigger_338")
            if (truename == 1)
            {
                global.msg[0] = scr_gettext("obj_floweytrigger_342")
                global.msg[1] = scr_gettext("obj_floweytrigger_343")
                global.msg[2] = scr_gettext("obj_floweytrigger_344")
            }
            if (IK > 0)
            {
                global.msg[0] = scr_gettext("obj_floweytrigger_348")
                global.msg[1] = scr_gettext("obj_floweytrigger_349")
                global.msg[2] = scr_gettext("obj_floweytrigger_350")
                global.msg[3] = scr_gettext("obj_floweytrigger_351")
                global.msg[4] = scr_gettext("obj_floweytrigger_352")
                global.msg[5] = scr_gettext("obj_floweytrigger_353")
            }
            if (NK > 0)
            {
                global.msg[0] = scr_gettext("obj_floweytrigger_357")
                global.msg[1] = scr_gettext("obj_floweytrigger_358")
                global.msg[2] = scr_gettext("obj_floweytrigger_359")
                global.msg[3] = scr_gettext("obj_floweytrigger_360")
                global.msg[4] = scr_gettext("obj_floweytrigger_361")
                global.msg[5] = scr_gettext("obj_floweytrigger_362")
                global.msg[6] = scr_gettext("obj_floweytrigger_363")
            }
            conversation = 19
            alarm[4] = 5
        }
        if (YesHeDid != 0)
        {
            global.msc = 0
            global.msg[0] = "\\EA* ...../"
            global.msg[1] = "\\EB* Did you just..^1.&* Right after I.../"
            global.msg[2] = "\\EA* ........./"
            global.msg[3] = "\\K0\\ED* I'm \\K1NOT\\K0 going to&  play into this./"
            global.msg[4] = "\\K0\\EC* When you want to&  take things \\K1seriously\\K0.../"
            global.msg[5] = "\\EB* ... You know where&  to find me./%%"
            if (YesHeDid > 1)
            {
                ossafe_ini_open("undertale.ini")
                M1 = ini_read_real("BecameAsriel", "YesHeDid", 0)
                ini_write_real("BecameAsriel", "YesHeDid", (M1 + 1))
                ossafe_ini_close()
                ossafe_savedata_save()
                global.msg[0] = "\\EA* ........./"
                global.msg[1] = "\\K1\\EB* Go to hell./%%"
            }
            conversation = 19
            alarm[4] = 5
        }
        ini_write_real("Flowey", "Met1", (g + 1))
        ossafe_ini_close()
        ossafe_savedata_save()
        if (!instance_exists(obj_dialoguer))
            instance_create(0, 0, obj_dialoguer)
    }
    else
    {
        global.plot = 1
        conversation = 23
    }
}
