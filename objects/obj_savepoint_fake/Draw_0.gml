if (myinteract == 0)
    draw_sprite(sprite_index, image_index, x, y)
if (myinteract == 1)
{
    if (con == 0)
    {
        audio_play_sound(snd_heal_c, 90, false)
        con = 1
        drawthis = 1
        alarm[4] = 90
        xx = __view_get(0, 0)
        yy = (__view_get(1, 0) - 10)
        nowxx = __view_get(0, 0)
        nowyy = (__view_get(1, 0) - 10)
    }
}
if (drawthis == 1)
{
    global.interact = 1
    iniread = ossafe_ini_open("undertale.ini")
    name = ini_read_string("General", "Name", "EMPTY")
    love = ini_read_real("General", "Love", 0)
    time = ini_read_real("General", "Time", 0)
    kills = ini_read_real("General", "Kills", 0)
    roome = ini_read_real("General", "Room", 0)
    ossafe_ini_close()
    scr_setfont(fnt_maintext)
    draw_set_color(c_white)
    ossafe_fill_rectangle((54 + xx), (49 + yy), (265 + xx), (135 + yy))
    draw_set_color(c_black)
    ossafe_fill_rectangle((57 + xx), (52 + yy), (262 + xx), (132 + yy))
    draw_set_color(c_white)
    minutes = floor((time / 1800))
    seconds = round((((time / 1800) - minutes) * 60))
    if (seconds == 60)
        seconds = 59
    if (seconds < 10)
        seconds = ("0" + string(seconds))
    var roomname = scr_roomname(roome)
    var lvtext = scr_gettext("save_menu_lv", string(love))
    var timetext = scr_gettext("save_menu_time", string(minutes), string(seconds))
    var namesize = string_width(string_hash_to_newline(substr(name, 1, 6)))
    var lvsize = string_width(string_hash_to_newline(lvtext))
    var timesize = string_width(string_hash_to_newline(timetext))
    var x_center = (xx + 160)
    var lvpos = round((((x_center + (namesize / 2)) - (timesize / 2)) - (lvsize / 2)))
    draw_text((70 + xx), (60 + yy), string_hash_to_newline(name))
    draw_text(lvpos, (60 + yy), string_hash_to_newline(lvtext))
    draw_text(((250 + xx) - timesize), (60 + yy), string_hash_to_newline(timetext))
    if (global.language == "ja")
        scr_drawtext_centered(x_center, (80 + yy), roomname)
    else
        draw_text((70 + xx), (80 + yy), string_hash_to_newline(roomname))
    draw_text((xx + 85), (yy + 110), string_hash_to_newline(scr_gettext("save_menu_save")))
    draw_text((xx + 175), (yy + 110), string_hash_to_newline(scr_gettext("save_menu_return")))
}
if (con == 2)
{
    punch = caster_load("music/sfx_gigapunch.ogg")
    explosion = caster_load("music/explosion.ogg")
    caster_play(punch, 0.7, 0.9)
    crack = 1
    shake = 6
    instance_create(0, 0, obj_vsflowey_shaker)
    con = 3
    alarm[4] = 50
}
if (con == 4)
{
    caster_play(punch, 0.85, 0.83)
    crack = 2
    shake = 8
    drawthis = 0
    instance_create(0, 0, obj_vsflowey_shaker)
    con = 5
    alarm[4] = 50
}
if (con == 6)
{
    caster_play(punch, 1, 0.76)
    crack = 3
    shake = 10
    drawthis = 0
    instance_create(0, 0, obj_vsflowey_shaker)
    con = 7
    alarm[4] = 60
}
if (con == 8)
{
    crack = -1
    drawthis = -1
    con = 9
    i = 0
    instance_create(0, 0, obj_vsflowey_shaker)
    fl = instance_create((nowxx + 114), (nowyy + 56), obj_floweyfacer)
    caster_play(explosion, 1, 1)
    repeat (6)
    {
        in = instance_create((nowxx + 54), (nowyy + 49), obj_fileerased_part)
        in.image_index = i
        i += 1
    }
    alarm[4] = 90
}
if (con == 10)
{
    fl.type = 1
    obj_mainchara_fake.cutscene = true
    con = 11
    alarm[4] = 6
}
if (con == 12)
{
    hellmus = caster_load("music/yourbestfriend_3.ogg")
    fl.type = 2
    con = 13
    alarm[4] = 10
}
if (con == 13)
{
    obj_mainchara_fake.y += 6
    obj_floweyfacer.y -= 2
}
if (con == 14)
{
    fl.type = 1
    con = 15
    alarm[4] = 8
}
if (con == 16)
{
    with (obj_floweyfacer)
    {
        moved = 2
        xx = x
        yy = y
    }
    fl.type = 0
    con = 17
    alarm[4] = 20
}
if (con == 18)
{
    caster_loop(hellmus, 0.8, 0.7)
    global.msg[0] = scr_gettext("obj_savepoint_fake_266")
    global.msg[1] = scr_gettext("obj_savepoint_fake_267")
    global.msg[2] = scr_gettext("obj_savepoint_fake_268")
    global.msg[3] = scr_gettext("obj_savepoint_fake_269")
    global.msg[4] = scr_gettext("obj_savepoint_fake_270")
    global.msg[5] = scr_gettext("obj_savepoint_fake_271")
    global.msg[6] = scr_gettext("obj_savepoint_fake_272")
    global.msg[7] = scr_gettext("obj_savepoint_fake_273")
    global.msg[8] = scr_gettext("obj_savepoint_fake_274")
    global.msg[9] = scr_gettext("obj_savepoint_fake_275")
    global.typer = 9
    global.msg[10] = scr_gettext("obj_savepoint_fake_278")
    mywriter = instance_create((__view_get(0, 0) + 30), (__view_get(1, 0) + 100), obj_flowey_writer)
    con = 19
}
if (con == 19)
{
    if (instance_exists(mywriter) == 0)
    {
        laugh = caster_load("music/f_newlaugh.ogg")
        fl.type = 1
        con = 20
        alarm[4] = 10
    }
}
if (con == 21)
{
    obj_floweyfacer.set = 1
    fl.type = 2
    caster_play(laugh, 1, 0.9)
    con = 22
    alarm[4] = 70
}
if (con == 23)
{
    fl.type = 1
    con = 24
    alarm[4] = 10
}
if (con == 25)
{
    fl.type = 0
    con = 26
}
if (con == 26)
{
    global.msg[0] = scr_gettext("obj_savepoint_fake_332")
    global.msg[1] = scr_gettext("obj_savepoint_fake_333")
    global.msg[2] = scr_gettext("obj_savepoint_fake_334")
    global.msg[3] = scr_gettext("obj_savepoint_fake_335")
    global.msg[4] = scr_gettext("obj_savepoint_fake_337")
    global.msg[5] = scr_gettext("obj_savepoint_fake_338")
    global.msg[6] = scr_gettext("obj_savepoint_fake_339")
    global.msg[7] = scr_gettext("obj_savepoint_fake_340")
    global.msg[8] = scr_gettext("obj_savepoint_fake_341")
    global.msg[9] = scr_gettext("obj_savepoint_fake_342")
    global.msg[10] = scr_gettext("obj_savepoint_fake_343")
    global.msg[11] = scr_gettext("obj_savepoint_fake_344")
    global.msg[12] = scr_gettext("obj_savepoint_fake_345")
    global.msg[13] = scr_gettext("obj_savepoint_fake_346")
    global.msg[14] = scr_gettext("obj_savepoint_fake_347")
    global.typer = 9
    mywriter = instance_create((__view_get(0, 0) + 30), (__view_get(1, 0) + 100), obj_flowey_writer)
    con = 27
}
if (con == 27)
{
    if instance_exists(obj_flowey_writer)
    {
        if (obj_flowey_writer.stringno == 12)
        {
            with (obj_floweyfacer)
            {
                if (type == 0)
                {
                    image_index = 0
                    sprite_index = spr_tv_floweyface_everyone
                    type = 3
                }
            }
        }
        if (obj_flowey_writer.stringno == 13)
        {
            with (obj_floweyfacer)
            {
                if (type == 3)
                {
                    image_speed = 0
                    image_index = 0
                    type = 0
                }
            }
        }
    }
    if (instance_exists(obj_flowey_writer) == 0)
    {
        con = 28
        fl.type = 1
        alarm[4] = 20
    }
}
if (con == 29)
{
    global.faceemotion = 0
    fl.type = 2
    fl.set = 2
    caster_play(laugh, 1, 0.8)
    con = 30
    alarm[4] = 70
}
if (con == 31)
{
    fl.type = 1
    con = 32
    alarm[4] = 10
}
if (con == 33)
{
    fl.type = 0
    con = 34
}
if (con == 34)
{
    global.msg[0] = scr_gettext("obj_savepoint_fake_435")
    global.msg[1] = scr_gettext("obj_savepoint_fake_436")
    if (ossafe_file_exists("file0") == 0)
    {
        global.msg[0] = scr_gettext("obj_savepoint_fake_439")
        global.msg[1] = scr_gettext("obj_savepoint_fake_440")
    }
    global.typer = 6
    global.msg[2] = scr_gettext("obj_savepoint_fake_442")
    global.msg[3] = scr_gettext("obj_savepoint_fake_443")
    global.msg[4] = scr_gettext("obj_savepoint_fake_444")
    global.msg[5] = scr_gettext("obj_savepoint_fake_445")
    global.msg[6] = scr_gettext("obj_savepoint_fake_446")
    global.msg[7] = scr_gettext("obj_savepoint_fake_447")
    global.typer = 9
    mywriter = instance_create((__view_get(0, 0) + 30), (__view_get(1, 0) + 100), obj_flowey_writer)
    con = 35
}
if (con == 35)
{
    if (instance_exists(obj_flowey_writer) == 0)
    {
        obj_mainchara_fake.vspeed = -2
        obj_mainchara_fake.image_speed = 0.334
        obj_mainchara_fake.moving = true
        con = 36
        alarm[4] = 6
    }
}
if (con == 37)
{
    obj_mainchara_fake.vspeed = 0
    obj_mainchara_fake.image_speed = 0
    obj_mainchara_fake.moving = false
    con = 38
    alarm[4] = 20
}
if (con == 39)
{
    global.msg[0] = scr_gettext("obj_savepoint_fake_490")
    global.msg[1] = scr_gettext("obj_savepoint_fake_491")
    global.msg[2] = scr_gettext("obj_savepoint_fake_492")
    global.typer = 16
    mywriter = instance_create((__view_get(0, 0) + 30), (__view_get(1, 0) + 100), obj_flowey_writer)
    con = 40
}
if (con == 40)
{
    if (instance_exists(obj_flowey_writer) == 0)
    {
        global.faceemotion = 5
        global.msg[0] = scr_gettext("obj_savepoint_fake_507")
        caster_free(-3)
        global.typer = 119
        mywriter = instance_create((__view_get(0, 0) + 30), (__view_get(1, 0) + 100), obj_flowey_writer)
        con = 41
    }
}
if (con == 41)
{
    if (instance_exists(obj_flowey_writer) == 0)
    {
        with (obj_floweyfacer)
            instance_destroy()
        instance_create(0, 0, obj_floweybattler2)
        con = 42
    }
}
if (crack == 1)
    draw_sprite(spr_fileerased_crack, 0, (54 + xx), (49 + yy))
if (crack == 2 || crack == 3)
{
    var fileerased = spr_fileerased
    if (global.language == "ja")
        fileerased = spr_fileerased_ja
    draw_sprite(fileerased, 0, (54 + xx), (49 + yy))
    draw_sprite(spr_fileerased_crack, (crack - 1), (54 + xx), (49 + yy))
}
if (shake >= 0)
{
    xx = (nowxx + (shake * choose(1, -1)))
    yy = (nowyy + (shake * choose(1, -1)))
    shake -= 1
}
