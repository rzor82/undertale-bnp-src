if (conversation == 2 || conversation == 4)
{
    if (instance_exists(obj_dialoguer) == 0)
    {
        caster_free(global.currentsong)
        global.interact = 1
        alarm[1] = 150
        if (conversation == 2)
            snd_play(snd_floweylaugh)
        else
        {
            if (global.language == "ja")
                snd_play(snd_wonderfulidea_ja)
            else
                snd_play(snd_wonderfulidea)
            alarm[1] = 80
        }
        obj_floweytalker1.image_speed = 0.25
        conversation = 999
    }
    if (sinepitcher == 1 && instance_exists(OBJ_WRITER) && OBJ_WRITER.stringno > 6)
    {
        siner += 1
        caster_set_pitch(global.currentsong, (pitch + (sin((siner / 2)) * 0.025)))
    }
}
if (conversation == 3 && instance_exists(obj_dialoguer) == 0)
{
    caster_free(global.currentsong)
    global.interact = 1
    obj_floweytalker1.sprite_index = spr_floweygrow
    obj_floweytalker1.image_speed = 0.33333334
    obj_floweytalker1.image_index = 0
    alarm[2] = 240
    conversation = 999
}
var needsave = 0
if (conversation == 1 && instance_exists(obj_dialoguer) == 0)
{
    with (obj_floweytalker1)
    {
        if (obj_mainchara.y < y)
            sprite_index = spr_floweyback
        else if (obj_mainchara.y > y)
            sprite_index = spr_flowey
    }
    global.interact = 1
    myinteract = 3
    global.typer = 9
    global.facechoice = 2
    global.faceemotion = 0
    global.msc = 0
    ossafe_ini_open("undertale.ini")
    TK = ini_read_real("Toriel", "TK", 0)
    TS = ini_read_real("Toriel", "TS", 0)
    FS = ini_read_real("Flowey", "FloweyExplain1", 0)
    ossafe_ini_close()
    global.currentsong = caster_load("music/flowey2.ogg")
    caster_loop(global.currentsong, 1, 1)
    global.msg[0] = "* I'm..^1. not sure what&  to say./"
    global.msg[1] = "* Whatever you did^1,&  I don't like it./"
    global.msg[2] = "\\E2* Get out./%%"
    conversation = 2
    if (global.flag[8] != 42043)
    {
        if (global.flag[45] == 4)
        {
            global.msg[0] = scr_gettext("obj_floweytrigger2_162")
            global.msg[1] = scr_gettext("obj_floweytrigger2_163")
            global.msg[2] = scr_gettext("obj_floweytrigger2_164")
            global.msg[3] = scr_gettext("obj_floweytrigger2_165")
            global.msg[4] = scr_gettext("obj_floweytrigger2_166")
            global.msg[5] = scr_gettext("obj_floweytrigger2_167")
            global.msg[6] = scr_gettext("obj_floweytrigger2_168")
            global.msg[7] = scr_gettext("obj_floweytrigger2_169")
            global.msg[8] = scr_gettext("obj_floweytrigger2_170")
            global.msg[9] = scr_gettext("obj_floweytrigger2_171")
            conversation = 2
            if (TK == 2)
            {
                global.msg[0] = scr_gettext("obj_floweytrigger2_175")
                global.msg[1] = scr_gettext("obj_floweytrigger2_176")
                global.msg[2] = scr_gettext("obj_floweytrigger2_177")
                global.msg[3] = scr_gettext("obj_floweytrigger2_178")
                global.msg[4] = scr_gettext("obj_floweytrigger2_179")
                global.msg[5] = scr_gettext("obj_floweytrigger2_180")
                global.msg[6] = scr_gettext("obj_floweytrigger2_181")
                conversation = 2
            }
            if (TK > 2)
            {
                global.msg[0] = scr_gettext("obj_floweytrigger2_186")
                global.msg[1] = scr_gettext("obj_floweytrigger2_187")
                conversation = 2
            }
            if (TS > 0 && TK > 0)
            {
                ossafe_ini_open("undertale.ini")
                ini_write_real("Flowey", "FloweyExplain1", 1)
                ossafe_ini_close()
                needsave = 1
                global.msg[0] = scr_gettext("obj_floweytrigger2_195")
                global.msg[1] = scr_gettext("obj_floweytrigger2_196")
                global.msg[2] = scr_gettext("obj_floweytrigger2_197")
                global.msg[3] = scr_gettext("obj_floweytrigger2_198")
                global.msg[4] = scr_gettext("obj_floweytrigger2_199")
                global.msg[5] = scr_gettext("obj_floweytrigger2_200")
                if (FS == 0)
                {
                    global.msg[5] = scr_gettext("obj_floweytrigger2_203")
                    global.msg[6] = scr_gettext("obj_floweytrigger2_204")
                    global.msg[7] = scr_gettext("obj_floweytrigger2_205")
                    global.msg[8] = scr_gettext("obj_floweytrigger2_206")
                    global.msg[9] = scr_gettext("obj_floweytrigger2_207")
                    global.msg[10] = scr_gettext("obj_floweytrigger2_208")
                    global.msg[11] = scr_gettext("obj_floweytrigger2_209")
                    global.msg[12] = scr_gettext("obj_floweytrigger2_210")
                    global.msg[13] = scr_gettext("obj_floweytrigger2_211")
                    global.msg[14] = scr_gettext("obj_floweytrigger2_212")
                    global.msg[15] = scr_gettext("obj_floweytrigger2_213")
                    global.msg[16] = scr_gettext("obj_floweytrigger2_214")
                    global.msg[17] = scr_gettext("obj_floweytrigger2_215")
                    conversation = 3
                }
            }
            if (scr_murderlv() >= 2)
            {
                ossafe_ini_open("undertale.ini")
                ini_write_real("Flowey", "truename", 1)
                ini_write_real("Flowey", "alter2", 1)
                ossafe_ini_close()
                needsave = 1
                global.msg[0] = scr_gettext("obj_floweytrigger2_226")
                global.msg[1] = scr_gettext("obj_floweytrigger2_227")
                global.msg[2] = scr_gettext("obj_floweytrigger2_228")
                global.msg[3] = scr_gettext("obj_floweytrigger2_229")
                global.msg[4] = scr_gettext("obj_floweytrigger2_230")
                global.msg[5] = scr_gettext("obj_floweytrigger2_231")
                global.msg[6] = scr_gettext("obj_floweytrigger2_232")
                global.msg[7] = scr_gettext("obj_floweytrigger2_233")
                global.msg[8] = scr_gettext("obj_floweytrigger2_234")
                global.msg[9] = scr_gettext("obj_floweytrigger2_235")
                conversation = 4
            }
        }
        else if (global.flag[45] == 5)
        {
            global.faceemotion = 2
            global.msg[0] = scr_gettext("obj_floweytrigger2_245")
            global.msg[1] = scr_gettext("obj_floweytrigger2_246")
            global.msg[2] = scr_gettext("obj_floweytrigger2_247")
            global.msg[3] = scr_gettext("obj_floweytrigger2_248")
            global.msg[4] = scr_gettext("obj_floweytrigger2_249")
            global.msg[5] = scr_gettext("obj_floweytrigger2_250")
            if (global.kills > 0)
            {
                global.msg[6] = scr_gettext("obj_floweytrigger2_253")
                global.msg[7] = scr_gettext("obj_floweytrigger2_254")
                global.msg[8] = scr_gettext("obj_floweytrigger2_255")
                global.msg[9] = scr_gettext("obj_floweytrigger2_256")
                global.msg[10] = scr_gettext("obj_floweytrigger2_257")
                global.msg[11] = scr_gettext("obj_floweytrigger2_258")
                global.msg[12] = scr_gettext("obj_floweytrigger2_259")
                conversation = 2
            }
            if (global.kills == 0)
            {
                global.msg[6] = scr_gettext("obj_floweytrigger2_264")
                global.msg[7] = scr_gettext("obj_floweytrigger2_265")
                global.msg[8] = scr_gettext("obj_floweytrigger2_266")
                global.msg[9] = scr_gettext("obj_floweytrigger2_267")
                global.msg[10] = scr_gettext("obj_floweytrigger2_268")
                global.msg[11] = scr_gettext("obj_floweytrigger2_269")
                global.msg[12] = scr_gettext("obj_floweytrigger2_270")
                global.msg[13] = scr_gettext("obj_floweytrigger2_271")
                global.msg[14] = scr_gettext("obj_floweytrigger2_272")
                global.msg[15] = scr_gettext("obj_floweytrigger2_273")
                global.msg[16] = scr_gettext("obj_floweytrigger2_274")
                global.msg[17] = scr_gettext("obj_floweytrigger2_275")
                conversation = 3
            }
            if (TK > 0 && FS == 0)
            {
                ossafe_ini_open("undertale.ini")
                ini_write_real("Flowey", "FloweyExplain1", 1)
                ossafe_ini_close()
                needsave = 1
                global.msg[6] = scr_gettext("obj_floweytrigger2_283")
                global.msg[7] = scr_gettext("obj_floweytrigger2_284")
                global.msg[8] = scr_gettext("obj_floweytrigger2_285")
                global.msg[9] = scr_gettext("obj_floweytrigger2_286")
                global.msg[10] = scr_gettext("obj_floweytrigger2_287")
                global.msg[11] = scr_gettext("obj_floweytrigger2_288")
                global.msg[12] = scr_gettext("obj_floweytrigger2_289")
                global.msg[13] = scr_gettext("obj_floweytrigger2_290")
                global.msg[14] = scr_gettext("obj_floweytrigger2_291")
                global.msg[15] = scr_gettext("obj_floweytrigger2_292")
                global.msg[16] = scr_gettext("obj_floweytrigger2_293")
                global.msg[17] = scr_gettext("obj_floweytrigger2_294")
                global.msg[18] = scr_gettext("obj_floweytrigger2_295")
                global.msg[19] = scr_gettext("obj_floweytrigger2_296")
                global.msg[20] = scr_gettext("obj_floweytrigger2_297")
                global.msg[21] = scr_gettext("obj_floweytrigger2_298")
                global.msg[22] = scr_gettext("obj_floweytrigger2_299")
                conversation = 3
            }
        }
        mydialoguer = instance_create(0, 0, obj_dialoguer)
    }
    else
    {
        global.msg[0] = "* You must think you're&  soooooo clever./"
        global.msg[1] = "* You figured out how&  to use debug mode^1.&* Congratulations./"
        global.msg[2] = "\\E2* Now get out^1, you dirty^1,&  dirty cheater./%%"
        obj_mainchara.y += 1000
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        obj_mainchara.y -= 1000
        conversation = 3
    }
}
if (global.plot > 27 && global.interact == 0)
    instance_destroy()
if needsave
    ossafe_savedata_save()
