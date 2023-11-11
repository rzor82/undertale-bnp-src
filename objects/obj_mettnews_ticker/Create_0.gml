stayx = (xstart - __view_get(0, 0))
stayy = (ystart - __view_get(1, 0))
on = 1
ang = (1 + (random(2) * choose(1, -1)))
if (ang > 0)
    ang /= 2
tx = 0
stringer = scr_gettext("mettnews_ticker_1")
stringer += scr_gettext("mettnews_ticker_2")
stringer += scr_gettext("mettnews_ticker_3")
stringer += scr_gettext("mettnews_ticker_4")
stringer += scr_gettext("mettnews_ticker_5")
stringer += scr_gettext("mettnews_ticker_6")
stringer += scr_gettext("mettnews_ticker_7")
stringer += scr_gettext("mettnews_ticker_8")
stringer += scr_gettext("mettnews_ticker_9")
if instance_exists(obj_weather)
    stringer += (("THERE'S NO WEATHER DOWN HERE, BUT THE WEATHER ON THE SURFACE IS " + string_upper(obj_weather.forecast)) + "    ||     ")
write = 1
doom = 0
alarm[2] = 1
thischara = obj_mainchara
timertimer = 0
voff = 0
doomtimer = 0
doomx = 0
