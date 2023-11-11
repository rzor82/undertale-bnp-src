global.interact = 1
if keyboard_check(vk_escape)
{
    if (global.osflavor <= 2)
        game_end()
}
window_set_caption(" ")
if (con == 1)
{
    global.typer = 106
    global.facechoice = 0
    global.msc = 888
    con = 2
    writer = instance_create(10, 150, OBJ_WRITER)
}
if (con == 2 && instance_exists(OBJ_WRITER) == 0)
{
    con = 3
    alarm[4] = 180
}
if (con == 4)
{
    global.typer = 106
    global.facechoice = 0
    global.msc = 890
    con = 5
    writer = instance_create(10, 150, OBJ_WRITER)
}
if (con == 5 && instance_exists(OBJ_WRITER) == 0)
{
    if ossafe_file_exists("system_information_962")
        ossafe_file_delete("system_information_962")
    gx = ossafe_file_text_open_write("system_information_963")
    ossafe_file_text_write_string(gx, "b")
    ossafe_file_text_close(gx)
    if (global.steam_int == 1)
    {
        if steam_file_exists("system_information_962")
            steam_file_delete("system_information_962")
        steam_file_write_file("system_information_963", "system_information_963")
    }
    ossafe_savedata_save()
    ossafe_ini_open("undertale.ini")
    ini_write_real("General", "A", 1)
    ossafe_ini_close()
    ossafe_ini_open("config.ini")
    ini_write_real("General", "sa", (irandom(9) + 1))
    ossafe_ini_close()
    caster_free(-3)
    instance_create(0, 0, obj_whitefader)
    con = 6
    if (global.osflavor <= 2)
        alarm[4] = 20
    else
        alarm[4] = 180
}
if (con == 7)
{
    if (global.savedata_async_id == -1)
        ossafe_game_end()
}
