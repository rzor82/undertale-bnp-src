death = 0
if ossafe_file_exists("system_information_963")
    death = 1
type = 0
dogamt = 0
if (global.flag[512] == 1)
    type = 1
if (type == 0)
    noise = caster_load("music/intronoise.ogg")
song = caster_load("music/piano.ogg")
timer = 0
photo_alpha = 0
newthing = ossafe_file_text_open_write("system_information_320")
ossafe_file_text_write_string(newthing, "b")
ossafe_file_text_close(newthing)
ossafe_ini_open("undertale.ini")
curf = ini_read_real("EndF", "EndF", 0)
if (curf == 0)
    ini_write_real("EndF", "EndF", 1)
ini_write_real("General", "CP", 1)
ossafe_ini_close()
if (curf == 0)
    ossafe_savedata_save()
