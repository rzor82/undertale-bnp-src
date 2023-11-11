script_execute(scr_depth, 0, 0, 0, 0, 0)
if (global.flag[107] == 0)
{
    hasdog = 0
    for (i = 0; i < 8; i += 1)
    {
        if (global.item[i] == 27)
            hasdog = 1
    }
    if (hasdog == 0)
    {
        noroom = 0
        scr_itemget(27)
        if (noroom != 1)
            global.flag[107] = 2
    }
}
if (con == 1 && instance_exists(OBJ_WRITER) == 0)
{
    myinteract = 0
    global.interact = 1
    caster_pause(global.currentsong)
    snd_play(snd_grab)
    if (global.facing != 3)
    {
        dog = instance_create((obj_mainchara.x + 30), (obj_mainchara.y + 10), obj_tobdog_pendant)
        dog.sprite_index = spr_tobdogr
    }
    else
    {
        dog = instance_create((obj_mainchara.x - 30), (obj_mainchara.y + 10), obj_tobdog_pendant)
        dog.sprite_index = spr_tobdogl
    }
    alarm[4] = 30
    con = 2
}
if (con == 3)
{
    with (dog)
        con = 1
    caster_play(dogsong, 1, 1)
    con = 4
}
if (con == 5)
{
    res = floor(random(5))
    scr_itemget((29 + res))
    global.interact = 0
    caster_stop(dogsong)
    caster_set_volume(global.currentsong, 0)
    caster_resume(global.currentsong)
    instance_create(0, 0, obj_musfadein)
    global.flag[107] = 1
    if (global.osflavor >= 1)
    {
        ossafe_ini_open("undertale.ini")
        ini_write_real("General", "DB", 1)
        ossafe_ini_close()
        ossafe_savedata_save()
    }
    con = 6
    myinteract = 0
    anti_buffer = 0
}
if (con == 6 && (!instance_exists(OBJ_WRITER)))
    con = 7
if (con == 7 && (!instance_exists(OBJ_WRITER)))
    global.interact = 0
if (con > 0 && con < 6)
{
    global.interact = 1
    anti_buffer = 1
}
