if (global.osflavor == 1 && attempted_close == 0 && ignore_close == 0)
    attempted_close = (external_call("window_command_check", 61536) || (global.debug == true && keyboard_check_pressed(vk_numpad8)))
if (attempted_close != 0 && con < 20)
{
    con = 70
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    if (room != room_nothingness)
        caster_free(-3)
    alarm[4] = 40
}
if (con == 1)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = scr_gettext("obj_truechara_94")
    global.msg[1] = scr_gettext("obj_truechara_95")
    instance_create((writerx + first_write_offset), writery, OBJ_WRITER)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == 0)
{
    caster_loop(ch_sfx1, 1, 1)
    con = 3
    alarm[4] = 60
}
if (con == 4)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = ("\\R" + scr_gettext("obj_truechara_111"))
    global.msg[1] = ("\\R" + scr_gettext("obj_truechara_112"))
    global.msg[2] = ("\\R" + scr_gettext("obj_truechara_113"))
    global.msg[3] = ("\\R" + scr_gettext("obj_truechara_114"))
    global.msg[4] = ("\\R" + scr_gettext("obj_truechara_115"))
    global.msg[5] = ("\\R" + scr_gettext("obj_truechara_116"))
    global.msg[6] = ("\\R" + scr_gettext("obj_truechara_117"))
    global.msg[7] = ("\\R" + scr_gettext("obj_truechara_118"))
    global.msg[8] = ("\\R" + scr_gettext("obj_truechara_119"))
    global.msg[9] = ("\\R" + scr_gettext("obj_truechara_120"))
    global.msg[10] = ("\\R" + scr_gettext("obj_truechara_121"))
    global.msg[11] = ("\\R" + scr_gettext("obj_truechara_122"))
    global.msg[12] = ("\\R" + scr_gettext("obj_truechara_123"))
    global.msg[13] = ("\\R" + scr_gettext("obj_truechara_124"))
    global.msg[14] = ("\\R" + scr_gettext("obj_truechara_125"))
    global.msg[15] = ("\\R" + scr_gettext("obj_truechara_126"))
    global.msg[16] = ("\\R" + scr_gettext("obj_truechara_127"))
    global.msg[17] = ("\\R" + scr_gettext("obj_truechara_128"))
    global.msg[18] = ("\\R" + scr_gettext("obj_truechara_129"))
    global.msg[19] = ("\\R" + scr_gettext("obj_truechara_130"))
    global.msg[20] = ("\\R" + scr_gettext("obj_truechara_131"))
    global.msg[21] = ("\\R" + scr_gettext("obj_truechara_132"))
    if ossafe_file_exists("system_information_963")
    {
        global.msg[0] = ("\\R" + scr_gettext("obj_truechara_136"))
        global.msg[1] = ("\\R" + scr_gettext("obj_truechara_137"))
        global.msg[2] = ("\\R" + scr_gettext("obj_truechara_138"))
        global.msg[3] = ("\\R" + scr_gettext("obj_truechara_139"))
        global.msg[4] = ("\\R" + scr_gettext("obj_truechara_140"))
        global.msg[5] = ("\\R" + scr_gettext("obj_truechara_141"))
        global.msg[6] = ("\\R" + scr_gettext("obj_truechara_142"))
        global.msg[7] = ("\\R" + scr_gettext("obj_truechara_143"))
        global.msg[8] = ("\\R" + scr_gettext("obj_truechara_144"))
        global.msg[9] = ("\\R" + scr_gettext("obj_truechara_145"))
        global.msg[10] = ("\\R" + scr_gettext("obj_truechara_146"))
        global.msg[11] = ("\\R" + scr_gettext("obj_truechara_147"))
        global.msg[12] = ("\\R" + scr_gettext("obj_truechara_148"))
        global.msg[13] = ("\\R" + scr_gettext("obj_truechara_149"))
        global.msg[14] = ("\\R" + scr_gettext("obj_truechara_150"))
        global.msg[15] = ("\\R" + scr_gettext("obj_truechara_151"))
        global.msg[16] = ("\\R" + scr_gettext("obj_truechara_152"))
        global.msg[17] = ("\\R" + scr_gettext("obj_truechara_153"))
        global.msg[18] = ("\\R" + scr_gettext("obj_truechara_154"))
        global.msg[19] = ("\\R" + scr_gettext("obj_truechara_155"))
        global.msg[20] = ("\\R" + scr_gettext("obj_truechara_156"))
        global.msg[21] = ("\\R" + scr_gettext("obj_truechara_157"))
        global.msg[22] = ("\\R" + scr_gettext("obj_truechara_158"))
        global.msg[23] = ("\\R" + scr_gettext("obj_truechara_159"))
        global.msg[24] = ("\\R" + scr_gettext("obj_truechara_160"))
        global.msg[25] = ("\\R" + scr_gettext("obj_truechara_161"))
        global.msg[26] = ("\\R" + scr_gettext("obj_truechara_162"))
    }
    instance_create(writerx, writery, OBJ_WRITER)
    con = 5
}
if (con == 5 && instance_exists(OBJ_WRITER) == 0)
{
    con = 6
    alarm[4] = 30
}
if (con == 7)
{
    con = 8
    choicer = 1
}
if (con == 20)
{
    if (room_speed != 30)
        room_speed = 30
    global.msc = 0
    global.typer = 104
    global.msg[0] = scr_gettext("obj_truechara_186")
    global.msg[1] = ("\\R" + scr_gettext("obj_truechara_187"))
    con = 22
    instance_create(writerx, writery, OBJ_WRITER)
}
if (con == 22 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        sprite_index = spr_truechara_weird
}
if (con == 22 && instance_exists(OBJ_WRITER) == 0)
    con = 60
if (con == 30)
{
    if (room_speed != 30)
        room_speed = 30
    global.msc = 0
    global.typer = 104
    global.msg[0] = scr_gettext("obj_truechara_209")
    global.msg[1] = scr_gettext("obj_truechara_210")
    global.msg[2] = scr_gettext("obj_truechara_211")
    global.msg[3] = scr_gettext("obj_truechara_212")
    global.msg[4] = ("\\R" + scr_gettext("obj_truechara_213"))
    if ossafe_file_exists("system_information_963")
    {
        global.msg[0] = scr_gettext("obj_truechara_217")
        global.msg[1] = scr_gettext("obj_truechara_218")
        global.msg[2] = scr_gettext("obj_truechara_219")
        global.msg[3] = scr_gettext("obj_truechara_220")
        global.msg[4] = ("\\R" + scr_gettext("obj_truechara_221"))
    }
    con = 31
    instance_create(writerx, writery, OBJ_WRITER)
}
if (con == 31)
{
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.stringno == 4)
        {
            sprite_index = spr_truechara_weird
            caster_free(-3)
        }
    }
    else if (global.osflavor == 1)
    {
        window_set_fullscreen(false)
        con = 39
        alarm[4] = 1
    }
    else
        con = 40
}
if (con == 40)
{
    caster_stop(-3)
    caster_play(ch_sfx2, 1, 0.95)
    sprite_index = spr_truechara_laugh
    image_speed = 0.5
    con = 41
    flashred = 1
    alarm[4] = 120
    wx = 0
    wy = 0
    if (global.osflavor == 1)
    {
        window_set_caption(" ")
        window_center()
        wx = window_get_x()
        wy = window_get_y()
    }
}
if (con == 41)
{
    x = ((((room_width / 2) + random(4)) - random(4)) - (sprite_width / 2))
    y = (((room_height / 2) + random(4)) - random(4))
    image_xscale += 0.08
    image_yscale += 0.08
    if (global.osflavor == 1)
        window_set_position(((wx + random(((redsiner / 4) + intensity))) - random(((redsiner / 4) + intensity))), ((wy + random(((redsiner / 4) + intensity))) - random(((redsiner / 4) + intensity))))
    intensity += 3
}
if (con == 42)
{
    con = 60
    if (global.osflavor == 1)
        window_center()
    flashred = 0
}
if (con == 60)
{
    caster_free(-3)
    snd_play(snd_laz)
    image_speed = 0
    image_index = 0
    sprite_index = spr_strike
    image_xscale = 5
    image_yscale = 5
    y = ((room_height / 2) - (sprite_height / 2))
    x = ((room_width / 2) - (sprite_width / 2))
    image_speed = 0.1
    con = 61
}
if (con == 61)
{
    if (image_index >= 5.5)
    {
        visible = false
        con = 62
        alarm[4] = 40
    }
}
if (con == 63)
{
    snd_play(snd_damage)
    instance_create(0, 0, obj_gameshake)
    con = 64
}
if (con == 64 && global.osflavor == 1)
{
    external_free("window_command_hook.dll")
    con = 65
}
if (con == 71 && attempted_close == 1)
{
    global.msc = 0
    global.typer = 104
    global.msg[0] = "...Hm?/"
    global.msg[1] = "You wish&to escape?/"
    global.msg[2] = "Interesting.^1/"
    global.msg[3] = "Well, that's&unfortunate./"
    global.msg[4] = "\\RYOU ALREADY&MADE YOUR&CHOICE./%%"
    con = 31
    instance_create(writerx, writery, OBJ_WRITER)
}
