currenthour = current_hour
if (currenthour <= 6 || currenthour >= 18)
    image_index = 0
else
    image_index = 1
if (weekday != current_weekday)
{
    weekday = current_weekday
    if (weekday == 7)
        day = scr_gettext("obj_daygraph_0")
    else
        day = scr_gettext(("obj_daygraph_" + string(weekday)))
}
alarm[0] = 1800
