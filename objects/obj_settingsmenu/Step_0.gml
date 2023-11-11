if finish
{
    ossafe_ini_open("config.ini")
    if (global.language != "ja")
        ini_write_real("General", "nbm", global.newmenu)
    ini_write_string("General", "lang", global.language)
    ini_write_real("General", "sb", global.screen_border_id)
    ini_write_real("General", "internet", global.allowinternet)
    ini_write_real("General", "mirrormode", global.mirrormodesetting)
    ini_write_real("General", "textboxes", global.oppatextboxstyle)
    ini_write_real("joypad1", "b0", global.button0)
    ini_write_real("joypad1", "b1", global.button1)
    ini_write_real("joypad1", "b2", global.button2)
    ossafe_ini_close()
    ossafe_ini_open("keybinds.ini")
    ini_write_real("Movement", "left", global.keybind[0])
    ini_write_real("Movement", "up", global.keybind[1])
    ini_write_real("Movement", "right", global.keybind[2])
    ini_write_real("Movement", "down", global.keybind[3])
    ini_write_real("Interaction", "select_1", global.keybind[4])
    ini_write_real("Interaction", "select_2", global.keybind[5])
    ini_write_real("Interaction", "return_1", global.keybind[6])
    ini_write_real("Interaction", "return_2", global.keybind[7])
    ini_write_real("Interaction", "menu_1", global.keybind[8])
    ini_write_real("Interaction", "menu_2", global.keybind[9])
    ini_write_real("Other", "fullscreen", global.keybind[10])
    ini_write_real("Other", "quit", global.keybind[11])
    ossafe_ini_close()
    ossafe_savedata_save()
    if (from_pause == 1)
    {
        room_goto(global.currentroom)
        with (obj_pausecontroller)
            temphide = 0
        room_persistent = false
    }
    else
    {
        caster_free(-3)
        room_goto(room_intromenu)
    }
}
