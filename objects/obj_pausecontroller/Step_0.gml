if (scr_murderlv() > 0)
    murder = 1
if (global.paused == false && temphide == 0)
{
    fakepause = 0
    if (alpha > 0)
        alpha -= 0.1
    if (tp > 0)
    {
        if (tp >= 30)
            tp -= round((tp / 1.25))
        else
            tp -= 15
    }
    else
        tp = 0
    if (bp > 0)
    {
        if (bp >= 30)
            bp -= round((bp / 1.25))
        else
            bp -= 15
    }
    else
        bp = 0
    if (bp == 0)
        drawpause = 0
    if (global.interact == 0)
    {
        if (room >= room_area1_room_of_fallen_stars && room != room_settings && room != room_controltest && room != room_f_start && room != room_f_intro && room != room_f_menu && room != room_f_room && room != room_f_phrase)
        {
            if (keyboard_check_released(global.keybind[11]) && obj_time.quit < 1 && forceclose == 0 && buffer <= 0)
            {
                lastinteract = global.interact
                global.paused = true
                global.interact = -1
                if (instance_exists(obj_doomtimer) || global.pirate)
                    fakepause = 1
                else
                {
                    unpersist = room_persistent
                    audio_pause_all()
                    w = surface_get_width(application_surface)
                    h = surface_get_height(application_surface)
                    ss = sprite_create_from_surface(application_surface, 0, 0, w, h, false, false, 0, 0)
                    instance_deactivate_all(true)
                    instance_activate_object(obj_time)
                    instance_activate_object(obj_weather)
                    instance_activate_object(obj_borderdrawer)
                    instance_activate_object(obj_speedrun_tracker)
                }
                audio_stop_sound(snd_pauseclose)
                audio_play_sound(snd_pauseopen, 0, false)
                control_clear(3)
                buffer = 15
            }
        }
    }
}
if (global.paused == true && temphide == 0)
{
    if (alpha < 1)
        alpha += 0.1
    drawpause = 1
    bpy = 40
    tpy = 40
    if (tp < (tpy - 2))
    {
        if ((tpy - tp) <= 10)
            tp += round(((tpy - tp) / 1.25))
        else
            tp += 15
    }
    else
        tp = tpy
    if (bp < (bpy - 2))
    {
        if ((bpy - bp) <= 10)
            bp += round(((bpy - bp) / 1.25))
        else
            bp += 15
    }
    else
        bp = bpy
    if (keyboard_check_pressed(global.keybind[3]) || keyboard_check_pressed(global.keybind[2]))
    {
        if (state == 0)
        {
            if ((os_canquit == 1 && select < 3) || (os_canquit == 0 && select < 2))
            {
                select += 1
                audio_play_sound(snd_squeak, 0, false)
            }
        }
    }
    if (keyboard_check_pressed(global.keybind[1]) || keyboard_check_pressed(global.keybind[0]))
    {
        if (state == 0)
        {
            if (select > 0)
            {
                select -= 1
                audio_play_sound(snd_squeak, 0, false)
            }
        }
    }
    if keyboard_check_pressed(global.keybind[2])
    {
        if (state == 1 || state == 2)
        {
            if (select_opt[state] == 0 || select_opt[state] == -1)
            {
                select_opt[state] = 1
                audio_play_sound(snd_squeak, 0, false)
            }
        }
    }
    if keyboard_check_pressed(global.keybind[0])
    {
        if (state == 1 || state == 2)
        {
            if (select_opt[state] == 0 || select_opt[state] == 1)
            {
                select_opt[state] = -1
                audio_play_sound(snd_squeak, 0, false)
            }
        }
    }
    if control_check_pressed(0)
    {
        if (state == 1)
        {
            if (select_opt[state] == -1)
            {
                state = 0
                if (ss != -4)
                    sprite_delete(ss)
                ss = -4
                audio_stop_all()
                instance_activate_all()
                audio_play_sound(snd_select, 0, false)
                global.skip_to_menu = 1
                global.paused = false
                alpha = 0
                game_restart()
            }
            if (select_opt[state] == 1)
            {
                state = 0
                audio_play_sound(snd_select, 0, false)
            }
        }
        else if (state == 2)
        {
            if (select_opt[state] == -1)
            {
                audio_play_sound(snd_select, 0, false)
                ossafe_game_end()
            }
            if (select_opt[state] == 1)
            {
                state = 0
                audio_play_sound(snd_select, 0, false)
            }
        }
        else if (state == 0)
        {
            if (select == 0)
            {
                forceclose = 1
                audio_play_sound(snd_select, 0, false)
            }
            if (select == 1)
            {
                select_opt[0] = 0
                select_opt[1] = 0
                select_opt[2] = 0
                if fakepause
                    audio_play_sound(snd_bluh, 0, false)
                else
                {
                    state = 1
                    audio_play_sound(snd_select, 0, false)
                }
            }
            if (select == 2)
            {
                if fakepause
                    audio_play_sound(snd_bluh, 0, false)
                else
                {
                    room_persistent = true
                    audio_play_sound(snd_select, 0, false)
                    room_goto(room_settings)
                }
            }
            if (select == 3)
            {
                select_opt[0] = 0
                select_opt[1] = 0
                select_opt[2] = 0
                if (os_canquit == 0)
                    audio_play_sound(snd_bluh, 0, false)
                else if fakepause
                    ossafe_game_end()
                else
                {
                    state = 2
                    audio_play_sound(snd_select, 0, false)
                }
            }
        }
    }
    if control_check_pressed(1)
    {
        if (state == 1 || state == 2)
        {
            state = 0
            audio_play_sound(snd_squeak, 0, false)
        }
    }
    if (control_check_pressed(3) || (forceclose == 1 && buffer <= 0))
    {
        if (state == 0)
        {
            audio_stop_sound(snd_pauseopen)
            audio_play_sound(snd_pauseclose, 0, false)
            global.paused = false
            global.interact = lastinteract
            if (ss != -4)
                sprite_delete(ss)
            if (!fakepause)
                audio_resume_all()
            ss = -4
            instance_activate_all()
            control_clear(3)
            buffer = 15
            forceclose = 0
            room_persistent = unpersist
        }
    }
    if (select < 0)
        select = 0
    if (os_canquit == 1 && select > 3)
        select = 3
    if (os_canquit == 0 && select > 2)
        select = 2
    if (state == 2 && os_canquit == 0)
        state = 0
    if (state == 2 && os_canquit == 1)
    {
        if keyboard_check_pressed(global.keybind[11])
            ossafe_game_end()
    }
}
if (global.debug == true)
{
    if keyboard_check_pressed(ord("O"))
        os_canquit ^= 1
}
buffer -= 1
