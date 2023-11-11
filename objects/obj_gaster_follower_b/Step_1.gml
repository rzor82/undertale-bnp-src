script_execute(scr_depth, 0, 0, 0, 0, 0)
scr_npc_anim()
if (gcon == 1 && global.interact == 0)
{
    gtimer += 1
    if (gtimer >= 8 && (!instance_exists(OBJ_WRITER)))
    {
        global.interact = 1
        myinteract = -1
        visible = false
        girl = scr_marker(x, y, spr_g_follower_1)
        girl.image_speed = 0.2
        with (girl)
            script_execute(scr_depth, 0, 0, 0, 0, 0)
        caster_free(-3)
        global.msg[0] = scr_gettext("obj_gaster_follower_b_102")
        gcon = 2
        global.typer = 5
        global.msc = 0
        global.fc = 0
        d = instance_create(x, y, obj_dialoguer)
        d.side = 0
    }
}
if (gcon == 2 && (!instance_exists(OBJ_WRITER)))
{
    snd_play(snd_mysterygo)
    global.flag[5] = 0
    global.interact = 0
    gcon = 3
    with (girl)
        instance_destroy()
    instance_destroy()
}
