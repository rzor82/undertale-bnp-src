if (conversation == 1)
{
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.5
    global.currentsong = caster_load("music/papyrus.ogg")
    caster_loop(global.currentsong, 0.6, 1)
    myinteract = 3
    global.msc = 0
    global.typer = 19
    global.facechoice = 0
    global.faceemotion = 0
    global.interact = 1
    papyrus.sprite_index = spr_papyrus_lt_mad
    sans.sprite_index = sans.ltsprite
    obj_mainchara.cutscene = true
    camera = __view_get(0, 0)
    global.msg[0] = "\\K0\\K1AHA!!^1!\\K0&HERE THEY&COME NOW!!/%%"
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 1.5
}
if (conversation == 1.5 && instance_exists(OBJ_WRITER) == 0)
{
    if (__view_get(0, 0) < (camera + 119))
        __view_set(0, 0, (__view_get(0, 0) + 3))
    else
        conversation = 2
}
if (conversation == 2 && instance_exists(OBJ_WRITER) == 0)
{
    conversation = 3
    alarm[4] = 10
}
if (conversation == 4)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 4
    global.interact = 1
    global.msg[0] = scr_gettext("obj_papyrus7_156")
    global.msg[1] = scr_gettext("obj_papyrus7_157")
    global.msg[2] = scr_gettext("obj_papyrus7_158")
    if (global.facing != 1)
    {
        global.msg[1] = "THIS IS YOUR FINAL&AND MOST..^1.&\\E1DANGEROUS.../"
        global.msg[2] = "\\E3WHY ARE YOU&LOOKING OVER&THERE...?/"
        global.msg[3] = "\\K0\\E4\\K1'AHEM'\\K0!/"
        global.msg[4] = scr_gettext("obj_papyrus7_158")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 6
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.sprite_index = spr_papyrus_behold
    dtrapa = instance_create((x + 20), y, obj_dtrapfire)
    dcannon = scr_marker((x + 170), 240, spr_dtrapcannon)
    dcannon.vspeed = -0.7
    with (dcannon)
        depth = 4000
    dspear1 = scr_marker((x + 100), 310, spr_dtrapspear)
    dspear1.image_yscale = -1
    dspear1.vspeed = -0.9
    with (dspear1)
        depth = 4000
    dspear2 = scr_marker((x + 100), -60, spr_dtrapspear)
    dspear2.vspeed = 0.9
    dspike = scr_marker((x + 20), -100, spr_dtrapmace)
    dspike.vspeed = 1.2
    ddog = scr_marker((x + 170), -90, spr_dtrapdog)
    ddog.vspeed = 1.2
    ddog.image_speed = 0.1
    conversation = 6.1
    alarm[4] = 60
}
if (conversation == 7.1)
{
    obj_npc_marker.vspeed = 0
    conversation = 7
    alarm[4] = 30
}
if (conversation == 8)
{
    papyrus.sprite_index = spr_papyrus_lt_mad
    global.msg[0] = scr_gettext("obj_papyrus7_194")
    global.msg[1] = scr_gettext("obj_papyrus7_195")
    global.msg[2] = scr_gettext("obj_papyrus7_196")
    global.msg[3] = scr_gettext("obj_papyrus7_197")
    global.msg[4] = scr_gettext("obj_papyrus7_198")
    global.msg[5] = scr_gettext("obj_papyrus7_199")
    global.msg[6] = scr_gettext("obj_papyrus7_200")
    global.msg[7] = scr_gettext("obj_papyrus7_201")
    global.msg[8] = scr_gettext("obj_papyrus7_202")
    global.msg[9] = scr_gettext("obj_papyrus7_203")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 9
}
if (conversation == 9 && instance_exists(OBJ_WRITER) == 0)
{
    alarm[4] = 120
    conversation = 10
}
if (conversation == 11)
{
    papyrus.sprite_index = papyrus.rtsprite
    sans.sprite_index = sans.dtsprite
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_papyrus7_221")
    global.msg[1] = scr_gettext("obj_papyrus7_222")
    scr_papface(2, 1)
    global.msg[3] = scr_gettext("obj_papyrus7_224")
    global.msg[4] = scr_gettext("obj_papyrus7_225")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 12
}
if (conversation == 12 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.sprite_index = papyrus.ltsprite
    sans.sprite_index = sans.ltsprite
    conversation = 13
    alarm[4] = 120
}
if (conversation == 14)
{
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_papyrus7_244")
    global.msg[1] = scr_gettext("obj_papyrus7_245")
    scr_papface(2, 1)
    global.msg[3] = scr_gettext("obj_papyrus7_247")
    global.msg[4] = scr_gettext("obj_papyrus7_248")
    global.msg[5] = scr_gettext("obj_papyrus7_249")
    conversation = 14.1
    if (murder == 1)
    {
        global.msg[3] = scr_gettext("obj_papyrus7_260")
        global.msg[4] = scr_gettext("obj_papyrus7_261")
        global.msg[5] = scr_gettext("obj_papyrus7_262")
        scr_sansface(6, 0)
        global.msg[7] = scr_gettext("obj_papyrus7_264")
        scr_papface(8, 3)
        global.msg[9] = scr_gettext("obj_papyrus7_266")
        global.msg[10] = scr_gettext("obj_papyrus7_267")
        global.msg[11] = scr_gettext("obj_papyrus7_268")
        global.msg[12] = scr_gettext("obj_papyrus7_269")
        scr_sansface(13, 2)
        global.msg[14] = scr_gettext("obj_papyrus7_271")
        scr_papface(15, 4)
        global.msg[16] = scr_gettext("obj_papyrus7_273")
        global.msg[17] = scr_gettext("obj_papyrus7_274")
        scr_sansface(18, 1)
        global.msg[19] = scr_gettext("obj_papyrus7_276")
        scr_papface(20, 3)
        global.msg[21] = scr_gettext("obj_papyrus7_278")
        global.msg[22] = scr_gettext("obj_papyrus7_279")
        global.msg[23] = scr_gettext("obj_papyrus7_280")
        global.msg[24] = scr_gettext("obj_papyrus7_281")
        global.msg[25] = scr_gettext("obj_papyrus7_282")
        global.msg[26] = scr_gettext("obj_papyrus7_283")
        global.msg[27] = scr_gettext("obj_papyrus7_284")
        global.msg[28] = scr_gettext("obj_papyrus7_285")
        global.msg[29] = scr_gettext("obj_papyrus7_286")
        conversation = 15
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
if (conversation == 14.1 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.fun = true
    papyrus.sprite_index = spr_papyrus_shakehead
    papyrus.image_speed = 0
    papyrus.image_index = 0
    global.msg[0] = scr_gettext("obj_papyrus7_250")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 14.2
}
if (conversation == 14.2 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.fun = false
    papyrus.sprite_index = papyrus.ltsprite
    global.msg[0] = scr_gettext("obj_papyrus7_251")
    global.msg[1] = scr_gettext("obj_papyrus7_252")
    global.msg[2] = scr_gettext("obj_papyrus7_253")
    global.msg[3] = scr_gettext("obj_papyrus7_254")
    global.msg[4] = scr_gettext("obj_papyrus7_255")
    global.msg[5] = scr_gettext("obj_papyrus7_256")
    if (global.facing != 1)
    {
        global.msg[5] = "\\E3BESIDES..^2.\\E1THEY'RE&NOT EVEN FACING&THE RIGHT WAY!/"
        global.msg[6] = scr_gettext("obj_papyrus7_256")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 15
}
if (conversation == 15 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.sprite_index = spr_papyrus_behold
    dtrapa.alarm[1] = 1
    alarm[4] = 60
    conversation = 15.5
    dcannon.vspeed = 2
    dspear1.vspeed = 2
    dspear2.vspeed = -2
    dspike.vspeed = -2
    ddog.vspeed = -2
}
if (conversation == 16.5)
{
    global.facing = 1
    with (dcannon)
        instance_destroy()
    with (dspear1)
        instance_destroy()
    with (dspear2)
        instance_destroy()
    with (dspike)
        instance_destroy()
    with (ddog)
        instance_destroy()
    global.faceemotion = 3
    papyrus.sprite_index = papyrus.rtsprite
    global.msg[0] = scr_gettext("obj_papyrus7_316")
    conversation = 15.7
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
if (conversation == 15.7 && instance_exists(OBJ_WRITER) == 0)
{
    xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
    alarm[0] = 30
    conversation = 16
    alarm[4] = 40
}
if (conversation == 17)
{
    papyrus.sprite_index = papyrus.ltsprite
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_papyrus7_333")
    conversation = 17.1
    if (murder == 1)
    {
        global.msg[0] = scr_gettext("obj_papyrus7_341")
        global.msg[1] = scr_gettext("obj_papyrus7_342")
        conversation = 18
    }
    instance_create(0, 0, obj_dialoguer)
}
if (conversation == 17.1 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.sprite_index = spr_papyrus_littlebuddy
    global.msg[0] = scr_gettext("obj_papyrus7_334")
    global.msg[1] = scr_gettext("obj_papyrus7_335")
    global.msg[2] = scr_gettext("obj_papyrus7_336")
    global.msg[3] = scr_gettext("obj_papyrus7_337")
    instance_create(0, 0, obj_dialoguer)
    conversation = 17.2
}
if (conversation == 17.2 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.fun = true
    papyrus.sprite_index = spr_papyrus_shakehead
    papyrus.image_speed = 0
    papyrus.image_index = 0
    global.msg[0] = scr_gettext("obj_papyrus7_338")
    instance_create(0, 0, obj_dialoguer)
    conversation = 18
}
if (conversation == 18 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.fun = false
    conversation = 19
    instance_create(0, 0, obj_musfadeout)
    papyrus.npcdir = 1
    papyrus.hspeed = 4
    alarm[4] = 30
}
if (conversation == 20)
{
    if (__view_get(0, 0) > camera)
        __view_set(0, 0, (__view_get(0, 0) - 3))
    else
        conversation = 21
}
if (conversation == 21)
{
    flowey = instance_create(80, 120, obj_stalkerflowey)
    obj_mainchara.cutscene = false
    global.currentsong = caster_load("music/snowy.ogg")
    caster_loop(global.currentsong, 1, 0.95)
    if (murder == 1)
        caster_set_pitch(global.currentsong, 0.5)
    global.plot = 67
    global.interact = 0
    instance_create(sans.x, sans.y, obj_sans_room)
    with (sans)
        instance_destroy()
    with (papyrus)
        instance_destroy()
    instance_destroy()
}
