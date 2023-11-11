script_execute(SCR_GAMESTART, 0, 0, 0, 0, 0)
global.screen_border_id = 0
time = 0
image_speed = 0
jjjjjj = 0
repeat (20)
{
    global.tempvalue[jjjjjj] = 0
    jjjjjj += 1
}
ossafe_savedata_load()
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
started = 0
if (global.screen_border_id == 0 && window_get_height() != 960)
{
    if (display_get_height() > 1079)
        window_set_size(1280, 960)
    else
        window_set_size(640, 480)
    alarm[2] = 3
}
else if (global.screen_border_id != 0 && window_get_height() != 540)
{
    window_set_size(960, 540)
    alarm[2] = 3
}
