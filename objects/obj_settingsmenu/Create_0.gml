if global.to_joyconfig
{
    global.to_joyconfig = 0
    with (instance_create(0, 0, obj_joypadmenu))
        from_pause = global.paused
    instance_destroy()
    return;
}
num_borders = 16
border_enabled[0] = 1
border_enabled[1] = 1
border_enabled[2] = 1
border_enabled[3] = 1
for (var i = 4; i <= num_borders; i++)
    border_enabled[i] = 0
border_11 = 0
fun = false
if ossafe_file_exists("undertale.ini")
{
    ossafe_ini_open("undertale.ini")
    if ossafe_file_exists("file0")
    {
        fun = true
        var Won = ini_read_real("General", "Won", 0)
        var CP = ini_read_real("General", "CP", 0)
        var CH = ini_read_real("General", "CH", 0)
        var BW = ini_read_real("General", "BW", 0)
        var BP = ini_read_real("General", "BP", 0)
        var BH = ini_read_real("General", "BH", 0)
        var DB = ini_read_real("General", "DB", 0)
        var EndF = ini_read_real("EndF", "EndF", 0)
        var M = ini_read_real("Alphys", "M", 0)
        var R = ini_read_real("Alphys", "R", 0)
        var T = ini_read_real("Misc", "T", 0)
        var C = ini_read_real("Mettaton", "BossMet", 0)
        var E = ini_read_real("EndF", "EndF", 0)
        if (Won || BW || CP || BP)
        {
            for (i = 4; i <= 8; i++)
                border_enabled[i] = 1
        }
        if (CP || BP)
            border_enabled[9] = 1
        if (CH || BH)
            border_enabled[10] = 1
        if M
        {
            border_enabled[11] = 1
            border_11 = R
        }
        if DB
            border_enabled[12] = 1
        if T
            border_enabled[13] = 1
        if C
            border_enabled[14] = 1
        if E
            border_enabled[16] = 1
        if (EndF >= 2)
            fun = false
    }
    ossafe_ini_close()
}
if (global.debug == true)
{
    border_enabled[4] = 1
    border_enabled[5] = 1
    border_enabled[6] = 1
    border_enabled[7] = 1
    border_enabled[8] = 1
    border_enabled[9] = 1
    border_enabled[10] = 1
    border_enabled[11] = 1
    border_enabled[12] = 1
    border_enabled[13] = 1
    border_enabled[14] = 1
    border_enabled[15] = 1
    border_enabled[16] = 1
}
menu = 0
menu_engage = 0
buffer = 5
button_list[0] = 32769
button_list[1] = 32770
button_list[2] = 32771
button_list[3] = 32772
button_list[4] = 32773
button_list[5] = 32775
button_list[6] = 32774
button_list[7] = 32776
button_list[8] = 32779
button_list[9] = 32780
button_list[10] = 32777
button_list[11] = 32778
button_list[12] = -4
r_line = scr_gettext("joyconfig_resetted")
o_o = 0
siner = 0
r_buffer = 0
intro = 0
weather = 0
rectile = 0
extreme = 0
extreme2 = 0
harp = 0
weathermusic = 0
if (fun == true)
{
    intro = 1
    menu_engage = -1
    weather = 1
    month = current_month
    if (month == 12 || month == 1 || month == 2)
        weather = 1
    if (month == 3 || month == 4 || month == 5)
        weather = 2
    if (month == 6 || month == 7 || month == 8)
        weather = 3
    if (month == 9 || month == 10 || month == 11)
        weather = 4
}
finish = 0
from_pause = 0
if (global.paused == true)
{
    from_pause = 1
    with (obj_pausecontroller)
        temphide = 1
}
controlsmenu = 0
editing_keybind = -1
keybinds_total = 0
keybind[keybinds_total++] = "Move Left - "
keybind[keybinds_total++] = "Move Up - "
keybind[keybinds_total++] = "Move Right - "
keybind[keybinds_total++] = "Move Down - "
keybind[keybinds_total++] = "Select - "
keybind[keybinds_total++] = "Select (Alt) - "
keybind[keybinds_total++] = "Unselect - "
keybind[keybinds_total++] = "Unselect (Alt) - "
keybind[keybinds_total++] = "Menu - "
keybind[keybinds_total++] = "Menu (Alt) - "
keybind[keybinds_total++] = "Toggle Fullscreen - "
keybind[keybinds_total++] = "Quit - "