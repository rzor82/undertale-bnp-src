draw_sprite(sprite_index, image_index, x, y)
if (myinteract == 1 && global.interact == 0 && con == 0)
{
    global.interact = 1
    con = 1
}
if (con == 1)
{
    global.facechoice = 0
    global.typer = 5
    global.msc = 0
    global.msg[0] = scr_gettext("obj_elevatorpanel_104")
    instance_create(0, 0, obj_dialoguer)
    con = 2
    buffer = 5
}
if (con == 2 && instance_exists(OBJ_WRITER) == 0)
{
    buffer -= 1
    draw_set_color(c_white)
    scr_textbox((__view_get(0, view_current) + 16), (__view_get(1, view_current) + 5), (__view_get(0, view_current) + 306), (__view_get(1, view_current) + 80))
    draw_set_color(c_black)
    draw_rectangle(((__view_get(0, view_current) + 19) + 4), ((__view_get(1, view_current) + 8) + 4), ((__view_get(0, view_current) + 301) - 4), ((__view_get(1, view_current) + 77) - 4), false)
    draw_set_color(c_white)
    scr_setfont(fnt_maintext)
    if (global.flag[398] != 0)
        draw_text((__view_get(0, 0) + 50), (__view_get(1, 0) + 15), string_hash_to_newline(scr_gettext("elevator_l1f")))
    else
        draw_text((__view_get(0, 0) + 50), (__view_get(1, 0) + 15), string_hash_to_newline(scr_gettext("elevator_cancel")))
    if (global.flag[398] != 1)
        draw_text((__view_get(0, 0) + 160), (__view_get(1, 0) + 15), string_hash_to_newline(scr_gettext("elevator_r1f")))
    else
        draw_text((__view_get(0, 0) + 160), (__view_get(1, 0) + 15), string_hash_to_newline(scr_gettext("elevator_cancel")))
    if (global.flag[398] != 2)
        draw_text((__view_get(0, 0) + 160), (__view_get(1, 0) + 35), string_hash_to_newline(scr_gettext("elevator_r2f")))
    else
        draw_text((__view_get(0, 0) + 160), (__view_get(1, 0) + 35), string_hash_to_newline(scr_gettext("elevator_cancel")))
    if (trigger > 0)
    {
        if (global.flag[398] != 3)
            draw_text((__view_get(0, 0) + 50), (__view_get(1, 0) + 35), string_hash_to_newline(scr_gettext("elevator_l2f")))
        else
            draw_text((__view_get(0, 0) + 50), (__view_get(1, 0) + 35), string_hash_to_newline(scr_gettext("elevator_cancel")))
    }
    if (trigger > 0)
    {
        if (global.flag[398] != 4)
            draw_text((__view_get(0, 0) + 50), (__view_get(1, 0) + 55), string_hash_to_newline(scr_gettext("elevator_l3f")))
        else
            draw_text((__view_get(0, 0) + 50), (__view_get(1, 0) + 55), string_hash_to_newline(scr_gettext("elevator_cancel")))
    }
    if (trigger > 1)
    {
        if (global.flag[398] != 5)
            draw_text((__view_get(0, 0) + 160), (__view_get(1, 0) + 55), string_hash_to_newline(scr_gettext("elevator_r3f")))
        else
            draw_text((__view_get(0, 0) + 160), (__view_get(1, 0) + 55), string_hash_to_newline(scr_gettext("elevator_cancel")))
    }
    var heart_xpos = (__view_get(0, 0) + 30)
    var heart_ypos = (__view_get(1, 0) + 20)
    if (global.language == "ja")
        heart_ypos -= 2
    draw_sprite(spr_heartsmall, 0, (heart_xpos + (heartx * 110)), (heart_ypos + (20 * hearty)))
    if (buffer < 0)
    {
        if keyboard_check_pressed(global.keybind[1])
        {
            if (hearty > 0)
                hearty -= 1
        }
        if keyboard_check_pressed(global.keybind[3])
        {
            if (hearty < 2)
            {
                if (heartx == 0)
                {
                    if (hearty == 1 && trigger > 0)
                        hearty += 1
                    if (hearty == 0 && trigger > 0)
                        hearty += 1
                }
                if (heartx == 1)
                {
                    if (hearty == 1 && trigger > 1)
                        hearty += 1
                    if (hearty == 0)
                        hearty += 1
                }
            }
        }
        if keyboard_check_pressed(global.keybind[2])
        {
            if (heartx == 0)
            {
                if (hearty == 0)
                    heartx += 1
                if (hearty == 1)
                    heartx += 1
                if (hearty == 2 && trigger > 1)
                    heartx += 1
            }
        }
        if keyboard_check_pressed(global.keybind[0])
        {
            if (heartx == 1)
            {
                if (hearty == 0)
                    heartx -= 1
                if (hearty == 1 && trigger > 0)
                    heartx -= 1
                if (hearty == 2 && trigger > 1)
                    heartx -= 1
            }
        }
        if control_check_pressed(0)
        {
            con = 5
            if (heartx == 0 && hearty == 0)
            {
                if (global.flag[398] != 0)
                    global.flag[398] = 0
                else
                    con = 15
            }
            if (heartx == 1 && hearty == 0)
            {
                if (global.flag[398] != 1)
                    global.flag[398] = 1
                else
                    con = 15
            }
            if (heartx == 1 && hearty == 1)
            {
                if (global.flag[398] != 2)
                    global.flag[398] = 2
                else
                    con = 15
            }
            if (heartx == 0 && hearty == 1)
            {
                if (global.flag[398] != 3)
                    global.flag[398] = 3
                else
                    con = 15
            }
            if (heartx == 0 && hearty == 2)
            {
                if (global.flag[398] != 4)
                    global.flag[398] = 4
                else
                    con = 15
            }
            if (heartx == 1 && hearty == 2)
            {
                if (global.flag[398] != 5)
                    global.flag[398] = 5
                else
                    con = 15
            }
        }
    }
}
if (con == 5)
{
    snd_play(snd_item)
    con = 6
    alarm[4] = 15
}
if (con == 7)
{
    rect = 1
    global.facing = 0
    snd_play(snd_bell)
    con = 8
    alarm[4] = 11
}
if (con == 9)
{
    snd_play(snd_noise)
    caster_play(snd_elecdoor_shut, 1, 1)
    elev = caster_load("music/elevator.ogg")
    xx = __view_get(0, 0)
    yy = __view_get(1, 0)
    siner = 0
    con = 10
    intense = 0.5
    alarm[4] = 15
}
if (con == 11)
{
    con = 12
    alarm[4] = 110
    caster_play(elev, 1, 1)
}
if (con == 12)
{
    obj_mainchara.cutscene = true
    __view_set(9, 0, -4)
    siner += 1
    if (alarm[4] > 20)
        intense += 0.01
    else if (intense > 0)
        intense -= 0.1
    __view_set(0, 0, floor((xx + (sin((siner / 1.3)) * intense))))
    __view_set(1, 0, floor((yy + (sin((siner / 0.9)) * intense))))
}
if (con == 13)
{
    __view_set(0, 0, xx)
    __view_set(1, 0, yy)
    rect = 2
    con = 14
    snd_play(snd_bell)
    alarm[4] = 11
}
if (con == 15)
{
    global.facing = 0
    caster_play(snd_elecdoor_shut, 1, 1)
    global.interact = 0
    con = 0
    scr_tempsave()
    myinteract = 0
}
if (rect == 1)
{
    if (rectaur < 40)
        rectaur += 4
    if (room == room_fire_labelevator)
        draw_set_color(0x382D39)
    else
        draw_set_color(c_black)
    if (room == room_truelab_castle_elevator)
    {
        ossafe_fill_rectangle(0, 120, 100, (120 + rectaur))
        ossafe_fill_rectangle(0, 160, 100, (260 - rectaur))
    }
    ossafe_fill_rectangle(120, 180, (120 + rectaur), 250)
    ossafe_fill_rectangle(200, 180, (200 - rectaur), 250)
    if (room != room_fire_finalelevator && room != room_truelab_castle_elevator)
    {
        draw_set_color(0x277FFF)
        ossafe_fill_rectangle(120, 180, (120 + rectaur), 189)
        ossafe_fill_rectangle(200, 180, (200 - rectaur), 189)
    }
}
if (rect == 2)
{
    if (rectaur > 0)
    {
        rectaur -= 4
        if (room == room_fire_labelevator)
            draw_set_color(0x382D39)
        else
            draw_set_color(c_black)
        ossafe_fill_rectangle(120, 180, (120 + rectaur), 250)
        ossafe_fill_rectangle(200, 180, (200 - rectaur), 250)
        if (room != room_fire_finalelevator && room != room_truelab_castle_elevator)
        {
            draw_set_color(0x277FFF)
            ossafe_fill_rectangle(120, 180, (120 + rectaur), 189)
            ossafe_fill_rectangle(200, 180, (200 - rectaur), 189)
        }
    }
}
