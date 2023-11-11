ii = caster_load("music/intronoise.ogg")
caster_play(ii, 1, 1)
alarm[4] = 150
ok = 0
jok = 0
rot = 0
scr_enable_screen_border(false)
con = 0
ossafe_ini_open("undertale.ini")
truename = ini_read_real("Flowey", "truename", 0)
IK = ini_read_real("Flowey", "IK", 0)
NK = ini_read_real("Flowey", "NK", 0)
won = ini_read_real("General", "Won", 0)
ossafe_ini_close()
if (truename != 0 || IK != 0 || NK != 0 || won != 0)
    ourturnyet = irandom(100)
else
    ourturnyet = 0
if (global.debug == true)
    ourturnyet = 7
global.flag[161] = 1
