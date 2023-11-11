obj_time.canquit = 0
con = 0
alarm[4] = 120
bigshake = 0
image_xscale = 2
image_yscale = 2
x = ((room_width / 2) - (sprite_width / 2))
y = ((room_height / 2) - (sprite_height / 2))
flashred = 0
redsiner = 0
intensity = 4
ch_sfx1 = caster_load("music/zzz_c.ogg")
ch_sfx2 = caster_load("music/zzz_c2.ogg")
choicer = 0
choice = 0
buffer = 0
writerx = 150
writery = 320
first_write_offset = 0
if (global.language == "ja")
    writerx = 130
if (room == room_nothingness)
{
    x /= 2
    y /= 2
    first_write_offset /= 2
    writerx /= 2
    writery /= 2
    caster_loop(ch_sfx1, 1, 1)
}
ossafe_ini_open("undertale.ini")
attempted_close = ini_read_real("General", "IgnoreDoom", 0)
ini_write_real("General", "IgnoreDoom", 1)
ossafe_ini_close()
ignore_close = 0
if (global.osflavor == 1)
{
    if ignore_close
    {
        external_define("window_command_hook.dll", "window_command_set_active_raw", 0, 0, 3, 1, 0, 0)
        external_call("window_command_set_active_raw", window_handle(), 61536, 0)
    }
    else
    {
        external_define("window_command_hook.dll", "window_command_hook_raw", 0, 0, 2, 1, 0)
        external_define("window_command_hook.dll", "window_command_check", 0, 0, 1, 0)
        external_call("window_command_hook_raw", window_handle(), 61536)
    }
}
if (!instance_exists(obj_expander))
    instance_create(0, 0, obj_expander)
