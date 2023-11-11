buffer -= 1
if (fun == true && harp == abc_123_a && from_pause == 0)
{
    harp = caster_load("music/harpnoise.ogg")
    if (weather == 1)
        weathermusic = caster_load("music/options_winter.ogg")
    if (weather == 2 || weather == 4)
        weathermusic = caster_load("music/options_fall.ogg")
    if (weather == 3)
        weathermusic = caster_load("music/options_summer.ogg")
    if (current_month == 10)
        weathermusic = caster_load("music/options_spooky.ogg")
}
if (weather == 1)
{
    c = instance_create(0, 0, obj_ct_fallobj)
    c.sprite_index = spr_christmasflake
    siner += 1
    draw_sprite_ext(spr_tobdog_winter, 0, 250, 218, 1, 1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline(scr_gettext("joyconfig_fun_winter")), 1, 1, -20)
}
if (weather == 2)
{
    c = instance_create(0, 0, obj_ct_fallobj)
    c.sprite_index = spr_fallleaf
    c.image_blend = choose(merge_color(c_red, c_white, 0.5))
    siner += 1
    draw_sprite_ext(spr_tobdog_spring, floor((siner / 15)), 250, 218, 1, 1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline(scr_gettext("joyconfig_fun_spring")), 1, 1, -20)
}
if (weather == 3)
{
    extreme2 += 1
    if (extreme2 >= 240)
    {
        extreme += 1
        if (extreme >= 1100 && abs(sin((siner / 15))) < 0.1)
        {
            extreme = 0
            extreme2 = 0
        }
    }
    siner += 1
    draw_sprite_ext(spr_tobdog_summer, floor((siner / 15)), 250, 225, (2 + (sin((siner / 15)) * (0.2 + (extreme / 900)))), (2 - (sin((siner / 15)) * (0.2 + (extreme / 900)))), 0, c_white, 1)
    draw_set_color(c_yellow)
    draw_set_circle_precision(64)
    draw_circle((258 + (cos((siner / 18)) * 6)), (40 + (sin((siner / 18)) * 6)), (28 + (sin((siner / 6)) * 4)), 0)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline(scr_gettext("joyconfig_fun_summer")), 1, 1, -20)
    draw_set_circle_precision(24)
}
if (current_month == 10)
{
    c = instance_create(0, 0, obj_ct_fallobj)
    c.sprite_index = spr_fallleaf
    c.image_blend = choose(65535, 4235519, 255)
    siner += 1
    the = (siner % 11) > 6
    draw_sprite_ext(spr_tobdog_spooky, the, 250, 218, 1, 1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline("spooky time#month for scares"), 1, 1, -20)
}
else if (weather == 4)
{
    c = instance_create(0, 0, obj_ct_fallobj)
    c.sprite_index = spr_fallleaf
    c.image_blend = choose(65535, 4235519, 255)
    siner += 1
    draw_sprite_ext(spr_tobdog_autumn, 0, 250, 218, 1, 1, 0, c_white, 1)
    draw_set_color(c_gray)
    draw_text_transformed((220 + sin((siner / 12))), (120 + cos((siner / 12))), string_hash_to_newline(scr_gettext("joyconfig_fun_fall")), 1, 1, -20)
}
var menu_max = 10
if (global.osflavor <= 2)
{
    menu_max = 8
    if (obj_time.j_ch == 0)
        menu_max = 7
}
if (menu_engage == 0 && controlsmenu == 0)
{
    if keyboard_check_pressed(global.keybind[3])
        menu += 1
    if keyboard_check_pressed(global.keybind[1])
        menu -= 1
    if (menu <= 0)
        menu = 0
    if (menu >= menu_max)
        menu = menu_max
    if (buffer < 0 && control_check_pressed(0))
    {
        if (!((global.osflavor >= 4 && menu >= 2 && menu <= 4)))
        {
            menu_engage = 1
            js_buffer = 1
            buffer = 4
        }
    }
    if (menu == 1)
    {
        if ((global.osflavor <= 2 && menu_engage == 1) || keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[2]))
        {
            if (global.language == "en")
            {
                global.language = "ja"
                global.newmenu = 1
            }
            else
            {
                global.language = "en"
                ossafe_ini_open("config.ini")
                global.newmenu = ini_read_real("General", "nbm", 0)
                ossafe_ini_close()
            }
        }
        menu_engage = 0
    }
    if (menu == 2)
    {
        if (menu_engage == 1 || keyboard_check_pressed(global.keybind[2]))
        {
            do
            {
                global.screen_border_id++
                if (global.screen_border_id > num_borders)
                    global.screen_border_id = 0
            } until (global.screen_border_id < 0 || border_enabled[global.screen_border_id]);
            global.screen_border_state = 0
            global.screen_border_dynamic_fade_id = 0
            global.screen_border_dynamic_fade_level = 0
            scr_enable_screen_border(true)
        }
        else if keyboard_check_pressed(global.keybind[0])
        {
            do
            {
                global.screen_border_id--
                if (global.screen_border_id < 0)
                    global.screen_border_id = num_borders
            } until (global.screen_border_id < 0 || border_enabled[global.screen_border_id]);
            global.screen_border_state = 0
            global.screen_border_dynamic_fade_id = 0
            global.screen_border_dynamic_fade_level = 0
            scr_enable_screen_border(true)
        }
        menu_engage = 0
    }
    if (menu == 3 && obj_time.j_ch > 0)
    {
        if (menu_engage == 1 || control_check_pressed(0))
        {
            jc = instance_create(0, 0, obj_joypadmenu)
            jc.menu_engage = 0
            jc.buffer = buffer
            jc.intro = intro
            jc.rectile = rectile
            jc.buffer = buffer
            jc.weather = weather
            jc.extreme = extreme
            jc.extreme2 = extreme2
            jc.harp = harp
            jc.weathermusic = weathermusic
            jc.from_pause = from_pause
            instance_destroy()
        }
        menu_engage = 0
    }
    if (menu == (menu_max - 4))
    {
        if (menu_engage == 1 || keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[2]))
        {
            global.allowinternet ^= 1
            if global.allowinternet
                instance_create(0, 0, obj_weather)
            else
            {
                with (obj_weather)
                    instance_destroy()
            }
        }
        menu_engage = 0
    }
    if (menu == (menu_max - 3))
    {
        if (menu_engage == 1 || control_check_pressed(0))
            controlsmenu = 1
        menu_engage = 0
    }
    if (menu == (menu_max - 2))
    {
        if (global.language == "ja")
        {
            if (menu_engage == 1 || keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[2]))
                global.mirrormodesetting ^= 1
        }
        else if (menu_engage == 1 || keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[2]))
            global.newmenu ^= 1
        menu_engage = 0
    }
    if (menu == (menu_max - 1))
    {
        if (global.language == "ja")
            menu--
        else if (menu_engage == 1 || keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[2]))
            global.mirrormodesetting ^= 1
        menu_engage = 0
    }
    if (menu == menu_max)
    {
        if (menu_engage == 1 || keyboard_check_pressed(global.keybind[2]))
        {
            global.oppatextboxstyle++
            if (global.oppatextboxstyle > 2)
                global.oppatextboxstyle = 0
        }
        else if keyboard_check_pressed(global.keybind[0])
        {
            global.oppatextboxstyle--
            if (global.oppatextboxstyle < 0)
                global.oppatextboxstyle = 2
        }
        menu_engage = 0
    }
}
if (menu == 0 && menu_engage == 1)
    finish = 1
draw_set_color(c_white)
scr_setfont(fnt_maintext)
scr_drawtext_centered_scaled(160, 5, scr_gettext("settings_title"), 2, 2)
if (controlsmenu == 0)
{
    if (menu != 0)
        draw_set_color(c_white)
    else
        draw_set_color(c_yellow)
    draw_text(20, 35, string_hash_to_newline(scr_gettext("joyconfig_exit")))
    if (menu != 1)
        draw_set_color(c_white)
    else
        draw_set_color(c_yellow)
    draw_text(20, 60, string_hash_to_newline(scr_gettext("settings_language")))
    draw_text(92, 60, string_hash_to_newline(scr_gettext(("settings_language_" + global.language))))
    if (menu != 2)
        draw_set_color(c_white)
    else
        draw_set_color(c_yellow)
    var border_label = scr_gettext("settings_border")
    var vspacing = 18
    draw_text(20, 85, string_hash_to_newline(border_label))
    if (global.screen_border_id == 0)
        var border_sel = scr_gettext("settings_border_none")
    else if (global.screen_border_id == 11)
        border_sel = scr_gettext(((("settings_border_" + string(global.screen_border_id)) + "_") + string(border_11)))
    else
        border_sel = scr_gettext(("settings_border_" + string(global.screen_border_id)))
    draw_text(((20 + string_width(string_hash_to_newline(border_label))) + 20), 85, string_hash_to_newline(border_sel))
    if (menu != (menu_max - 4))
        draw_set_color(c_white)
    else
        draw_set_color(c_yellow)
    var internet_label = "INTERNET FEATURES"
    draw_text(20, (40 + (25 * (menu_max - 4))), internet_label)
    draw_text((40 + string_width(internet_label)), (40 + (25 * (menu_max - 4))), (global.allowinternet ? "YES" : "NO"))
    if (menu != (menu_max - 3))
        draw_set_color(c_white)
    else
        draw_set_color(c_yellow)
    var controls_label = "CONTROLS"
    draw_text(20, (40 + (25 * (menu_max - 3))), controls_label)
    if (global.language != "ja")
    {
        if (menu != (menu_max - 2))
            draw_set_color(c_white)
        else
            draw_set_color(c_yellow)
        menu_label = "NEW BATTLE MENU"
        draw_text(20, (40 + (25 * (menu_max - 2))), menu_label)
        draw_text((40 + string_width(menu_label)), (40 + (25 * (menu_max - 2))), (global.newmenu ? "YES" : "NO"))
        if (menu != (menu_max - 1))
            draw_set_color(c_white)
        else
            draw_set_color(c_yellow)
        var mirrormode_label = "MIRROR MODE"
        draw_text(20, (40 + (25 * (menu_max - 1))), mirrormode_label)
        draw_text((40 + string_width(mirrormode_label)), (40 + (25 * (menu_max - 1))), (global.mirrormodesetting ? "YES" : "NO"))
        if (menu != menu_max)
            draw_set_color(c_white)
        else
            draw_set_color(c_yellow)
        var textbox_label = "TEXTBOXES"
        textbox[2] = "Classic"
        textbox[1] = "Rounded"
        textbox[0] = "Little Buddies"
        draw_text(20, (40 + (25 * menu_max)), textbox_label)
        draw_text((40 + string_width(textbox_label)), (40 + (25 * menu_max)), textbox[global.oppatextboxstyle])
    }
    else
    {
        if (menu != (menu_max - 1))
            draw_set_color(c_white)
        else
            draw_set_color(c_yellow)
        mirrormode_label = "MIRROR MODE"
        draw_text(20, (40 + (25 * (menu_max - 1))), mirrormode_label)
        draw_text((40 + string_width(mirrormode_label)), (40 + (25 * (menu_max - 1))), (global.mirrormodesetting ? "YES" : "NO"))
        if (menu != menu_max)
            draw_set_color(c_white)
        else
            draw_set_color(c_yellow)
        textbox_label = "TEXTBOXES"
        textbox[2] = "Classic"
        textbox[1] = "Rounded"
        textbox[0] = "Little Buddies"
        draw_text(20, (40 + (25 * menu_max)), textbox_label)
        draw_text((40 + string_width(textbox_label)), (40 + (25 * menu_max)), textbox[global.oppatextboxstyle])
    }
}
if (controlsmenu == 1)
{
    var mx = (mouse_x + -17)
    var my = mouse_y
    if (mx >= 20 && my >= 40 && mx <= (20 + string_width("BACK")) && my <= (40 + string_height("BACK")) && editing_keybind < 0)
    {
        draw_set_color(c_yellow)
        if mouse_check_button_pressed(mb_left)
            controlsmenu = 0
    }
    else
        draw_set_color(c_white)
    draw_text(20, 40, "BACK")
    draw_set_color(c_white)
    draw_text(20, 60, "CONTROLS")
    if (mx >= 100 && my >= 60 && mx <= (100 + string_width("RESET")) && my <= (60 + string_height("RESET")) && editing_keybind < 0)
    {
        draw_set_color(c_yellow)
        if mouse_check_button_pressed(mb_left)
        {
            global.keybind[0] = 37
            global.keybind[1] = 38
            global.keybind[2] = 39
            global.keybind[3] = 40
            global.keybind[4] = 90
            global.keybind[5] = 13
            global.keybind[6] = 88
            global.keybind[7] = 16
            global.keybind[8] = 67
            global.keybind[9] = 17
            global.keybind[10] = 115
            global.keybind[11] = 27
        }
    }
    else
        draw_set_color(c_white)
    draw_text(100, 60, "RESET")
    for (var i = 0; i < keybinds_total; i++)
    {
        draw_set_color(c_white)
        if (mx >= 20 && my >= (80 + (i * 10)) && mx <= (20 + string_width(keybind[i])) && my < (90 + (i * 10)) && editing_keybind < 0)
        {
            draw_set_color(c_yellow)
            if mouse_check_button_pressed(mb_left)
                editing_keybind = i
        }
        if (editing_keybind == i)
        {
            draw_set_color(c_yellow)
            draw_text_transformed(20, (80 + (i * 10)), keybind[i], 0.5, 0.5, 0)
        }
        else
            draw_text_transformed(20, (80 + (i * 10)), (keybind[i] + string_upper(scr_keybind_name(global.keybind[i]))), 0.5, 0.5, 0)
    }
    if (keyboard_check_pressed(vk_anykey) && editing_keybind > -1)
    {
        goal_keybind = keyboard_key
        if (goal_keybind == 160 || goal_keybind == 161)
            goal_keybind = 16
        if (goal_keybind == 162 || goal_keybind == 163)
            goal_keybind = 17
        if (goal_keybind == 164 || goal_keybind == 165)
            goal_keybind = 18
        valid_key = 1
        for (i = 0; i < keybinds_total; i++)
        {
            if (i != editing_keybind && global.keybind[i] == goal_keybind)
                valid_key = 0
        }
        if (valid_key == 1)
        {
            global.keybind[editing_keybind] = goal_keybind
            editing_keybind = -1
        }
    }
    draw_set_colour(c_yellow)
    draw_text(200, 50, "Use your mouse\nto select things!")
    draw_set_colour(c_white)
}
if (global.osflavor >= 4)
{
    draw_set_color(c_white)
    draw_text(20, 100, string_hash_to_newline(scr_gettext("settings_button")))
    vspacing = 18
    var button_x = 0
    for (i = 0; i < 3; i++)
    {
        if (menu == (i + 2))
            draw_set_color(c_yellow)
        else
            draw_set_color(c_white)
        if (i == 0)
            var itext = scr_gettext("settings_button_confirm")
        else if (i == 1)
            itext = scr_gettext("settings_button_cancel")
        else
            itext = scr_gettext("settings_button_menu")
        draw_text(40, (100 + ((i + 1) * vspacing)), string_hash_to_newline(itext))
        draw_set_color(c_white)
        var xx = (40 + string_width(string_hash_to_newline(itext)))
        if (xx > button_x)
            button_x = xx
    }
    button_x += 15
    for (i = 0; i < 3; i++)
    {
        if (menu == (i + 2) && buffer < 0)
        {
            var button = -4
            var b = 0
            b = 0
            b = 0
            while (button_list[b] != -4)
            {
                if gamepad_button_check(0, button_list[b])
                {
                    button = button_list[b]
                    break
                }
                else
                {
                    b++
                    continue
                }
            }
            if (button != -4)
            {
                if (menu == 2)
                {
                    if (global.button1 == button)
                        global.button1 = global.button0
                    if (global.button2 == button)
                        global.button2 = global.button0
                    global.button0 = button
                }
                else if (menu == 3)
                {
                    if (global.button0 == button)
                        global.button0 = global.button1
                    if (global.button2 == button)
                        global.button2 = global.button1
                    global.button1 = button
                }
                else
                {
                    if (global.button0 == button)
                        global.button0 = global.button2
                    if (global.button1 == button)
                        global.button1 = global.button2
                    global.button2 = button
                }
                buffer = 4
            }
        }
        var command = string_char_at("ZXC", (i + 1))
        var sprite = scr_getbuttonsprite(command, 0)
        if (sprite != -4)
            draw_sprite(sprite, 0, button_x, (100 + ((i + 1) * vspacing)))
    }
    if (r_buffer > 0)
    {
        r_buffer -= 1
        draw_set_color(c_red)
        draw_text_transformed_color(20, ((100 + (3 * vspacing)) + 25), string_hash_to_newline(r_line), 1, 1, 0, c_red, c_red, c_red, c_red, (1 - ((10 - r_buffer) / 10)))
    }
    else
    {
        if (menu != 5)
            draw_set_color(c_white)
        else
            draw_set_color(c_yellow)
        draw_text(20, ((100 + (3 * vspacing)) + 25), string_hash_to_newline(scr_gettext("joyconfig_reset")))
    }
    if (menu == 5 && menu_engage == 1)
    {
        r_buffer = 15
        rrr = floor(random(50))
        if (fun == true)
        {
            if (rrr == 1)
                r_line = scr_gettext("joyconfig_spaghetted")
            else
                r_line = scr_gettext("joyconfig_resetted")
        }
        global.button0 = global.default_button0
        global.button1 = global.default_button1
        global.button2 = global.default_button2
        global.analog_sense = global.default_analog_sense
        global.analog_sense_sense = global.default_analog_sense_sense
        global.joy_dir = global.default_joy_dir
        menu_engage = 0
    }
    if (menu != 2)
        draw_set_color(c_white)
    else
        draw_set_color(c_yellow)
    border_label = scr_gettext("settings_border")
    draw_text(20, ((100 + (3 * vspacing)) + 50), string_hash_to_newline(border_label))
    if (global.screen_border_id == 0)
        border_sel = scr_gettext("settings_border_none")
    else if (global.screen_border_id == 11)
        border_sel = scr_gettext(((("settings_border_" + string(global.screen_border_id)) + "_") + string(border_11)))
    else
        border_sel = scr_gettext(("settings_border_" + string(global.screen_border_id)))
    draw_text(((20 + string_width(string_hash_to_newline(border_label))) + 20), ((100 + (3 * vspacing)) + 50), string_hash_to_newline(border_sel))
}
else if (controlsmenu == 0 && obj_time.j_ch > 0)
{
    if (menu != 3)
        draw_set_color(c_white)
    else
        draw_set_color(c_yellow)
    draw_text(20, 130, string_hash_to_newline(scr_gettext("settings_joyconfig")))
}
if (intro == 1)
{
    if (from_pause == 1)
    {
        menu_engage = 0
        buffer = 5
        intro = -1
    }
    else
    {
        if (rectile == 16)
            caster_play(harp, 1, 1)
        rectile += 4
        draw_set_color(c_black)
        ossafe_fill_rectangle((168 - rectile), -10, -1, 250)
        draw_set_color(c_black)
        ossafe_fill_rectangle((152 + rectile), -10, 330, 250)
        if (rectile >= 170)
        {
            caster_loop(weathermusic, 0.8, 1)
            menu_engage = 0
            buffer = 5
            intro = -1
        }
    }
}
if (global.debug == true)
{
    draw_set_alpha(1)
    draw_set_color(c_yellow)
    draw_set_font(fnt_maintext)
    draw_text(10, ((__view_get(1, 0) + __view_get(3, 0)) - 20), menu)
}
