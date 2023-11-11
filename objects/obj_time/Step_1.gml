if (os_type == os_android || os_type == os_ios)
{
    game_end()
    return;
}
paused = global.paused
if (global.debug == true && global.pirate == 1)
    global.debug = false
if (started <= 0)
{
    with (obj_speedrun_tracker)
        event_user(2)
    if (global.savedata_async_id >= 0)
        return;
    started = -1
    if (!trophy_init())
    {
        if (trophy_ts < 0)
            trophy_ts = current_time
        return;
    }
    ossafe_ini_open("config.ini")
    global.newmenu = ini_read_real("General", "nbm", 0)
    global.mirrormodesetting = ini_read_real("General", "mirrormode", 0)
    global.oppatextboxstyle = ini_read_real("General", "textboxes", 0)
    var lang = ini_read_string("General", "lang", "")
    var sb_i = ini_read_real("General", "sb", -1)
    var b0_i = ini_read_real("joypad1", "b0", -1)
    var b1_i = ini_read_real("joypad1", "b1", -1)
    var b2_i = ini_read_real("joypad1", "b2", -1)
    var as_i = ini_read_real("joypad1", "as", -1)
    var jd_i = ini_read_real("joypad1", "jd", -1)
    var deal = ini_read_real("General", "sa", 0)
    var allow_internet = ini_read_real("General", "internet", 0)
    asked_internet = ini_read_real("General", "askedinternet", 0)
    if (string_length(lang) > 0)
    {
        global.language = lang
        if (lang == "ja")
            global.newmenu = 1
    }
    if (sb_i >= 0)
        global.screen_border_id = sb_i
    if (b0_i >= 0)
        global.button0 = b0_i
    if (b1_i >= 0)
        global.button1 = b1_i
    if (b2_i >= 0)
        global.button2 = b2_i
    if (as_i >= 0)
        global.analog_sense = as_i
    if (jd_i >= 0)
        global.joy_dir = jd_i
    if allow_internet
        instance_create(0, 0, obj_weather)
    global.allowinternet = allow_internet
    ossafe_ini_close()
    global.pauser = instance_create(0, 0, obj_pausecontroller)
    scr_enable_screen_border(true)
    if (global.osflavor >= 4)
    {
        global.analog_sense = 0.15
        if (os_type == os_psvita)
            global.analog_sense = 0.9
        global.joy_dir = 0
    }
    if (!window_get_fullscreen())
    {
        surface_resize(application_surface, 640, 480)
        global.origws = 640
        global.orighs = 480
    }
    ossafe_ini_open("undertale.ini")
    deal |= ini_read_real("General", "A", 0)
    cheat = (deal && (!ossafe_file_exists("system_information_963")))
    fskip = ini_read_real("FFFFF", "E", -1)
    ftime = ini_read_real("FFFFF", "F", -1)
    true_end = ini_read_real("EndF", "EndF", -1)
    attempted_close = ini_read_real("General", "IgnoreDoom", 0)
    ossafe_ini_close()
    event_user(0)
    if (global.pirate == 0)
    {
        sksk = 0
        if cheat
        {
            sksk = 1
            image_speed = 0
            image_index = 0
            sprite_index = spr_strike
            image_xscale = 5
            image_yscale = 5
            image_speed = 0.1
            visible = true
            y = ((room_height / 2) - (sprite_height / 2))
            x = ((room_width / 2) - (sprite_width / 2))
            snd_play(snd_laz)
            window_set_fullscreen(false)
        }
        else if attempted_close
        {
            room_set_width(room_nothingness, 640)
            room_set_height(room_nothingness, 480)
        }
        if (ftime == 1 && sksk == 0)
        {
            sksk = 1
            global.interact = 3
            room_goto(room_f_start)
        }
        if (true_end == 1 && sksk == 0)
        {
            sksk = 1
            going_to = 320
        }
        if (fskip >= 1 && sksk == 0)
        {
            global.filechoice = 8
            scr_load()
            if (fskip == 1)
                room_goto(room_flowey_endchoice)
            if (fskip == 2)
                room_goto(room_castle_exit)
        }
        else if (sksk == 0)
        {
            if global.skip_to_menu
            {
                global.skip_to_menu = 0
                room_goto(room_intromenu)
                instance_create(0, 0, obj_persistentfader)
            }
            else
                going_to = 1
        }
        if ((!cheat) && (attempted_close || (ossafe_file_exists("system_information_962") && (!ossafe_file_exists("system_information_963")))))
        {
            global.debugwarp = 1
            room_goto(room_nothingness)
        }
    }
    else
    {
        with (obj_pausecontroller)
            instance_destroy()
        room_goto(room_flowey_regret)
    }
    started = 1
    return;
}
else if (cheat && visible && image_index >= 5.5)
{
    visible = false
    alarm[1] = 40
}
bad_ratio = (window_get_width() / window_get_height()) != 1.77777777777778
if bad_ratio
{
    if (!ratio_warned)
    {
        ratio_warned = 1
        ratio_timer = 0
    }
}
else
    ratio_warned = 0
if cheat
    global.debug = false
if (!paused)
    time += 1
if global.discord_rpc
{
    if (global.debug == true)
        np_setpresence_more("'Developer'", "UT: BnP Dev Build", 0)
    else if (global.flag[221] == 1)
        np_setpresence_more("But nobody came.", "But nobody came.", 0)
    else
        np_setpresence_more((("'" + global.charname) + "'"), "Undertale: Bits & Pieces", 0)
}
if (global.osflavor <= 2)
{
    if (jt == 0)
    {
        if (j_ch != 2)
        {
            if joystick_exists(1)
                j_ch = 1
            else if (j_ch == 1)
                j_ch = 0
        }
    }
    if (jt == 4)
    {
        if (j_ch != 1)
        {
            if joystick_exists(2)
                j_ch = 2
            else if (j_ch == 2)
                j_ch = 0
        }
    }
    jt += 1
    if (jt >= 8)
        jt = 0
}
else if (os_type == os_switch_beta)
{
    if (j_ch > 0 && gamepad_is_connected((j_ch - 1)))
        missing_controller_timeout = 0
    else
    {
        j_ch = 0
        var i = 0
        while (i < gamepad_get_device_count())
        {
            if gamepad_is_connected(i)
            {
                if (j_ch > 0)
                {
                    j_ch = 0
                    break
                }
                else
                {
                    j_ch = (i + 1)
                    i++
                    continue
                }
            }
            else
            {
                i++
                continue
            }
        }
        if (j_ch > 0)
            missing_controller_timeout = 0
        else if (missing_controller_timeout == 0)
            missing_controller_timeout = (current_time + 2000)
        else if (current_time >= missing_controller_timeout)
        {
            if (switch_controller_support_show() == 0)
            {
                j_ch = (switch_controller_support_get_selected_id() + 1)
                missing_controller_timeout = 0
            }
        }
    }
}
control_update()
if (j_ch > 0)
{
    j_fr_p = j_fr
    j_fl_p = j_fl
    j_fu_p = j_fu
    j_fd_p = j_fd
    j_fr = 0
    j_fl = 0
    j_fu = 0
    j_fd = 0
    if (global.osflavor >= 4)
    {
        if (gamepad_button_check((j_ch - 1), gp_padu) || gamepad_button_check((j_ch - 1), gp_padd) || gamepad_button_check((j_ch - 1), gp_padl) || gamepad_button_check((j_ch - 1), gp_padr))
        {
            j_fu = gamepad_button_check((j_ch - 1), gp_padu)
            j_fd = gamepad_button_check((j_ch - 1), gp_padd)
            j_fl = gamepad_button_check((j_ch - 1), gp_padl)
            j_fr = gamepad_button_check((j_ch - 1), gp_padr)
        }
        else if (global.joy_dir != 2)
        {
            var j_xpos = gamepad_axis_value((j_ch - 1), gp_axislh)
            var j_ypos = gamepad_axis_value((j_ch - 1), gp_axislv)
            var analog_sense = global.analog_sense
            if (sqrt((sqr(j_xpos) + sqr(j_ypos))) >= analog_sense)
            {
                var angle = darctan2(j_ypos, j_xpos)
                if (angle < 0)
                    angle += 360
                if (angle < 67.5 || angle > 292.5)
                    j_fr = 1
                if (angle > 22.5 && angle < 157.5)
                    j_fd = 1
                if (angle > 112.5 && angle < 247.5)
                    j_fl = 1
                if (angle > 202.5 && angle < 337.5)
                    j_fu = 1
            }
        }
    }
    else
    {
        if (global.joy_dir == 0 || global.joy_dir == 1)
        {
            j_xpos = joystick_xpos(j_ch)
            j_ypos = joystick_ypos(j_ch)
        }
        j_dir = joystick_direction(j_ch)
        if (global.joy_dir == 0 || global.joy_dir == 1)
        {
            if (j_dir == 101)
            {
                if (j_xpos >= global.analog_sense)
                    j_fr = 1
                if (j_xpos <= (-global.analog_sense))
                    j_fl = 1
                if (j_ypos >= global.analog_sense)
                    j_fd = 1
                if (j_ypos <= (-global.analog_sense))
                    j_fu = 1
            }
        }
        if (j_dir != 101)
        {
            if (j_dir == 100)
                j_fl = 1
            if (j_dir == 98)
                j_fd = 1
            if (j_dir == 102)
                j_fr = 1
            if (j_dir == 104)
                j_fu = 1
            if (j_dir == 99)
            {
                j_fr = 1
                j_fd = 1
            }
            if (j_dir == 97)
            {
                j_fd = 1
                j_fl = 1
            }
            if (j_dir == 103)
            {
                j_fu = 1
                j_fl = 1
            }
            if (j_dir == 105)
            {
                j_fu = 1
                j_fr = 1
            }
        }
        if (global.joy_dir == 0 || global.joy_dir == 2)
        {
            j_pov = joystick_pov(j_ch)
            if (j_pov == 0)
                j_fu = 1
            if (j_pov == 270)
                j_fl = 1
            if (j_pov == 90)
                j_fr = 1
            if (j_pov == 180)
                j_fd = 1
            if (j_pov == 315)
            {
                j_fu = 1
                j_fl = 1
            }
            if (j_pov == 45)
            {
                j_fu = 1
                j_fr = 1
            }
            if (j_pov == 225)
            {
                j_fd = 1
                j_fl = 1
            }
            if (j_pov == 135)
            {
                j_fd = 1
                j_fr = 1
            }
        }
    }
    if (j_fr != j_fr_p && j_fr == 1)
        keyboard_key_press(global.keybind[2])
    if (j_fl != j_fl_p && j_fl == 1)
        keyboard_key_press(global.keybind[0])
    if (j_fd != j_fd_p && j_fd == 1)
        keyboard_key_press(global.keybind[3])
    if (j_fu != j_fu_p && j_fu == 1)
        keyboard_key_press(global.keybind[1])
    if (j_fr != j_fr_p && j_fr == 0)
        keyboard_key_release(global.keybind[2])
    if (j_fl != j_fl_p && j_fl == 0)
        keyboard_key_release(global.keybind[0])
    if (j_fd != j_fd_p && j_fd == 0)
        keyboard_key_release(global.keybind[3])
    if (j_fu != j_fu_p && j_fu == 0)
        keyboard_key_release(global.keybind[1])
}
up = 0
down = 0
left = 0
right = 0
if keyboard_check(global.keybind[1])
    try_up = 1
if keyboard_check_released(global.keybind[1])
    try_up = 0
if keyboard_check(global.keybind[3])
    try_down = 1
if keyboard_check_released(global.keybind[3])
    try_down = 0
if keyboard_check(global.keybind[2])
    try_right = 1
if keyboard_check_released(global.keybind[2])
    try_right = 0
if keyboard_check(global.keybind[0])
    try_left = 1
if keyboard_check_released(global.keybind[0])
    try_left = 0
if (global.osflavor == 1 && j_ch < 1)
{
    if try_up
        up = keyboard_check_direct(global.keybind[1])
    if try_down
        down = keyboard_check_direct(global.keybind[3])
    if try_left
        left = keyboard_check_direct(global.keybind[0])
    if try_right
        right = keyboard_check_direct(global.keybind[2])
}
else
{
    if try_up
        up = keyboard_check(global.keybind[1])
    if try_down
        down = keyboard_check(global.keybind[3])
    if try_left
        left = keyboard_check(global.keybind[0])
    if try_right
        right = keyboard_check(global.keybind[2])
}
if keyboard_check_released(global.keybind[1])
    up = 0
if keyboard_check_released(global.keybind[3])
    down = 0
if keyboard_check_released(global.keybind[0])
    left = 0
if keyboard_check_released(global.keybind[2])
    right = 0
if (keyboard_check(global.keybind[1]) && keyboard_check(global.keybind[3]) && keyboard_check(global.keybind[0]) && keyboard_check(global.keybind[2]))
{
    up = 0
    down = 0
    left = 0
    right = 0
}
var now_idle = (!((up || down || left || right || control_check(0) || control_check(1) || control_check(2))))
if (now_idle && (!idle))
    idle_time = current_time
idle = now_idle
var playerturn = (global.mnfight == 0 && global.myfight == 0)
if ((!global.inbattle) || (!instance_exists(obj_battlecontroller)))
    playerturn = 0
mashing = ((global.flag[28] == 1 || global.debug == true) && (global.interact > 0 || (!instance_exists(obj_mainchara))) && global.pca == 0 && control_check(2) && instance_exists(OBJ_WRITER) && (!instance_exists(obj_choicer)) && (!playerturn))
if mashing
{
    if h_skip
    {
        keyboard_key_press(global.keybind[6])
        keyboard_key_release(global.keybind[6])
    }
    else
    {
        keyboard_key_press(global.keybind[4])
        keyboard_key_release(global.keybind[4])
    }
    h_skip ^= 1
}
if (!instance_exists(obj_roomselector))
{
    if (global.debug == true)
    {
        if keyboard_check_pressed(ord("F"))
            room_speed = 200
    }
    if (global.debug == true && (!instance_exists(obj_mewmew_boss)))
    {
        if keyboard_check_pressed(ord("W"))
        {
            slowtog ^= 1
            if (slowtog == 1)
                room_speed = 10
            else
                room_speed = 30
        }
    }
    if (global.debug == true && keyboard_check_pressed(ord("T")))
        global.autotarget ^= 1
}
if (keyboard_check_pressed(global.keybind[10]) && (!cheat))
{
    if window_get_fullscreen()
        window_set_fullscreen(false)
    else
        window_set_fullscreen(true)
}
if global.debug
{
    if keyboard_check_pressed(ord("N"))
    {
        var obj_change = get_string("Get which object?", "obj_")
        if (obj_change != "")
        {
            var index = asset_get_index(obj_change)
            if (index != self && instance_exists(index))
            {
                var variabletochangeasstring = get_string((("Change which variable in " + obj_change) + "?"), "")
                if (variabletochangeasstring != "")
                {
                    var variable = variable_instance_get(index.id, variabletochangeasstring)
                    if (variable != "")
                    {
                        var type = typeof(variable)
                        if (type == "array")
                        {
                            var whichindex = get_string("Which index of the array?", "")
                            if (whichindex != "")
                            {
                                var value = array_get(variable, whichindex)
                                var valueasstring = string(value)
                                var changedvalue = get_string(((((((obj_change + "[") + whichindex) + "]") + " is ") + valueasstring) + ". Change index value to?"), valueasstring)
                                if (changedvalue != "")
                                {
                                    var typevalue = typeof(value)
                                    if (typevalue == "string")
                                        array_set(variable, whichindex, changedvalue)
                                    else if (typevalue == "number" || typevalue == "int32" || typevalue == "int64")
                                        array_set(variable, whichindex, real(changedvalue))
                                    else
                                        show_message((("Variable is type " + type) + ". This isn't supposed to happen."))
                                }
                                else
                                    show_message("Operation cancelled")
                            }
                            else
                                show_message("Operation cancelled")
                        }
                        else if (type != "ptr" && type != "undefined" && type != "unknown")
                        {
                            var variableasstring = string(variable)
                            changedvalue = get_string((((variabletochangeasstring + " is ") + variableasstring) + ". Change variable value to?"), variableasstring)
                            if (changedvalue != "")
                            {
                                if (type == "string")
                                    variable_instance_set(index.id, variabletochangeasstring, changedvalue)
                                else if (type == "number" || type == "int32" || type == "int64")
                                    variable_instance_set(index.id, variabletochangeasstring, real(changedvalue))
                                else
                                    show_message((("Variable is type " + type) + ". This isn't supposed to happen."))
                            }
                            else
                                show_message("Operation cancelled")
                        }
                        else
                            show_message((("Variable is type " + type) + ". This isn't supposed to happen."))
                    }
                    else
                        show_message("Operation cancelled")
                }
            }
            else
                show_message("Operation cancelled")
        }
        else
            show_message("That object does not exist currently.")
    }
    else if keyboard_check_pressed(vk_multiply)
    {
        var string_globalvariable = get_string("Change which global variable?", "")
        if (string_globalvariable != "")
        {
            if variable_global_exists(string_globalvariable)
            {
                var globalvariable = variable_global_get(string_globalvariable)
                if (globalvariable != "")
                {
                    type = typeof(globalvariable)
                    if (type == "array")
                    {
                        whichindex = get_string("Which index of the global array?", "")
                        if (whichindex != "")
                        {
                            value = array_get(globalvariable, whichindex)
                            valueasstring = string(value)
                            changedvalue = get_string(((((((("global." + string_globalvariable) + "[") + whichindex) + "]") + " is ") + valueasstring) + ". Change global array value to?"), valueasstring)
                            if (changedvalue != "")
                            {
                                typevalue = typeof(value)
                                if (typevalue == "string")
                                    array_set(globalvariable, whichindex, changedvalue)
                                else if (typevalue == "number" || typevalue == "int32" || typevalue == "int64")
                                    array_set(globalvariable, whichindex, real(changedvalue))
                                else
                                    show_message((("Variable is type " + type) + ". This isn't supposed to happen."))
                            }
                            else
                                show_message("Operation cancelled")
                        }
                        else
                            show_message("Operation cancelled")
                    }
                    else if (type != "ptr" && type != "undefined" && type != "unknown")
                    {
                        var globalvariableasstring = string(globalvariable)
                        changedvalue = get_string(((("global." + (string_globalvariable + " is ")) + globalvariableasstring) + ". Change global variable value to?"), globalvariableasstring)
                        if (changedvalue != "")
                        {
                            typevalue = typeof(globalvariable)
                            if (typevalue == "string")
                                variable_global_set(string_globalvariable, changedvalue)
                            else if (typevalue == "number" || typevalue == "int32" || typevalue == "int64")
                                variable_global_set(string_globalvariable, real(changedvalue))
                            else
                                show_message((("Variable is type " + type) + ". This isn't supposed to happen."))
                        }
                    }
                    else
                        show_message((("Variable is type " + type) + ". This isn't supposed to happen."))
                }
            }
            else
                show_message("That variable does not exist currently.")
        }
        else
            show_message("Operation cancelled")
    }
    if keyboard_check_pressed(vk_numpad8)
        global.filechoice++
    if keyboard_check_pressed(vk_numpad2)
        global.filechoice--
}
if (canquit == 1)
{
    if (keyboard_check_pressed(ord("R")) && (!instance_exists(obj_essaystuff)) && (!instance_exists(obj_roomselector)))
    {
        debug_r += 1
        spec_rtimer = 0
    }
    if ((global.debug == true && debug_r > 0) || debug_r > 4)
        game_restart()
    spec_rtimer += 1
    if (spec_rtimer >= 6)
        debug_r = 0
    if (quit < 0)
        quit = 0
    if (quit_delay < 0)
        quit_delay = 0
    if (keyboard_check(global.keybind[11]) && global.paused == false)
    {
        if (quit_delay >= 10 || global.inbattle == 1 || global.interact > 0 || global.allowpause == 0)
            quit += 1
        else
            quit_delay += 1
    }
    else
    {
        quit_delay -= 2
        quit -= 2
    }
}
run = ((global.allowrun == 1 || global.debug == true) && global.interact == 0 && global.flag[366] == 0 && global.flag[85] == 0 && global.flag[17] == 0 && control_check(1))
with (obj_snowgen)
{
    if shove
        other.run = 0
}
