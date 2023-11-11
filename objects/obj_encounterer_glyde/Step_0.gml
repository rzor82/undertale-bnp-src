if (global.encounter > steps)
{
    if (global.phasing == 0)
    {
        script_execute(scr_steps, 840, 680, 16, 203)
        global.encounter = 0
        global.interact = 1
        con = 4
        if murder
            con = 8
    }
}
if (gottemlol == 1 && obj_mainchara.y > 400 && con < 3)
    con = 3
if (con == 1)
{
    global.interact = 1
    con = 2
    alarm[4] = 15
}
if (con == 3)
{
    global.interact = 1
    con = 4
}
if (con == 4 && (!instance_exists(obj_dialoguer)))
{
    global.currentroom = room_tundra_iceexit
    scr_tempsave()
    global.currentroom = room
    stall = 0
    gottemlol = 0
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.msg[0] = "* Hey^1, hey^1, hey^2!&* It's Glyde time^1, baby!/%%"
    if (global.flag[282] == 4)
        global.msg[0] = "* Hey^1, hey^1, hey^2!&* Look who's back for more!/%%"
    caster_pause(global.currentsong)
    d = instance_create(0, 0, obj_dialoguer)
    if (obj_mainchara.y < 510)
        d.side = 1
    d.side = 1
    glyde = scr_marker((obj_mainchara.x - 17), (obj_mainchara.y - 240), spr_npc_glyde)
    glyde.image_speed = 0.2
    con = 5
}
if (con == 5 && (!instance_exists(obj_dialoguer)))
{
    global.facing = 2
    glyde.vspeed = 4
    con = 6
}
if (con == 6)
{
    if (glyde.vspeed == 0)
    {
        con = 7
        alarm[4] = 15
    }
    else if (glyde.y > (obj_mainchara.y - 80))
    {
        snd_play(snd_break2)
        glyde.vspeed = 0
    }
}
if (con == 8)
{
    global.specialbattle = 1
    global.battlegroup = 135
    if (alldead == 2)
        global.battlegroup = 19
    if (alldead == 1)
    {
        global.flag[222] = 1
        global.battlegroup = 19
        alldead = 2
    }
    if instance_exists(glyde)
        instance_create(0, 0, obj_battler)
    else
        instance_create(0, 0, obj_battleblcon)
    con = 9
}
if (con == 9 && (!instance_exists(obj_battler)) && (!instance_exists(obj_battleblcon)))
{
    global.mercy = 0
    if instance_exists(glyde)
    {
        global.currentsong = mus_silence
        con = 10
    }
    else
    {
        global.interact = 0
        instance_destroy()
    }
}
if (con == 10)
{
    if (global.flag[282] == 2 || (global.flag[282] == 0 && global.flag[12] == 0))
    {
        with (glyde)
            instance_destroy()
    }
    else
    {
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.interact = 1
        global.msg[0] = "\\K0* Wow^1, \\K1BOOORIIIING^1!\\K0&* I'll go find someone&  else to show off to./"
        global.msg[1] = "* Later^1, chump!/%%"
        if (global.flag[282] == 4)
        {
            global.msg[0] = "\\K0* \\K1SHEEESH^1,\\K0 you came back&  just to ignore me?/"
            global.msg[1] = "* Talk about a snoozefest./"
            global.msg[2] = "* Later^1, chump!/%%"
            global.flag[282] = 5
        }
        else
            global.flag[282] = 4
        d2 = instance_create(0, 0, obj_dialoguer)
        if (obj_mainchara.y < 510)
            d2.side = 1
    }
    con = 11
}
if (con == 11 && (!instance_exists(obj_dialoguer)))
{
    if (global.flag[282] != 0 && global.flag[282] != 2)
    {
        with (glyde)
            hspeed = 4
        snd_play(snd_escaped)
    }
    global.interact = 0
    global.facing = 0
    global.currentsong = caster_load("music/mystery.ogg")
    if (global.flag[282] != 0 && global.flag[282] != 2)
        caster_loop(global.currentsong, 0.8, 0.95)
    con = 12
    instance_destroy()
}
