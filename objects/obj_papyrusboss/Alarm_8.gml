if (bonetalk3 == 0)
{
    vol = caster_get_volume(global.batmusic)
    global.msg[0] = scr_gettext("obj_papyrusboss_402")
    global.msg[1] = scr_gettext("obj_papyrusboss_403")
    global.msg[2] = scr_gettext("obj_papyrusboss_404")
    global.msg[3] = scr_gettext("obj_papyrusboss_405")
    global.msg[4] = scr_gettext("obj_papyrusboss_406")
    global.typer = 22
    blcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
    blconwdS = instance_create((blcon.x + blcon_textofs), (blcon.y + 10), OBJ_NOMSCWRITER)
    bonetalk3 = 1
}
alarm[8] = 2
if (bonetalk3 == 1 && instance_exists(OBJ_WRITER) == 0)
{
    vol = 0
    with (blcon)
        instance_destroy()
    dontcancel = 0
    alarm[8] = -2
    bonetalk3 = 2
    mercymod = 8000
    global.msg[0] = scr_gettext("obj_papyrusboss_423")
    global.monsterdef[myself] = ((-global.monsterhp[myself]) * 2)
}
if (!(variable_instance_exists(id, "vol")))
    vol = caster_get_volume(global.batmusic)
if (vol > 0.01)
    vol -= 0.01
caster_set_volume(global.batmusic, vol)
