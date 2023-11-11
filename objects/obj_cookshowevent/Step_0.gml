if (con == 1)
{
    global.flag[17] = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_cookshowevent_89")
    global.msg[1] = scr_gettext("obj_cookshowevent_90")
    global.msg[2] = scr_gettext("obj_cookshowevent_91")
    global.msg[3] = scr_gettext("obj_cookshowevent_92")
    global.msg[4] = scr_gettext("obj_cookshowevent_93")
    scr_regulartext()
    con = 2
    snd_play(snd_phone)
    with (obj_mainchara)
    {
        cutscene = true
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
}
if (con == 2 && instance_exists(OBJ_WRITER) == 0)
{
    bossa = caster_load("music/hotel.ogg")
    con = 3
    ff1 = instance_create(20, 320, obj_kitchenforcefield)
    ff1.image_yscale = 5
    ff1.depth = 500000
    ff2 = instance_create(300, 320, obj_kitchenforcefield)
    ff2.image_yscale = 6
    ff2.depth = 500000
    eggs = instance_create(104, (60 + yoffset1), obj_metteggs)
    eggs.sprite_index = spr_eggcarton
    milk = instance_create(136, (74 + yoffset1), obj_mettmilk)
    milk.sprite_index = spr_milkcarton
    sugar = instance_create(172, (60 + yoffset1), obj_mettsugar)
    mett = instance_create(192, (158 + yoffset1), obj_mettaton_actor)
    global.flag[20] = 10
    mett.d = 1
    mett.fun = true
    mett.depth = 999900
    mett.image_speed = 0
    mett.sprite_index = spr_mettaton_armsdown
    chefhat = instance_create(0, 0, obj_chefhat)
    alarm[4] = 30
}
if (con == 4)
{
    global.facing = 0
    snd_play(snd_noise)
    con = 5
    alarm[4] = 60
}
if (con == 6)
{
    global.faceemotion = 3
    global.msg[0] = "\\M0%"
    global.msg[1] = scr_gettext("obj_cookshowevent_135")
    g = instance_create(0, 0, obj_dialoguer)
    g.side = 0
    con = 7
}
if (con == 7 && instance_exists(OBJ_WRITER) == 0)
{
    global.facechoice = 0
    caster_loop(bossa, 1, 1)
    con = 8
    mett.vspeed = -1
    alarm[4] = 45
}
if (con == 9)
{
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
    mett.vspeed = 0
    mett.sprite_index = spr_mettaton_talk
    mett.image_speed = 0.2
    scr_anyface_dialogue(0, 1, "D", "M", -40, 24)
    global.msg[1] = scr_gettext("obj_cookshowevent_156")
    global.msg[2] = scr_gettext("obj_cookshowevent_157")
    g = instance_create(0, 0, obj_dialoguer)
    g.side = 1
    con = 10
}
if (con == 10 && instance_exists(OBJ_WRITER) == 0)
{
    g = instance_create(40, (180 + yoffset1), obj_killervisage)
    with (g)
        event_user(0)
    con = 11
    alarm[4] = 160
}
if (con == 12)
{
    con = 13
    scr_anyface_dialogue(0, 1, "D", "M", -40, 24)
    global.msg[1] = scr_gettext("obj_cookshowevent_174")
    global.msg[2] = scr_gettext("obj_cookshowevent_175")
    global.msg[3] = scr_gettext("obj_cookshowevent_176")
    global.msg[4] = scr_gettext("obj_cookshowevent_177")
    global.msg[5] = scr_gettext("obj_cookshowevent_178")
    g = instance_create(0, 0, obj_dialoguer)
    applause = caster_load("music/mett_applause.ogg")
}
if (con == 13 && instance_exists(OBJ_WRITER) == 0)
{
    mett.sprite_index = spr_mettaton_clap
    mett.image_speed = 0.5
    caster_play(applause, 1, 1)
    con = 14
    alarm[4] = 90
}
if (con == 14)
{
    conf = instance_create(((obj_mainchara.x - 5) + random(20)), (__view_get(1, 0) - 2), obj_confetti)
    conf.hspeed = (-1 + random(2))
}
if (con == 15)
{
    mett.image_speed = 0.25
    mett.sprite_index = spr_mettaton_talk
    scr_anyface_dialogue(0, 1, "D", "M", -40, 24)
    global.msg[1] = scr_gettext("obj_cookshowevent_202")
    global.msg[2] = scr_gettext("obj_cookshowevent_203")
    instance_create(0, 0, obj_dialoguer)
    con = 16
}
if (con == 16 && instance_exists(obj_dialoguer) == 0)
{
    mett2 = instance_create(mett.x, mett.y, obj_mettaton_npc)
    with (mett)
        instance_destroy()
    mett = mett2
    mett.image_speed = 0
    mett.depth = 900000
    con = 17
    y = 300
    global.interact = 0
}
if (con == 20)
{
    mett.image_speed = 0
    mett.sprite_index = spr_mettaton_armsdown
    con = 21
    alarm[4] = 20
}
if (con == 22)
{
    global.facing = 1
    con = 23
    chainsaw = instance_create((mett.x - 8), (140 + yoffset1), obj_npc_marker)
    chainsaw.visible = true
    chainsaw.depth = (mett.depth - 1)
    chainsaw.sprite_index = spr_mettchainsaw
    alarm[4] = 40
}
if (con == 23)
    chainsaw.y -= 0.5
if (con == 24)
{
    con = 25
    bad = caster_load("music/bad.ogg")
    alarm[4] = 20
}
if (con == 26)
{
    scr_anyface_dialogue(0, 1, "D", "M", -40, 24)
    global.msg[1] = scr_gettext("obj_cookshowevent_253")
    instance_create(0, 0, obj_dialoguer)
    con = 27
}
if (con == 27 && instance_exists(OBJ_WRITER) == 0)
{
    snd_play(snd_shock)
    caster_loop(bad, 1, 1)
    mett.image_speed = 0.5
    mett.hspeed = -0.2
    chainsaw.hspeed = -0.2
    con = 28
    siner = 0
    alarm[4] = 100
}
if (con == 28)
{
    siner += 1
    chainsaw.x += sin((siner * 1.5))
    chainsaw.y += cos((siner * 1.5))
}
if (con == 29)
{
    mett.hspeed = 0
    chainsaw.hspeed = 0
    mett.image_speed = 0
    caster_free(bad)
    caster_free(-3)
    mettsong = caster_load("music/mtgameshow.ogg")
    snd_play(snd_phone)
    con = 30
    alarm[4] = 60
}
if (con == 31)
{
    snd_play(snd_phone)
    global.typer = 5
    global.msg[0] = scr_gettext("obj_cookshowevent_295")
    scr_anyface_dialogue(1, 5, "D", "M", -40, 24)
    global.msg[2] = scr_gettext("obj_cookshowevent_297")
    scr_anyface_dialogue(3, 0, 0, "m", -40, 24)
    global.msg[4] = scr_gettext("obj_cookshowevent_298")
    global.msg[5] = scr_gettext("obj_cookshowevent_299")
    global.msg[6] = scr_gettext("obj_cookshowevent_300")
    global.msg[7] = scr_gettext("obj_cookshowevent_301")
    global.msg[8] = scr_gettext("obj_cookshowevent_302")
    scr_anyface_dialogue(9, 5, "D", "M", -40, 24)
    global.msg[10] = scr_gettext("obj_cookshowevent_304")
    global.msg[11] = scr_gettext("obj_cookshowevent_305")
    scr_anyface_dialogue(12, 0, 0, "m", -40, 24)
    global.msg[13] = scr_gettext("obj_cookshowevent_306")
    global.msg[14] = scr_gettext("obj_cookshowevent_307")
    global.msg[15] = scr_gettext("obj_cookshowevent_308")
    global.msg[16] = scr_gettext("obj_cookshowevent_309")
    scr_anyface_dialogue(17, 5, "D", "M", -40, 24)
    global.msg[18] = scr_gettext("obj_cookshowevent_311")
    scr_anyface_dialogue(19, 0, 0, "m", -40, 24)
    global.msg[20] = scr_gettext("obj_cookshowevent_312")
    global.msg[21] = scr_gettext("obj_cookshowevent_313")
    instance_create(0, 0, obj_dialoguer)
    con = 32
}
if (con == 32 && instance_exists(OBJ_WRITER) == 0)
{
    mett.sprite_index = spr_mettaton_talk
    mett.image_speed = 0.25
    caster_loop(mettsong, 1, 1)
    __view_set(9, 0, -4)
    scr_anyface_dialogue(0, 1, "D", "M", -40, 24)
    global.msg[1] = scr_gettext("obj_cookshowevent_326")
    global.msg[2] = scr_gettext("obj_cookshowevent_327")
    global.msg[3] = scr_gettext("obj_cookshowevent_328")
    global.msg[4] = scr_gettext("obj_cookshowevent_329")
    instance_create(0, 0, obj_dialoguer)
    con = 33
}
if (con == 33)
{
    if instance_exists(chainsaw)
    {
        chainsaw.vspeed = 4
        if (chainsaw.y >= chainsaw.ystart)
        {
            with (chainsaw)
                instance_destroy()
        }
    }
}
if (con == 33 && instance_exists(OBJ_WRITER) == 0)
{
    __view_set(0, 0, (__view_get(0, 0) + 4))
    if (__view_get(0, 0) > 318)
        con = 34
}
if (con == 34)
{
    __view_set(0, 0, 320)
    with (ff2)
        instance_destroy()
    con = 37
    alarm[4] = 60
}
if (con == 38)
{
    con = 39
    alarm[4] = 30
}
if (con == 39)
{
    if (__view_get(0, 0) > 0)
        __view_set(0, 0, (__view_get(0, 0) - 16))
}
if (con == 40)
{
    scr_anyface_dialogue(1, 0, "D", "M", -40, 24)
    global.msg[1] = scr_gettext("obj_cookshowevent_376")
    mett.image_speed = 0.25
    instance_create(0, 0, obj_dialoguer)
    __view_set(9, 0, 1584)
    obj_mainchara.cutscene = false
    con = 41
}
if (con == 41 && instance_exists(OBJ_WRITER) == 0)
{
    global.plot = 134
    mett.image_speed = 0
    con = 42
    global.interact = 0
}
if (con == 50)
{
    global.interact = 1
    obj_mainchara.cutscene = true
    __view_set(9, 0, -4)
    con = 51
}
if (con == 51)
{
    __view_set(0, 0, (__view_get(0, 0) + 3))
    if (__view_get(0, 0) >= 320)
    {
        __view_set(0, 0, 320)
        con = 52
    }
}
if (con == 52)
{
    with (obj_counterscroller)
        event_user(0)
    con = 53
    alarm[4] = 150
}
if (con == 54)
{
    with (obj_mettaton_npc)
        instance_destroy()
    with (obj_mettaton_actor)
        instance_destroy()
    mett = instance_create(280, 340, obj_mettaton_npc)
    mett.x = 280
    mett.hspeed = 1
    con = 55
    alarm[4] = 50
}
if (con == 56)
{
    global.msc = 0
    mett.hspeed = 0
    mett.image_speed = 0.25
    scr_anyface_dialogue(0, 1, "D", "M", -40, 24)
    global.msg[1] = scr_gettext("obj_cookshowevent_434")
    global.msg[2] = scr_gettext("obj_cookshowevent_435")
    global.msg[3] = scr_gettext("obj_cookshowevent_436")
    global.msg[4] = scr_gettext("obj_cookshowevent_437")
    instance_create(0, 0, obj_dialoguer)
    con = 57
}
if (con == 57 && instance_exists(OBJ_WRITER) == 0)
{
    global.plot = 134
    mett2 = instance_create(mett.x, mett.y, obj_mettaton_actor)
    mett2.depth = mett.depth
    mett2.sprite_index = mett.sprite_index
    mett2.image_speed = 0.25
    mett2.visible = true
    with (obj_mettaton_npc)
        instance_destroy()
    mett = mett2
    con = 58
    alarm[4] = 20
}
if (con == 59)
{
    mett.vspeed = -6
    con = 60
    alarm[4] = 30
}
if (con == 61)
{
    caster_free(-3)
    global.msc = 0
    global.msg[0] = scr_gettext("obj_cookshowevent_472")
    global.msg[1] = scr_gettext("obj_cookshowevent_473")
    global.msg[2] = scr_gettext("obj_cookshowevent_474")
    global.msg[3] = scr_gettext("obj_cookshowevent_475")
    global.msg[4] = scr_gettext("obj_cookshowevent_476")
    global.msg[5] = scr_gettext("obj_cookshowevent_477")
    global.msg[6] = scr_gettext("obj_cookshowevent_478")
    global.msg[7] = scr_gettext("obj_cookshowevent_479")
    scr_regulartext()
    with (obj_mainchara)
    {
        cutscene = true
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
    con = 61.1
    snd_play(snd_phone)
}
if (con == 61.1 && instance_exists(OBJ_WRITER) == 0)
{
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
    global.facing = 0
    jetpack = instance_create(obj_mainchara.x, (obj_mainchara.y + 10), obj_phonetojetpack)
    jetpack.clip = obj_mainchara
    con = 60.2
    alarm[4] = 150
}
if (con == 61.2)
    con = 62
if (con == 62 && instance_exists(OBJ_WRITER) == 0)
{
    __view_set(9, 0, -4)
    obj_mainchara.cutscene = true
    obj_mainchara.visible = false
    chara = instance_create(obj_mainchara.x, obj_mainchara.y, obj_npc_marker)
    chara.depth = 9000
    jetpack.clip = chara
    chara.sprite_index = spr_maincharau
    chara.visible = true
    chara.image_speed = 0
    con = 63
    alarm[4] = 30
}
if (con == 64)
{
    global.faceemotion = 6
    global.msg[0] = scr_gettext("obj_cookshowevent_515")
    global.msg[1] = scr_gettext("obj_cookshowevent_516")
    global.msg[2] = scr_gettext("obj_cookshowevent_517")
    instance_create(0, 0, obj_dialoguer)
    con = 65
}
if (con == 65 && instance_exists(OBJ_WRITER) == 0)
{
    race = caster_load("music/hotel_battle.ogg")
    global.currentsong = caster_loop(race, 1, 1)
    con = 66
}
if (con == 66)
{
    __view_set(1, 0, (__view_get(1, 0) - 5))
    if (chara.y >= (__view_get(1, 0) + 205))
        chara.y = (__view_get(1, 0) + 205)
    if (__view_get(1, 0) <= 90)
    {
        __view_set(1, 0, 90)
        chara.y = (__view_get(1, 0) + 205)
        con = 67
        obj_counterscroller.fakev = 3
        obj_counterscroller.mode = 1
        chara2 = instance_create(chara.x, chara.y, obj_jetpackchara)
        jetpack.clip = chara2
        with (chara)
            instance_destroy()
        chara = chara2
    }
}
if (con == 70)
{
    obj_mainchara.x = chara.x
    obj_mainchara.y = chara.y
    with (jetpack)
        instance_destroy()
    with (chara)
        instance_destroy()
    obj_mainchara.visible = true
    global.facing = 0
    con = 71
    alarm[4] = 20
}
if (con == 72)
{
    global.msg[0] = scr_gettext("obj_cookshowevent_565")
    global.msg[1] = scr_gettext("obj_cookshowevent_566")
    global.msg[2] = scr_gettext("obj_cookshowevent_567")
    global.msg[3] = scr_gettext("obj_cookshowevent_568")
    global.msg[4] = scr_gettext("obj_cookshowevent_569")
    global.msg[5] = scr_gettext("obj_cookshowevent_570")
    global.msg[6] = scr_gettext("obj_cookshowevent_571")
    global.msg[7] = scr_gettext("obj_cookshowevent_572")
    if (global.flag[377] == 1)
    {
        global.msg[0] = scr_gettext("obj_cookshowevent_575")
        global.msg[1] = scr_gettext("obj_cookshowevent_576")
        global.msg[2] = scr_gettext("obj_cookshowevent_577")
        global.msg[3] = scr_gettext("obj_cookshowevent_578")
        global.msg[4] = scr_gettext("obj_cookshowevent_579")
        global.msg[5] = scr_gettext("obj_cookshowevent_580")
        global.msg[6] = scr_gettext("obj_cookshowevent_581")
    }
    with (obj_mainchara)
    {
        cutscene = true
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
    global.typer = 5
    global.facechoice = 0
    global.msc = 0
    instance_create(0, 0, obj_dialoguer)
    snd_play(snd_phone)
    con = 73
}
if (con == 73 && instance_exists(OBJ_WRITER) == 0)
{
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
    dn = 1
    con = 74
    global.facing = 0
    global.typer = 5
    global.msc = 0
    snd_play(snd_charjoined)
    global.msg[0] = "\\W* (You feel like your&  connection to \\YAlphys\\W is&  growing deeper...)/%%"
    scr_regulartext()
    __view_set(9, 0, 1584)
    __view_set(5, 0, 140)
}
if (con == 74 && instance_exists(OBJ_WRITER) == 0)
{
    flowey = instance_create(40, 360, obj_stalkerflowey)
    caster_free(-3)
    global.flag[17] = 0
    global.interact = 0
    global.plot = 135
    with (obj_kitchenforcefield)
        instance_destroy()
    con = 75
    scr_tempsave()
    instance_destroy()
}
