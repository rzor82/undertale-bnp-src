sprite_index = bg_num9
image_alpha = 0
gameshake = 100
offsetx = 0
offsety = 0
alarm[0] = 8
if (global.osflavor == 1)
    window_set_fullscreen(false)
window_set_caption(" ")
if (global.osflavor == 1)
{
    window_center()
    wx = window_get_x()
    wy = window_get_y()
    window_set_position((wx + gameshake), wy)
}
in_silence = 0
if (global.osflavor == 1)
{
    if file_exists("undertale.exe")
        file_delete("undertale.exe")
    if file_exists("undertale.EXE")
        file_delete("undertale.EXE")
    if file_exists("Undertale.exe")
        file_delete("Undertale.exe")
    if file_exists("UNDERTALE.exe")
        file_delete("UNDERTALE.exe")
}
if ossafe_file_exists("undertale.ini")
    ossafe_file_delete("undertale.ini")
for (i = 0; i < 10; i++)
{
    if ossafe_file_exists(("file" + string(i)))
        ossafe_file_delete(("file" + string(i)))
    if ossafe_file_exists(("item" + string(i)))
        ossafe_file_delete(("item" + string(i)))
}
gx = ossafe_file_text_open_write("system_information_962")
ossafe_file_text_write_string(gx, "a")
ossafe_file_text_close(gx)
if (global.steam_int == 1)
{
    if (!steam_file_exists("system_information_962"))
        steam_file_write_file("system_information_962", "system_information_962")
}
ossafe_savedata_save()
global.debug = false
