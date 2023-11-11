if (os_type == os_android || os_type == os_ios)
{
    game_end()
    return;
}
if (room == room_start)
{
    if (asked_internet == 0)
    {
        draw_set_colour(c_white)
        draw_set_font(fnt_main)
        draw_set_halign(fa_center)
        draw_text((room_width / 2), 50, "This mod connects to the\ninternet during some scenes.\n\nWould you like to\nenable internet access?\n(Can also be toggled in\nsettings at any time)")
        draw_set_halign(fa_left)
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
        {
            if (str_choice == 0)
                str_choice = 1
            else
                str_choice = 0
            snd_play(snd_squeak)
        }
        if (str_choice == 0)
        {
            draw_sprite(spr_heart, 0, 100, 330)
            draw_set_colour(c_yellow)
            draw_text(120, 320, "Yep!")
            draw_set_colour(c_gray)
            draw_text(470, 320, "Nah")
            if control_check_pressed(0)
            {
                snd_play(snd_select)
                global.allowinternet = 1
                ossafe_ini_open("config.ini")
                ini_write_real("General", "internet", 1)
                ini_write_real("General", "askedinternet", 1)
                ossafe_ini_close()
                asked_internet = 1
                room_goto(going_to)
            }
        }
        else
        {
            draw_sprite(spr_heart, 0, 450, 330)
            draw_set_colour(c_gray)
            draw_text(120, 320, "Yep!")
            draw_set_colour(c_yellow)
            draw_text(470, 320, "Nah")
            if control_check_pressed(0)
            {
                snd_play(snd_select)
                global.allowinternet = 0
                ossafe_ini_open("config.ini")
                ini_write_real("General", "internet", 0)
                ini_write_real("General", "askedinternet", 1)
                ossafe_ini_close()
                asked_internet = 1
                room_goto(going_to)
            }
        }
    }
    else
    {
        room_goto(going_to)
        asked_internet = 1
    }
}
