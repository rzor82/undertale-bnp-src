skip = false
con = 0
alarm[0] = 18000
wind = caster_load("music/f_wind2.ogg")
caster_loop(wind, 0.8, 0.7)
obj_time.canquit = 0
mc = instance_create(-20, -20, obj_mainchara)
mc.visible = false
window_set_caption(" ")
scr_enable_screen_border(false)
newthing = ossafe_file_text_open_write("system_information_320")
ossafe_file_text_write_string(newthing, "b")
ossafe_file_text_close(newthing)
ossafe_ini_open("undertale.ini")
attempted_close = ini_read_real("General", "IgnoreDoom", 0)
ossafe_ini_close()
if attempted_close
{
    instance_destroy(mc)
    instance_create(0, 0, obj_truechara)
    caster_free(wind)
    alarm[0] = -1
}
