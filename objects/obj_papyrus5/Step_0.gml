if (conversation == 1 && global.interact == 0)
{
    myinteract = 3
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    p2 = instance_create(papyrus.x, papyrus.y, obj_papyrus_actor)
    with (papyrus)
        instance_destroy()
    papyrus = p2
    papyrus.hspeed = 3
    papyrus.sprite_index = papyrus.rsprite
    conversation = 2
    global.plot = (xplot - 1)
}
if (conversation == 2 && instance_exists(obj_papyrus_actor))
{
    if (papyrus.x >= (x - 56))
    {
        papyrus.hspeed = 0
        papyrus.sprite_index = papyrus.rtsprite
        papyrus.image_index = 0
        conversation = 3
        alarm[4] = 20
    }
}
if (conversation == 4)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_papyrus5_209")
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 4.1
}
if (conversation == 4.1 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    papyrus.fun = true
    papyrus.sprite_index = papyrus.shakehead
    papyrus.image_speed = 0.2
    global.msg[0] = scr_gettext("obj_papyrus5_210")
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 4.2
}
if (conversation == 4.2 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    papyrus.fun = false
    papyrus.sprite_index = papyrus.rtsprite
    global.msg[0] = scr_gettext("obj_papyrus5_211")
    global.msg[1] = scr_gettext("obj_papyrus5_212")
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 4.3
}
if (conversation == 4.3 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    papyrus.fun = true
    papyrus.sprite_index = spr_papyrus_bedazzle
    papyrus.image_speed = 0.4
    global.msg[0] = scr_gettext("obj_papyrus5_213")
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 4.4
}
if (conversation == 4.4 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    papyrus.fun = false
    papyrus.sprite_index = papyrus.rtsprite
    global.msg[0] = scr_gettext("obj_papyrus5_214")
    global.msg[1] = scr_gettext("obj_papyrus5_215")
    global.msg[2] = scr_gettext("obj_papyrus5_216")
    global.msg[3] = scr_gettext("obj_papyrus5_217")
    global.msg[4] = scr_gettext("obj_papyrus5_218")
    global.msg[5] = scr_gettext("obj_papyrus5_219")
    global.msg[6] = scr_gettext("obj_papyrus5_220")
    global.msg[7] = scr_gettext("obj_papyrus5_221")
    global.msg[8] = scr_gettext("obj_papyrus5_222")
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 5
}
if (conversation == 5 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno >= 1)
    {
        papyrus.fun = true
        papyrus.image_speed = 0.3
        papyrus.sprite_index = spr_papyrus_mad2
        conversation = 5.1
    }
}
if (conversation == 5.1 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno >= 3)
    {
        papyrus.fun = false
        papyrus.sprite_index = papyrus.dtsprite
        conversation = 5.2
    }
}
if (conversation == 5.2 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno >= 4)
    {
        papyrus.fun = true
        papyrus.image_speed = 0.5
        papyrus.sprite_index = spr_papyrus_cape
        conversation = 5.3
    }
}
if (conversation == 5.3 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno >= 7)
    {
        papyrus.fun = false
        papyrus.sprite_index = papyrus.dtsprite
        conversation = 6
    }
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == 0)
{
    p3 = instance_create(papyrus.x, papyrus.y, obj_papyrus_room)
    with (papyrus)
        instance_destroy()
    papyrus = p3
    global.interact = 0
    conversation = 7
}
if (conversation == 7)
{
    if (obj_mainchara.x > 400 && papyrus.x < 300)
        papyrus.x += 4
}
if (conversation == 9)
{
    global.interact = 1
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    conversation = 10
    alarm[4] = 20
}
if (conversation == 10 && instance_exists(obj_dialoguer))
{
    with (obj_speedrun_tracker)
        geo = 1
}
if (conversation == 11)
{
    global.msc = 0
    instance_create(20, 100, obj_stalkerflowey)
    global.msg[0] = scr_gettext("obj_papyrus5_281")
    if (papyrus.object_index == obj_papyrus_actor || papyrus.talkedto == 0)
        global.msg[1] = scr_gettext("obj_papyrus5_282")
    else
        global.msg[1] = scr_gettext("obj_papyrus5_283")
    p4 = instance_create(papyrus.x, papyrus.y, obj_papyrus_actor)
    with (papyrus)
        instance_destroy()
    papyrus = p4
    papyrus.sprite_index = papyrus.dtsprite
    global.msg[2] = scr_gettext("obj_papyrus5_289")
    global.msg[3] = scr_gettext("obj_papyrus5_290")
    global.msg[4] = scr_gettext("obj_papyrus5_291")
    global.msg[5] = scr_gettext("obj_papyrus5_292")
    global.msg[6] = scr_gettext("obj_papyrus5_293")
    if (global.flag[87] == 1 && (papyrus.object_index == obj_papyrus_actor || papyrus.talkedto == 0))
    {
        global.msg[0] = "WOW!!^1!&YOU DIDN'T EVEN&DO ANYTHING!!!!!/"
        global.msg[1] = "VERY WELL THEN!^2!&THE COOKIE HAS&BEEN CRUMBLED./"
        global.msg[2] = "..^1.&..^1.&...'AHEM'./"
        global.msg[3] = "SEE YOU AT&THE NEXT PUZZLE./%%"
    }
    instance_create(0, 0, obj_dialoguer)
    conversation = 12
}
if (conversation == 12 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.npcdir = 1
    with (papyrus)
        path_start(path_papyrus2, 5, path_action_stop, 0)
    alarm[4] = 60
    conversation = 13
}
if (conversation == 14)
{
    instance_destroy()
    global.interact = 0
}
