wx = 90
if (global.language == "ja")
    wx -= 16
wy = 280
scr_setfont(-1)
draw_set_color(c_white)
a = 2
b = 3
string0 = scr_gettext("obj_FinalWriter_34")
alarm[0] = 2
active = false
at = 1
typespeed = 6
w_sfx = caster_load("music/sfx/sfx_a_gigatalk.ogg")
if (global.language == "ja")
    textscale = 1.5
else
    textscale = 2
do_asriel_typer = 1
