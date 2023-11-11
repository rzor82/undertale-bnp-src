if (global.flag[370] == 2 && global.hp == 1 && global.flag[372] == 0 && con == 0 && global.interact == 0 && global.flag[367] == 0 && global.plot < 184)
{
    if (room == room_fire_lasers1)
    {
        with (obj_speedrun_tracker)
            beowulf = 1
    }
    global.msc = 0
    global.msg[0] = scr_gettext("obj_laserswitch1_119")
    global.msg[1] = scr_gettext("obj_laserswitch1_120")
    global.msg[2] = scr_gettext("obj_laserswitch1_121")
    global.msg[3] = scr_gettext("obj_laserswitch1_122")
    scr_regulartext()
    snd_play(snd_phone)
    global.interact = 1
    con = 0.5
}
if (con == 0.5 && instance_exists(OBJ_WRITER) == 1)
{
    if instance_exists(obj_bluelaser_o)
    {
        obj_bluelaser_o.active = false
        obj_bluelaser_o.alarm[0] = 30
    }
}
if (con == 0.5 && instance_exists(OBJ_WRITER) == 0)
{
    sc = instance_create(0, 0, obj_soundcombo)
    with (sc)
    {
        sound1 = snd_switchpull_n
        sound2 = snd_spearappear
        alarm[1] = 8
    }
    event_user(0)
    con = 0.6
    timer = 0
}
if (con == 0.6)
{
    timer += 1
    if (timer > 30)
    {
        con = 1
        global.faceemotion = 0
        global.msg[0] = scr_gettext("obj_laserswitch1_161")
        global.msg[1] = scr_gettext("obj_laserswitch1_162")
        global.msg[2] = scr_gettext("obj_laserswitch1_163")
        global.msg[3] = scr_gettext("obj_laserswitch1_164")
        global.msg[4] = scr_gettext("obj_laserswitch1_165")
        global.msg[5] = scr_gettext("obj_laserswitch1_166")
        global.msg[6] = scr_gettext("obj_laserswitch1_167")
        global.msg[7] = scr_gettext("obj_laserswitch1_168")
        global.msg[8] = scr_gettext("obj_laserswitch1_169")
        global.msg[9] = scr_gettext("obj_laserswitch1_170")
        global.msg[10] = scr_gettext("obj_laserswitch1_171")
        if (room == room_fire_newsreport)
        {
            global.msg[1] = scr_gettext("obj_laserswitch1_174")
            global.msg[2] = scr_gettext("obj_laserswitch1_175")
            global.msg[3] = scr_gettext("obj_laserswitch1_176")
            global.msg[4] = scr_gettext("obj_laserswitch1_177")
            global.msg[5] = scr_gettext("obj_laserswitch1_178")
            global.msg[6] = scr_gettext("obj_laserswitch1_179")
        }
        scr_regulartext()
    }
}
if (con == 1 && instance_exists(OBJ_WRITER) == 0)
{
    if (room == room_fire_lasers1)
    {
        with (obj_speedrun_tracker)
            beowulf = 0
    }
    sc = instance_create(0, 0, obj_soundcombo)
    with (sc)
    {
        sound1 = snd_switchpull_n
        sound2 = snd_spearappear
        alarm[1] = 8
    }
    global.flag[372] = 1
    global.interact = 0
    event_user(0)
    con = 2
}
