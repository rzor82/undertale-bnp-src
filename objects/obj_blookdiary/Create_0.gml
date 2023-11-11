myinteract = 0
facing = 0
direction = 270
talkedto = 0
image_speed = 0
con = 0
touched = false
mydialoguer = 3948394839
scr_depth()
spamchance = irandom(30)
if (spamchance == 7 || global.debug)
{
    with (scr_marker(130, 24, bg_blookposter_1))
        scr_depth()
}
