if (con == 1)
{
    with (obj_hearthflame)
        instance_destroy()
    with (obj_mainchara)
    {
        other.marker = scr_marker(x, y, sprite_index)
        cutscene = true
        visible = false
    }
    marker.image_speed = 0
    wall = instance_create(__view_get(0, 0), 0, obj_solidlong)
    with (wall)
    {
        y = ((__view_get(1, 0) + __view_get(3, 0)) - (sprite_height * 2))
        other.wall_visual = scr_marker(x, y, spr_pixblk)
        other.wall_visual.image_xscale = (sprite_width * 2)
        other.wall_visual.image_yscale = (sprite_height * 2)
        with (other.wall_visual)
            scr_depth()
    }
    with (marker)
        scr_depth()
    global.facing = 2
    caster_free(global.currentsong)
    global.flag[17] = 1
    global.interact = 1
    snd_play(snd_impact)
    alarm[4] = 30
    if special
        con = 19
    else
        con = 2
}
else if (con == 2)
    global.interact = 1
else if (con == 3)
{
    marker.sprite_index = spr_maincharau
    if (global.flag[5] == 69)
    {
        global.typer = 124
        giga_a = instance_create(20, (__view_get(3, 0) + 30), obj_FinalWriter)
        giga_b = instance_create(20, (__view_get(3, 0) + 60), obj_FinalWriter)
        giga_a.string0 = "\\K1I'M MAKING MAC AND CHEESE"
        giga_b.string0 = " AND NOBODY CAN STOP ME! "
        giga_b.alarm[0] = -1
        with (obj_FinalWriter)
        {
            textscale = 0.9
            do_asriel_typer = 0
            wx = x
            wy = y
        }
    }
    else
    {
        global.msc = 0
        global.typer = 100
        global.msg[0] = "So the worm has decided&to come out and play.../%%"
        instance_create(50, (__view_get(1, 0) + 10), OBJ_WRITER)
    }
    con = 4
}
else if (con == 4 && (!instance_exists(OBJ_WRITER)))
{
    if instance_exists(obj_FinalWriter)
    {
        if (giga_num == 1 && giga_a.active && giga_a.string0 == giga_a.string1)
        {
            with (giga_b)
                alarm[0] = 10
            giga_num = 2
        }
        else if (giga_num == 2 && giga_b.active && giga_b.string0 == giga_b.string1)
        {
            alarm[0] = 60
            giga_num = 3
        }
    }
    else
    {
        global.typer = 5
        draw_set_alpha(1)
        global.msg[0] = scr_gettext("obj_phonecall_room_190")
        global.msg[1] = scr_gettext("obj_phonecall_room_191")
        global.msg[2] = "* W^1-wha\\T0 \\E0 %"
        global.msg[3] = "\\F0\\T0 %%"
        snd_play(snd_phone)
        obj_mainchara.y -= 200
        instance_create(0, 0, obj_dialoguer)
        obj_mainchara.y += 200
        con = 5
    }
}
else if (con == 5 && (!instance_exists(obj_dialoguer)))
{
    snd_play(snd_rurus_appear)
    instance_create(x, y, obj_rurus_appear)
    con = 6
}
else if (con == 6 && ((!instance_exists(obj_rurus_appear)) || obj_rurus_appear.rect_width <= 0))
{
    with (obj_rurus_appear)
        instance_destroy()
    alarm[4] = 20
    show = 1
    con = 7
}
else if (con == 8)
{
    global.currentsong = mus_rurus
    caster_loop(global.currentsong, 1, 1)
    global.typer = 124
    scr_anyface_dialogue(0, 0, "X", "Y", -40, 20)
    global.msg[1] = "* I am Rouxls Kaard^1,&  thou're greatest&  adversary!/"
    global.msg[2] = "\\E4* Thou may have clawedst&  past all thouse&  otherest conundrums.../"
    global.msg[3] = "\\K0\\E2* But \\K1THOUSE\\K0 were created&  by \\K1UTTER WEAKLINGS!\\K0/"
    global.msg[4] = "\\K0\\E3* Now^1, prepare thouself^1.&* For the \\K1STRONGEST\\K0 puzzle&  of \\K1THOUST LIFE!\\K0/%%"
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    con = 9
}
else if (con == 9 && (!instance_exists(obj_dialoguer)))
{
    layer_set_visible(shooter_tile, 1)
    x -= (sprite_width * 1.25)
    snd_play(snd_heal_c)
    instance_create(0, 0, obj_flasher)
    target = instance_create(floor((__view_get(2, 0) / 2)), __view_get(1, 0), obj_targetguy)
    target.image_xscale = 0.8
    target.image_yscale = 0.8
    target.x -= floor((target.sprite_width / 2))
    shooter = instance_create(floor((__view_get(2, 0) / 2)), 165, obj_shootguy)
    shooter.image_xscale = 0.8
    shooter.image_yscale = 0.8
    shooter.x -= floor((shooter.sprite_width / 2))
    marker.x = floor(((__view_get(2, 0) / 2) - (marker.sprite_width / 2)))
    marker.y = 190
    global.facing = 2
    alarm[4] = 45
    con = 10
    with (shooter)
        scr_depth()
    with (target)
        scr_depth()
    with (marker)
        scr_depth()
}
else if (con == 11)
{
    global.typer = 124
    global.msg[0] = "\\K0\\E2* \\K1TOIL^1,\\K0 Worm!/%%"
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    con = 12
}
else if (con == 12 && (!instance_exists(obj_dialoguer)))
{
    obj_mainchara.x = marker.x
    obj_mainchara.y = marker.y
    with (obj_mainchara)
        visible = true
    with (marker)
        visible = false
    global.interact = 0
    con = 13
}
else if (con == 15)
{
    global.interact = 1
    if (x < remx)
    {
        x += 3
        layer_set_visible(shooter_tile, 0)
        with (obj_shootguy)
            instance_destroy()
        with (obj_targetguy)
            instance_destroy()
        with (obj_mainchara)
            visible = false
        with (marker)
        {
            visible = true
            if (y < ystart)
            {
                sprite_index = spr_maincharad
                image_speed = 0.25
                vspeed = 3
            }
            else
            {
                sprite_index = spr_maincharau
                image_speed = 0
                image_index = 0
                vspeed = 0
            }
        }
    }
    else
    {
        global.facing = 2
        marker.sprite_index = spr_maincharau
        marker.vspeed = 0
        global.typer = 124
        global.msg[0] = "* .../"
        global.msg[1] = "\\K1\\E1* GOD/"
        global.msg[2] = "\\K1\\E6* DAMN IT/%%"
        obj_mainchara.y -= 200
        instance_create(0, 0, obj_dialoguer)
        obj_mainchara.y += 200
        x = remx
        con = 16
    }
}
else if (con == 16 && (!instance_exists(obj_dialoguer)))
{
    wall_visual.vspeed = 5
    wall.vspeed = 5
    vspeed = -5
    con = 17
}
else if (con == 17 && y < (__view_get(1, 0) - sprite_height))
{
    obj_mainchara.x = marker.x
    obj_mainchara.y = marker.y
    with (obj_mainchara)
    {
        cutscene = false
        visible = true
    }
    with (wall_visual)
        instance_destroy()
    with (marker)
        instance_destroy()
    with (wall)
        instance_destroy()
    global.typer = 5
    global.facing = 0
    global.msg[0] = scr_gettext("obj_phonecall_room_190")
    global.msg[1] = scr_gettext("obj_phonecall_room_191")
    global.msg[2] = "* I^1-I'm so sorry^1, are&  you ok?/"
    global.msg[3] = "\\E4* I don't know w^1-who that&  was or how they got&  here./"
    global.msg[4] = "\\E5* Let's just keep going./"
    global.msg[5] = "\\T0 \\E0 \\F0* Click.../%%"
    instance_create(0, 0, obj_dialoguer)
    snd_play(snd_phone)
    con = 18
}
else if (con == 18 && (!instance_exists(obj_dialoguer)))
{
    global.flag[415] = 1
    global.interact = 0
    global.flag[17] = 0
    instance_destroy()
}
else if (con == 19)
    global.interact = 1
else if (con == 20)
{
    snd_play(snd_rurus_appear)
    instance_create(x, y, obj_rurus_appear)
    con = 21
}
else if (con == 21 && ((!instance_exists(obj_rurus_appear)) || obj_rurus_appear.rect_width <= 0))
{
    with (obj_rurus_appear)
        instance_destroy()
    alarm[4] = 20
    show = 1
    con = 22
}
else if (con == 23)
{
    caster_loop(mus_rurus, 1, 1)
    global.typer = 124
    global.msg[0] = "\\K1* WITH THE POWER BESTOETH UPON ME^1&  BY ME..^3.&* I GRANT THEE YOUR MENU BACK!/%%"
    obj_mainchara.y -= 200
    scr_regulartext()
    obj_mainchara.y += 200
    con = 24
}
else if (con == 24 && (!instance_exists(obj_dialoguer)))
{
    show = 0
    snd_play(snd_rurus_appear)
    with (instance_create(x, y, obj_rurus_appear))
        reverse = 1
    wall_visual.vspeed = 5
    wall.vspeed = 5
    con = 25
}
else if (con == 25)
{
    if ((!instance_exists(obj_rurus_appear)) || obj_rurus_appear.rect_width <= 0)
    {
        with (obj_mainchara)
        {
            cutscene = false
            visible = true
        }
        with (obj_rurus_appear)
            instance_destroy()
        with (wall_visual)
            instance_destroy()
        with (marker)
            instance_destroy()
        with (wall)
            instance_destroy()
        alarm[4] = 20
        con = 26
    }
    else if (caster_is_playing(mus_rurus) && obj_rurus_appear.timer > 15)
        caster_free(mus_rurus)
}
else if (con == 27)
{
    caster_loop(global.currentsong, 1, 1)
    global.facing = 0
    con = 18
}
else if (obj_mainchara.y > 250 && (!instance_exists(obj_dialoguer)) && con > 0 && fled == 0)
{
    global.interact = 1
    global.typer = 124
    scr_anyface_dialogue(0, 0, "X", "Y", -40, 20)
    global.msg[1] = "* Thou're attemptst to&  escape mine wrath!?/"
    global.msg[2] = "\\E1* No^1. No thine naught./%"
    global.msg[3] = "\\F0%%"
    obj_mainchara.y -= 200
    instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    fled = 1
}
if (fled == 1 && (!instance_exists(obj_dialoguer)))
{
    prevposition = obj_mainchara.y
    fled = 2
}
if (fled == 2)
{
    obj_mainchara.y = (prevposition - 5)
    global.facing = 2
    global.interact = 0
    fled = 0
}
