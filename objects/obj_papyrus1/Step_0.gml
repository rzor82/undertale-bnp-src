if (conversation == 1)
{
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.5
    myinteract = 3
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.interact = 1
    global.msg[0] = scr_gettext("obj_papyrus1_407")
    if (murder == 1)
    {
        global.faceemotion = 2
        global.msg[0] = scr_gettext("obj_papyrus1_411")
        global.msg[1] = scr_gettext("obj_papyrus1_412")
        global.msg[2] = scr_gettext("obj_papyrus1_413")
        scr_sansface(3, 1)
        global.msg[4] = scr_gettext("obj_papyrus1_415")
        scr_papface(5, 2)
        global.msg[6] = scr_gettext("obj_papyrus1_417")
        scr_sansface(7, 0)
        global.msg[8] = scr_gettext("obj_papyrus1_419")
        global.msg[9] = scr_gettext("obj_papyrus1_420")
    }
    global.currentsong = caster_load("music/papyrus.ogg")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 2
}
if (conversation == 2 && instance_exists(OBJ_WRITER) == 0)
{
    caster_loop(global.currentsong, 0.6, 1)
    conversation = 3
    papyrus.sprite_index = papyrus.lsprite
    xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
    alarm[0] = 50
}
if (conversation == 5)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.interact = 1
    global.msg[0] = scr_gettext("obj_papyrus1_443")
    global.msg[1] = scr_gettext("obj_papyrus1_444")
    ossafe_ini_open("undertale.ini")
    M1 = ini_read_real("Papyrus", "M1", 0)
    ini_write_real("Papyrus", "M1", (M1 + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
    if (M1 > 0)
    {
        global.msg[0] = scr_gettext("obj_papyrus1_453")
        global.msg[1] = scr_gettext("obj_papyrus1_454")
        global.msg[2] = scr_gettext("obj_papyrus1_455")
    }
    if (murder == 1)
    {
        global.msg[0] = scr_gettext("obj_papyrus1_459")
        global.msg[1] = scr_gettext("obj_papyrus1_460")
        scr_sansface(2, 1)
        global.msg[3] = scr_gettext("obj_papyrus1_462")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 6
}
if (conversation == 6 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.sprite_index = papyrus.lsprite
    sans.sprite_index = sans.lsprite
    obj_mainchara.cutscene = true
    __view_set(9, 0, -4)
    alarm[3] = 30
    conversation = 7
}
if (conversation == 8)
{
    __view_set(0, 0, (__view_get(0, 0) - 1))
    if (__view_get(0, 0) <= -40)
    {
        __view_set(0, 0, -40)
        conversation = 9
        alarm[3] = 30
    }
}
if (conversation == 10)
{
    global.msc = 0
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    sans.sprite_index = sans.dtsprite
    global.msg[0] = scr_gettext("obj_papyrus1_496")
    global.msg[1] = scr_gettext("obj_papyrus1_497")
    if (M1 > 0)
    {
        global.msg[0] = scr_gettext("obj_papyrus1_500")
        global.msg[1] = scr_gettext("obj_papyrus1_501")
    }
    if (murder == 1)
    {
        global.facechoice = 4
        global.faceemotion = 0
        global.typer = 19
        papyrus.sprite_index = papyrus.ltsprite
        global.msg[0] = scr_gettext("obj_papyrus1_509")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 11
}
if (conversation == 11 && instance_exists(OBJ_WRITER) == 0)
{
    __view_set(0, 0, (__view_get(0, 0) + 4))
    if (__view_get(0, 0) >= 0)
    {
        __view_set(0, 0, 0)
        conversation = 12
    }
}
if (conversation == 12)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 3
    papyrus.sprite_index = papyrus.utsprite
    global.msg[0] = scr_gettext("obj_papyrus1_532")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_papyrus1_534")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 13
}
if (conversation == 13 && instance_exists(OBJ_WRITER) == 0)
{
    obj_mainchara.cutscene = false
    __view_set(9, 0, 1584)
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    sans.sprite_index = sans.ltsprite
    global.msg[0] = scr_gettext("obj_papyrus1_547")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 14
}
if (conversation == 14 && instance_exists(OBJ_WRITER) == 0)
{
    xxblcon = instance_create((papyrus.x + 3), (papyrus.y - 12), obj_cosmeticblcon)
    sans.sprite_index = sans.dtsprite
    papyrus.sprite_index = papyrus.ltsprite
    conversation = 15
    alarm[3] = 30
}
if (conversation == 16)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_papyrus1_567")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 17
}
if (conversation == 17 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    papyrus.sprite_index = papyrus.utsprite
    global.msg[0] = scr_gettext("obj_papyrus1_579")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_papyrus1_581")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 18
}
if (conversation == 18 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_papyrus1_592")
    if (murder == 1)
        global.msg[0] = scr_gettext("obj_papyrus1_594")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 19
}
if (murder == 0)
{
    if (conversation == 19 && instance_exists(OBJ_WRITER) == 0)
    {
        global.msc = 0
        global.typer = 19
        global.facechoice = 4
        global.faceemotion = 0
        sans.sprite_index = sans.ltsprite
        papyrus.sprite_index = papyrus.ltsprite
        global.msg[0] = scr_gettext("obj_papyrus1_607")
        global.msg[1] = scr_gettext("obj_papyrus1_608")
        global.msg[2] = scr_gettext("obj_papyrus1_609")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 19.1
    }
    if (conversation == 19.1 && instance_exists(OBJ_WRITER) == 0 && murder == 0)
    {
        global.msc = 0
        global.typer = 19
        global.facechoice = 4
        global.faceemotion = 0
        papyrus.sprite_index = papyrus.utsprite
        global.msg[0] = scr_gettext("obj_papyrus1_610")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 19.2
    }
    if (conversation == 19.2 && instance_exists(OBJ_WRITER) == 0 && murder == 0)
    {
        global.msc = 0
        global.typer = 19
        global.facechoice = 4
        global.faceemotion = 0
        papyrus.sprite_index = papyrus.rtsprite
        global.msg[0] = scr_gettext("obj_papyrus1_611")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 19.3
    }
    if (conversation == 19.3 && instance_exists(OBJ_WRITER) == 0 && murder == 0)
    {
        global.msc = 0
        global.typer = 19
        global.facechoice = 4
        global.faceemotion = 0
        papyrus.fun = true
        papyrus.sprite_index = spr_papyrus_popularpopularpopular
        papyrus.image_speed = 0.3
        global.msg[0] = scr_gettext("obj_papyrus1_612")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 19.4
    }
    if (conversation == 19.4 && instance_exists(OBJ_WRITER) == 0 && murder == 0)
    {
        global.msc = 0
        global.typer = 19
        global.facechoice = 4
        global.faceemotion = 0
        papyrus.fun = false
        papyrus.sprite_index = spr_papyrus_ahem
        papyrus.image_speed = 0.3
        global.msg[0] = scr_gettext("obj_papyrus1_613")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 19.5
    }
    if (conversation == 19.5 && instance_exists(OBJ_WRITER) == 0 && murder == 0)
    {
        global.msc = 0
        global.typer = 19
        global.facechoice = 4
        global.faceemotion = 0
        papyrus.fun = false
        sans.sprite_index = sans.ltsprite
        papyrus.sprite_index = papyrus.ltsprite
        global.msg[0] = scr_gettext("obj_papyrus1_614")
        global.msg[1] = scr_gettext("obj_papyrus1_615")
        global.msg[2] = scr_gettext("obj_papyrus1_616")
        global.msg[3] = scr_gettext("obj_papyrus1_617")
        global.msg[4] = scr_gettext("obj_papyrus1_618")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 19.6
    }
    if (conversation == 19.6 && instance_exists(OBJ_WRITER) == 0 && murder == 0)
    {
        global.msc = 0
        global.typer = 19
        global.facechoice = 4
        global.faceemotion = 0
        papyrus.sprite_index = papyrus.rtsprite
        global.msg[0] = scr_gettext("obj_papyrus1_619")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 19.7
    }
    if (conversation == 19.7 && instance_exists(OBJ_WRITER) == 0 && murder == 0)
    {
        global.msc = 0
        global.typer = 19
        global.facechoice = 4
        global.faceemotion = 0
        papyrus.sprite_index = papyrus.ltsprite
        global.msg[0] = scr_gettext("obj_papyrus1_620")
        global.msg[1] = scr_gettext("obj_papyrus1_621")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 20
    }
}
if (murder == 1)
{
    if (conversation == 19 && instance_exists(OBJ_WRITER) == 0)
    {
        papyrus.sprite_index = papyrus.ltsprite
        global.typer = 19
        global.facechoice = 4
        global.msg[0] = scr_gettext("obj_papyrus1_624")
        global.msg[1] = scr_gettext("obj_papyrus1_625")
        global.msg[2] = scr_gettext("obj_papyrus1_626")
        global.msg[3] = scr_gettext("obj_papyrus1_627")
        global.msg[4] = scr_gettext("obj_papyrus1_628")
        global.msg[5] = scr_gettext("obj_papyrus1_629")
        global.msg[6] = scr_gettext("obj_papyrus1_630")
        global.msg[7] = scr_gettext("obj_papyrus1_631")
        global.msg[8] = scr_gettext("obj_papyrus1_632")
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        conversation = 20
    }
}
if (conversation == 20 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    papyrus.fun = false
    sans.sprite_index = sans.dtsprite
    papyrus.sprite_index = spr_papyrus_littlebuddy
    papyrus.hspeed = 5
    global.msg[0] = scr_gettext("obj_papyrus1_647")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 21
}
if (conversation == 21 && instance_exists(OBJ_WRITER) == 0)
{
    alarm[3] = 30
    ppp = instance_create(0, 0, obj_musfadeout)
    ppp.fadespeed = 0.04
    sans.sprite_index = sans.rsprite
    conversation = 22
}
if (conversation == 22)
{
    sans.sprite_index = sans.ltsprite
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    if (scr_murderlv() >= 2)
        global.msg[0] = scr_gettext("obj_papyrus1_672")
    else
    {
        global.msg[0] = scr_gettext("obj_papyrus1_667")
        global.msg[1] = scr_gettext("obj_papyrus1_668")
        global.msg[2] = scr_gettext("obj_papyrus1_669")
    }
    conversation = 23
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
if (conversation == 23 && instance_exists(OBJ_WRITER) == 0)
{
    alarm[3] = 30
    sans.sprite_index = sans.rsprite
    sans.hspeed = 3
    conversation = 24
}
if (conversation == 25)
{
    global.currentsong = caster_load("music/snowy.ogg")
    caster_loop(global.currentsong, 1, 0.95)
    if (murder == 1)
        caster_set_pitch(global.currentsong, 0.4)
    global.plot = 40
    global.interact = 0
    scr_tempsave()
    with (sans)
        instance_destroy()
    with (papyrus)
        instance_destroy()
    instance_destroy()
}
