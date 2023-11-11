myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_gaster_follower_b_94")
global.msg[1] = scr_gettext("obj_gaster_follower_b_95")
global.msg[2] = scr_gettext("obj_gaster_follower_b_96")
global.msg[3] = scr_gettext("obj_gaster_follower_b_97")
global.msg[4] = scr_gettext("obj_gaster_follower_b_98")
if (talkedto >= 1)
{
    global.msg[0] = "* Hmm..^1.&* Well^1, that's in the past./"
    global.msg[1] = "* ASGORE has finally chosen&  someone to be the new&  Royal Scientist./"
    global.msg[2] = "\\Y* Dr. Alphys..^1.\\W&* I wonder..^1./%"
    gcon = 1
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
