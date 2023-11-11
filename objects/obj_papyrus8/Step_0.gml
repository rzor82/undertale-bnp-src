if (conversation == 1)
{
    papyrus = instance_create((obj_mainchara.x + 200), 110, obj_papyrus_actor)
    papyrus.sprite_index = spr_papyrus_lt
    obj_mainchara.y = 120
    fade = instance_create(0, 0, obj_musfadeout)
    fade.fadespeed = 0.01
    myinteract = 3
    global.msc = 0
    global.msc = 0
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 1
    global.interact = 1
    papyrus.sprite_index = papyrus.ltsprite
    obj_mainchara.cutscene = true
    camera = __view_get(0, 0)
    conversation = 2
    global.border = 0
    if (global.hp < global.maxhp)
        global.hp = global.maxhp
}
if (conversation == 2)
{
    if (__view_get(0, 0) < (camera + 100))
        __view_set(0, 0, (__view_get(0, 0) + 3))
    else
        conversation = 3
}
if (conversation == 3)
{
    chara = instance_create(obj_mainchara.x, 120, obj_mainchara_actor)
    if (murder == 1)
        chara.sprite_index = spr_maincharar_shadow_geno
    else
        chara.sprite_index = spr_maincharar_shadow
    papyrus.d = 1
    papyrus.fun = true
    papyrus.sprite_index = spr_papyrus_shadowl
    chara.image_alpha = 0
    chara.d = 1
    chara.fun = true
    papyrus.image_alpha = 0
    chara.depth = 900
    papyrus.depth = 900
    conversation = 4
}
if (conversation == 4)
{
    if (chara.image_alpha < 0.9)
        chara.image_alpha += 0.01
    else
        conversation = 5
}
if (conversation == 5)
{
    if (papyrus.image_alpha < 0.9)
        papyrus.image_alpha += 0.01
    else
        conversation = 6
}
if (conversation == 6)
{
    alarm[4] = 40
    conversation = 7
}
if (conversation == 8)
{
    global.currentsong = caster_load("music/papyrus_preboss.ogg")
    caster_loop(global.currentsong, 1, 1)
    obj_mainchara.y = chara.y
    ossafe_ini_open("undertale.ini")
    PP = ini_read_real("Papyrus", "PS", 0)
    ossafe_ini_close()
    global.msc = 0
    global.typer = 19
    global.facechoice = 0
    global.faceemotion = 0
    global.interact = 1
    global.msg[0] = scr_gettext("obj_papyrus8_184")
    global.msg[1] = scr_gettext("obj_papyrus8_185")
    if (PP > 0)
    {
        global.msg[2] = scr_gettext("obj_papyrus8_188")
        global.msg[3] = scr_gettext("obj_papyrus8_189")
        global.msg[4] = scr_gettext("obj_papyrus8_190")
        global.msg[5] = scr_gettext("obj_papyrus8_191")
        global.msg[6] = scr_gettext("obj_papyrus8_192")
        global.msg[7] = scr_gettext("obj_papyrus8_193")
        global.msg[8] = scr_gettext("obj_papyrus8_194")
        global.msg[9] = scr_gettext("obj_papyrus8_195")
        global.msg[10] = scr_gettext("obj_papyrus8_196")
        global.msg[11] = scr_gettext("obj_papyrus8_197")
        global.msg[12] = scr_gettext("obj_papyrus8_198")
        global.msg[13] = scr_gettext("obj_papyrus8_199")
    }
    else
    {
        global.msg[2] = scr_gettext("obj_papyrus8_202")
        global.msg[3] = scr_gettext("obj_papyrus8_203")
        global.msg[4] = scr_gettext("obj_papyrus8_204")
        global.msg[5] = scr_gettext("obj_papyrus8_205")
        global.msg[6] = scr_gettext("obj_papyrus8_206")
        global.msg[7] = scr_gettext("obj_papyrus8_207")
        global.msg[8] = scr_gettext("obj_papyrus8_208")
        global.msg[9] = scr_gettext("obj_papyrus8_209")
        global.msg[10] = scr_gettext("obj_papyrus8_210")
        global.msg[11] = scr_gettext("obj_papyrus8_211")
        global.msg[12] = scr_gettext("obj_papyrus8_212")
        global.msg[13] = scr_gettext("obj_papyrus8_213")
        global.msg[14] = scr_gettext("obj_papyrus8_214")
        global.msg[15] = scr_gettext("obj_papyrus8_215")
        global.msg[16] = scr_gettext("obj_papyrus8_216")
        global.msg[17] = scr_gettext("obj_papyrus8_217")
        global.msg[18] = scr_gettext("obj_papyrus8_218")
        global.msg[19] = scr_gettext("obj_papyrus8_219")
        global.msg[20] = scr_gettext("obj_papyrus8_220")
        global.msg[21] = scr_gettext("obj_papyrus8_221")
        global.msg[22] = scr_gettext("obj_papyrus8_222")
        global.msg[23] = scr_gettext("obj_papyrus8_223")
        global.msg[24] = scr_gettext("obj_papyrus8_224")
    }
    if (global.flag[67] == -1)
    {
        global.msg[0] = scr_gettext("obj_papyrus8_227")
        global.msg[1] = scr_gettext("obj_papyrus8_228")
        global.msg[2] = scr_gettext("obj_papyrus8_229")
        global.msg[3] = scr_gettext("obj_papyrus8_230")
        global.msg[4] = scr_gettext("obj_papyrus8_231")
        global.msg[5] = scr_gettext("obj_papyrus8_232")
        global.msg[6] = scr_gettext("obj_papyrus8_233")
        if (PP > 0)
        {
            global.msg[0] = scr_gettext("obj_papyrus8_237")
            global.msg[1] = scr_gettext("obj_papyrus8_238")
            global.msg[2] = scr_gettext("obj_papyrus8_239")
            global.msg[3] = scr_gettext("obj_papyrus8_240")
            global.msg[4] = scr_gettext("obj_papyrus8_241")
            global.msg[5] = scr_gettext("obj_papyrus8_242")
            global.msg[6] = scr_gettext("obj_papyrus8_243")
            global.msg[7] = scr_gettext("obj_papyrus8_244")
            global.msg[8] = scr_gettext("obj_papyrus8_245")
            global.msg[9] = scr_gettext("obj_papyrus8_246")
        }
    }
    if (global.flag[67] == -2)
    {
        global.msg[0] = scr_gettext("obj_papyrus8_252")
        global.msg[1] = scr_gettext("obj_papyrus8_253")
        global.msg[2] = scr_gettext("obj_papyrus8_254")
        global.msg[3] = scr_gettext("obj_papyrus8_255")
        global.msg[4] = scr_gettext("obj_papyrus8_256")
        global.msg[5] = scr_gettext("obj_papyrus8_257")
        global.msg[6] = scr_gettext("obj_papyrus8_258")
        global.msg[7] = scr_gettext("obj_papyrus8_259")
    }
    if (global.flag[67] == -3)
    {
        global.msc = 544
        conversation = 13.5
    }
    if (murder == 1)
    {
        if (sprite_index == spr_maincharad_shadow)
            gsprite = 2906
        if (sprite_index == spr_maincharal_shadow)
            gsprite = 2914
        if (sprite_index == spr_maincharar_shadow)
            gsprite = 2918
        if (sprite_index == spr_maincharau_shadow)
            gsprite = 2910
        global.msg[0] = scr_gettext("obj_papyrus8_271")
    }
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 14
    if (murder == 1)
        conversation = 90
}
if (conversation == 14 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno > 14 && OBJ_WRITER.stringno < 18)
        papyrus.sprite_index = spr_papyrus_shadowr
    else
        papyrus.sprite_index = spr_papyrus_shadowl
}
if (conversation == 14 && instance_exists(OBJ_WRITER) == 0)
{
    caster_stop(global.currentsong)
    papyrus.sprite_index = spr_papyrus_shadowl_pose
    if (murder == 1)
        papyrus.sprite_index = spr_papyrus_shadowl_hug
    papyrus.x = (obj_mainchara.x + 198)
    if (murder == 0)
        alarm[4] = 60
    else
        alarm[4] = 40
    conversation = 14.1
}
if (conversation == 14.1)
{
    if (murder == 0)
    {
        paplaugh = snd_papeltor_fixed
        caster_play(paplaugh, 1, 1)
    }
    else
        snd_play(snd_break2)
    conversation = 15
}
if (conversation == 15)
    global.interact = 1
if (conversation == 16 && instance_exists(OBJ_WRITER) == 0)
{
    obj_mainchara.x = chara.x
    global.interact = 1
    myinteract = 3
    if (murder == 1)
        whereyoushouldbe = chara.x
    global.seriousbattle = 0
    global.battlegroup = 27
    global.flag[200] = 0
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    conversation = 17
    obj_fogmaker.s = 1
}
if (global.flag[68] == 1 && conversation == 17 && instance_exists(OBJ_WRITER) == 0)
{
    if (killhugthing == 1 && global.flag[67] == 1)
        killhugthing = 0
    room_persistent = false
    global.mercy = 0
    global.interact = 1
    chara.x = chara.xstart
    obj_mainchara.x = chara.x
    if (killhugthing == 1)
    {
        chara.image_alpha = 1
        obj_mainchara.image_alpha = 0
        chara.x = whereyoushouldbe
    }
    alarm[4] = 15
    if (global.flag[67] < 0)
    {
        instance_create(0, 0, obj_persistentfader)
        global.interact = 0
        room_goto(room_tundra_garage)
        return;
    }
    if (global.flag[67] == 1)
        papyrus.image_alpha = 0
    conversation = 17.5
    global.currentsong = caster_load("music/papyrus.ogg")
}
if (conversation == 17.5)
    global.interact = 1
if (conversation == 18.5)
{
    global.interact = 1
    obj_mainchara.image_alpha = 0
    if (chara.image_alpha > 0.03)
    {
        chara.image_alpha -= 0.03
        papyrus.image_alpha -= 0.03
    }
    else
    {
        conversation = 19
        if (global.flag[67] != 1)
        {
            papyrus.sprite_index = papyrus.rtsprite
            if (killhugthing == 1)
            {
                papyrus.sprite_index = spr_papyrus_genohug_pre
                papyrus.image_speed = 0
            }
            else
                papyrus.sprite_index = spr_papyrus_nyoohoohoo
            papyrus.depth = 1100
            papyrus.image_alpha = 1
        }
        with (chara)
            instance_destroy()
        if (killhugthing == 1)
            chara = instance_create(whereyoushouldbe, 120, obj_mainchara_actor)
        else
            obj_mainchara.image_alpha = 1
    }
}
if (conversation == 19)
{
    global.interact = 1
    if (obj_fogmaker.fog_alpha > 0.02)
        obj_fogmaker.fog_alpha -= 0.02
    else
    {
        obj_fogmaker.fog_alpha = 0
        conversation = 20
    }
}
if (conversation == 20)
{
    if (killhugthing == 1 && global.flag[67] == 0)
        conversation = 200
    else
    {
        killhugthing = 0
        if (murder == 0)
            global.flag[27] = 1
        if (global.flag[67] == 1)
            conversation = 25
        else
        {
            conversation = 21
            alarm[4] = 30
        }
    }
}
if (conversation == 22)
{
    caster_free(-3)
    ossafe_ini_open("undertale.ini")
    PS = ini_read_real("Papyrus", "PS", 0)
    ini_write_real("Papyrus", "PS", (PS + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
    global.msc = 540
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 3
    global.interact = 1
    global.msg[0] = scr_gettext("obj_papyrus8_386")
    papyrus.fun = false
    papyrus.npcdir = 0
    papyrus.sprite_index = papyrus.rtsprite
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    conversation = 22.5
    if (murder == 1)
        conversation = 22.4
    else
        papyrus.sprite_index = spr_papyrus_nyoohoohoo
}
if (conversation == 22.4)
{
    papyrus.sprite_index = papyrus.ltsprite
    caster_loop(global.currentsong, 0.5, 1)
    conversation = 21.6
    alarm[4] = 10
}
if (conversation == 22.5 && global.msc == 541)
{
    papyrus.sprite_index = papyrus.ltsprite
    caster_loop(global.currentsong, 0.5, 1)
    conversation = 21.6
    alarm[4] = 10
}
if (conversation == 22.6 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_papyrus8_414")
    global.msg[1] = scr_gettext("obj_papyrus8_415")
    global.msg[2] = scr_gettext("obj_papyrus8_416")
    if (murder == 1)
    {
        global.msg[1] = scr_gettext("obj_papyrus8_419")
        global.msg[2] = scr_gettext("obj_papyrus8_420")
    }
    global.msg[3] = scr_gettext("obj_papyrus8_422")
    global.msg[4] = scr_gettext("obj_papyrus8_423")
    global.msg[5] = scr_gettext("obj_papyrus8_424")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    volly = caster_get_volume(global.currentsong)
    conversation = 22.7
}
if (conversation == 22.7 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        papyrus.sprite_index = papyrus.usprite
}
if (conversation == 22.7)
{
    if (volly > 0.06)
        volly -= 0.02
    else
    {
        volly = 0
        conversation = 22.8
        caster_pause(global.currentsong)
    }
    caster_set_volume(global.currentsong, volly)
}
if (conversation == 22.8 && instance_exists(OBJ_WRITER) == 0)
{
    caster_resume(global.currentsong)
    caster_set_volume(global.currentsong, 0.5)
    papyrus.sprite_index = papyrus.ltsprite
    global.msg[0] = scr_gettext("obj_papyrus8_441")
    global.msg[1] = scr_gettext("obj_papyrus8_442")
    global.msg[2] = scr_gettext("obj_papyrus8_443")
    global.msg[3] = scr_gettext("obj_papyrus8_444")
    global.msg[4] = scr_gettext("obj_papyrus8_445")
    global.msg[5] = scr_gettext("obj_papyrus8_446")
    global.msg[6] = scr_gettext("obj_papyrus8_447")
    global.msg[7] = scr_gettext("obj_papyrus8_448")
    if (global.flag[66] == 1)
        global.msg[7] = scr_gettext("obj_papyrus8_449")
    global.msg[8] = scr_gettext("obj_papyrus8_450")
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    global.flag[88] = 1
    conversation = 23
}
if (conversation == 23 && instance_exists(OBJ_WRITER) == 0)
{
    papyrus.sprite_index = papyrus.lsprite
    papyrus.image_speed = 0.5
    papyrus.fun = true
    papyrus.npcdir = 0
    papyrus.hspeed = -3.5
    with (papyrus)
        event_user(2)
    conversation = 24
    alarm[4] = 90
}
if (conversation == 25)
{
    if (!instance_exists(obj_musfadeout))
    {
        mmm = instance_create(0, 0, obj_musfadeout)
        mmm.fadespeed = 0.02
    }
    if (__view_get(0, 0) > camera)
        __view_set(0, 0, (__view_get(0, 0) - 3))
    else
    {
        if (killhugthing == 1 && murder == 1)
            snd_play(snd_ominous_cancel)
        conversation = 27
    }
}
if (conversation == 27 && instance_exists(OBJ_WRITER) == 0)
{
    obj_mainchara.cutscene = false
    global.plot = 101
    global.interact = 0
    instance_destroy()
}
if (conversation == 90 && instance_exists(OBJ_WRITER) == 0)
{
    audio_sound_pitch(global.currentsong, 0.2)
    rem_dx = obj_mainchara.x
    conversation = 91
    alarm[4] = 15
    chara.hspeed = 2
    chara.image_speed = 0.25
}
if (conversation == 92)
{
    chara.hspeed = 0
    chara.image_speed = 0
    chara.image_index = 0
    chara.image_index = 0
    conversation = 93
    alarm[4] = 30
}
if (conversation == 94)
{
    global.msg[0] = scr_gettext("obj_papyrus8_515")
    global.msg[1] = scr_gettext("obj_papyrus8_516")
    global.msg[2] = scr_gettext("obj_papyrus8_517")
    global.msg[3] = scr_gettext("obj_papyrus8_518")
    global.msg[4] = scr_gettext("obj_papyrus8_519")
    global.msg[5] = scr_gettext("obj_papyrus8_520")
    global.msg[6] = scr_gettext("obj_papyrus8_521")
    global.msg[7] = scr_gettext("obj_papyrus8_522")
    global.msg[8] = scr_gettext("obj_papyrus8_523")
    global.msg[9] = scr_gettext("obj_papyrus8_524")
    global.msg[10] = scr_gettext("obj_papyrus8_525")
    global.msg[11] = scr_gettext("obj_papyrus8_526")
    global.msg[12] = scr_gettext("obj_papyrus8_527")
    instance_create(0, 0, obj_dialoguer)
    conversation = 95
}
if (conversation == 95 && instance_exists(OBJ_WRITER) == 0)
{
    conversation = 96
    alarm[4] = 15
    chara.hspeed = 2
    chara.image_speed = 0.25
}
if (conversation == 97)
{
    chara.hspeed = 0
    chara.image_index = 0
    chara.image_speed = 0
    conversation = 98
    alarm[4] = 30
}
if (conversation == 99)
{
    global.msg[0] = scr_gettext("obj_papyrus8_555")
    global.msg[1] = scr_gettext("obj_papyrus8_556")
    global.msg[2] = scr_gettext("obj_papyrus8_557")
    global.msg[3] = scr_gettext("obj_papyrus8_558")
    global.msg[4] = scr_gettext("obj_papyrus8_559")
    global.msg[5] = scr_gettext("obj_papyrus8_560")
    global.msg[6] = scr_gettext("obj_papyrus8_561")
    instance_create(0, 0, obj_dialoguer)
    conversation = 100
}
if (conversation == 100 && instance_exists(OBJ_WRITER) == 0)
{
    conversation = 101
    alarm[4] = 30
    chara.hspeed = 2
    chara.image_speed = 0.25
}
if (conversation == 102)
{
    chara.image_index = 0
    chara.hspeed = 0
    chara.image_index = 0
    chara.image_speed = 0
    conversation = 103
    alarm[4] = 30
}
if (conversation == 104)
{
    killhugthing = 1
    global.msg[0] = scr_gettext("obj_papyrus8_590")
    global.msg[1] = scr_gettext("obj_papyrus8_591")
    global.msg[2] = scr_gettext("obj_papyrus8_592")
    global.msg[3] = scr_gettext("obj_papyrus8_593")
    instance_create(0, 0, obj_dialoguer)
    conversation = 14
}
if (conversation == 200)
{
    obj_mainchara.image_alpha = 0
    if (chara.x == papyrus.x)
    {
        chara.hspeed = 0
        conversation = 201
    }
    else
        chara.hspeed = 2
}
if (conversation == 201)
{
    chara.hspeed = 0
    chara.image_alpha = 0
    papyrus.sprite_index = spr_papyrus_genohug
    papyrus.image_speed = 0.1
    conversation = 202
    alarm[4] = 120
}
if (conversation == 203)
{
    if (chara.x == obj_mainchara.x)
    {
        chara.hspeed = 0
        conversation = 204
    }
    else
    {
        papyrus.sprite_index = spr_papyrus_l
        papyrus.image_speed = 0
        chara.image_alpha = 1
        chara.sprite_index = spr_maincharal_geno
        chara.hspeed = -3
        chara.image_speed = 0.25
    }
}
if (conversation == 204)
{
    chara.image_alpha = 0
    obj_mainchara.image_alpha = 1
    alarm[4] = 30
    chara.sprite_index = spr_maincharar_geno
    conversation = 21
}
