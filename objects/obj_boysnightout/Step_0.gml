day = current_weekday
if (con == 1)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_boysnightout_80")
    con = 1.1
    scr_regulartext()
}
if (con == 1.1 && instance_exists(OBJ_WRITER) == 0)
{
    global.facing = 1
    if (day == 0 || day == 3 || day == 6)
    {
        dragon = scr_marker(545, 310, spr_royalguard_bug_l)
        rabbit = scr_marker(530, 290, spr_royalguard_cat_l)
    }
    else
    {
        dragon = scr_marker(545, 310, spr_royalguard_dragon_l)
        rabbit = scr_marker(530, 290, spr_royalguard_rabbit_l)
    }
    with (dragon)
        scr_depth()
    with (rabbit)
        scr_depth()
    with (dragon)
        image_speed = 0.25
    with (rabbit)
        image_speed = 0.25
    dragon.hspeed = -3
    rabbit.hspeed = -3
    con = 2
}
if (con == 2)
{
    if (dragon.x < (obj_mainchara.x + 70) && rabbit.x < (obj_mainchara.x + 70))
    {
        obj_npc_marker.hspeed = 0
        obj_npc_marker.image_speed = 0
        obj_npc_marker.image_index = 0
        con = 3
    }
}
if (con == 3)
{
    if (day == 0 || day == 3 || day == 6)
    {
        global.msg[0] = "* We were tipped off that^1,&  like^1, a human with a striped&  shirt was in the area./"
        global.msg[1] = "* Wandering around Hotland^1,&  who knows what could happen?/"
        global.msg[2] = "* But^1, like^1, fear not^1, citizen!/"
        global.msg[3] = "* Come with us and you'll&  be totally safe^1, okay?/%%"
        global.msg[4] = scr_gettext("obj_boysnightout_117")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_boysnightout_113")
        global.msg[1] = scr_gettext("obj_boysnightout_114")
        global.msg[2] = scr_gettext("obj_boysnightout_115")
        global.msg[3] = scr_gettext("obj_boysnightout_116")
        global.msg[4] = scr_gettext("obj_boysnightout_117")
    }
    scr_regulartext()
    con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == 0)
{
    if (day == 0 || day == 3 || day == 6)
    {
        with (dragon)
            sprite_index = spr_royalguard_bug_r
        with (rabbit)
            sprite_index = spr_royalguard_cat_r
    }
    else
    {
        with (dragon)
            sprite_index = spr_royalguard_dragon_r
        with (rabbit)
            sprite_index = spr_royalguard_rabbit_r
    }
    obj_npc_marker.hspeed = 3
    obj_mainchara.hspeed = 3
    obj_npc_marker.image_speed = 0.25
    obj_mainchara.image_speed = 0.25
    con = 5
    alarm[4] = 30
}
if (con == 6)
{
    obj_npc_marker.hspeed = 0
    obj_npc_marker.image_speed = 0
    obj_npc_marker.image_index = 0
    con = 7
    alarm[4] = 3
}
if (con == 8)
{
    obj_mainchara.hspeed = 0
    obj_mainchara.image_speed = 0
    obj_mainchara.image_index = 0
    con = 9
    alarm[4] = 20
}
if (con == 10)
{
    if (day == 0 || day == 3 || day == 6)
    {
        with (rabbit)
            sprite_index = spr_royalguard_cat_d
    }
    else
    {
        with (rabbit)
            sprite_index = spr_royalguard_rabbit_d
    }
    if (day == 0 || day == 3 || day == 6)
    {
        global.msg[0] = "* ... What^1?&* Like^1, 04^1, what did you say?/"
        global.msg[1] = scr_gettext("obj_boysnightout_157")
        global.msg[2] = scr_gettext("obj_boysnightout_158")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_boysnightout_156")
        global.msg[1] = scr_gettext("obj_boysnightout_157")
        global.msg[2] = scr_gettext("obj_boysnightout_158")
    }
    scr_regulartext()
    con = 11
}
if (con == 11 && instance_exists(OBJ_WRITER) == 1)
{
}
if (con == 11 && instance_exists(OBJ_WRITER) == 0)
{
    if (day == 0 || day == 3 || day == 6)
    {
        with (rabbit)
            sprite_index = spr_royalguard_cat_l
        with (dragon)
            sprite_index = spr_royalguard_bug_l
    }
    else
    {
        with (rabbit)
            sprite_index = spr_royalguard_rabbit_l
        with (dragon)
            sprite_index = spr_royalguard_dragon_l
    }
    con = 12
    alarm[4] = 90
}
if (con == 13)
{
    if (day == 0 || day == 3 || day == 6)
    {
        with (rabbit)
            sprite_index = spr_royalguard_cat_d
    }
    else
    {
        with (rabbit)
            sprite_index = spr_royalguard_rabbit_d
    }
    if (day == 0 || day == 3 || day == 6)
    {
        global.msg[0] = "* Like^1, uh.../"
        global.msg[1] = "* I didn't think we were actually&  going to find them!/"
        global.msg[2] = "* This is totally embarrassing^1,&  you know?/"
        global.msg[3] = scr_gettext("obj_boysnightout_184")
        con = 14
        scr_regulartext()
    }
    else
    {
        global.msg[0] = scr_gettext("obj_boysnightout_181")
        global.msg[1] = scr_gettext("obj_boysnightout_182")
        global.msg[2] = scr_gettext("obj_boysnightout_183")
        global.msg[3] = scr_gettext("obj_boysnightout_184")
        con = 14
        scr_regulartext()
    }
}
if (con == 14 && instance_exists(OBJ_WRITER) == 1)
{
    if (OBJ_WRITER.stringno == 2)
    {
        if (day == 0 || day == 3 || day == 6)
        {
            with (rabbit)
                sprite_index = spr_royalguard_cat_r
        }
        else
        {
            with (rabbit)
                sprite_index = spr_royalguard_rabbit_r
        }
    }
    if (OBJ_WRITER.stringno == 3)
    {
        if (day == 0 || day == 3 || day == 6)
        {
            with (rabbit)
                sprite_index = spr_royalguard_cat_l
        }
        else
        {
            with (rabbit)
                sprite_index = spr_royalguard_rabbit_l
        }
    }
}
if (con == 14 && instance_exists(OBJ_WRITER) == 0)
{
    if (day == 0 || day == 3 || day == 6)
        global.battlegroup = 76
    else
        global.battlegroup = 49
    global.specialspare = 1
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    con = 15
    alarm[4] = 33
}
if (con == 16)
{
    with (obj_speedrun_tracker)
        guards = 0
    global.mercy = 0
    global.interact = 0
    caster_resume(global.currentsong)
    if (global.flag[12] == 1)
        global.flag[402] = 1
    con = 17
    global.plot = 146
    with (obj_npc_marker)
        instance_destroy()
}
if (con > 0 && con < 16 && global.interact == 0)
{
    with (obj_speedrun_tracker)
        guards = 1
}
