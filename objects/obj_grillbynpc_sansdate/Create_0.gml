dsprite = spr_sans_d
usprite = spr_sans_u
lsprite = spr_sans_l
rsprite = spr_sans_r
dtsprite = spr_sans_d
utsprite = spr_sans_u
ltsprite = spr_sans_l
rtsprite = spr_sans_r
myinteract = 0
facing = 0
squirt = 0
direction = 90
talkedto = 0
image_speed = 0
con = 0
if (global.flag[89] != 1)
    instance_destroy()
else
{
    global.flag[327] = 0
    instance_create(83, 190, obj_townnpc_monsterkid1)
    con = 1
    visible = true
    rimshot = caster_load("music/rimshot.ogg")
    whoopee = caster_load("music/whoopee.ogg")
    mystery = caster_load("music/mysteriousroom2.ogg")
    with (obj_sansmusic)
        instance_destroy()
    caster_free(global.currentsong)
    global.currentsong = caster_load("music/muscle.ogg")
    caster_loop(global.currentsong, 1, 1)
}
scr_depth()
burg = 0
curvol = 1
counter = scr_marker(92, 65, spr_grillbycounter)
counter.depth = 199990
