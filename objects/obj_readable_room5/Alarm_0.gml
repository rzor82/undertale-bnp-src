myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* You really shouldn't be&  reading this, should you?/%%"
if (room == room_torhouse2)
{
    if (x < 300 && x > 160)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_144")
        if (global.flag[6] == 1)
            global.msg[0] = scr_gettext("obj_readable_room1_147")
    }
    if (x < 160)
    {
        global.msg[0] = scr_gettext("obj_readable_room4_76")
        if (scr_murderlv() >= 1)
            global.msg[0] = scr_gettext("obj_readable_room4_77")
    }
    if (x > 500)
    {
        global.msg[0] = scr_gettext("obj_readable_room4_63")
        if (global.flag[7] == 1)
            global.msg[0] = scr_gettext("obj_readable_room4_64")
        if (scr_murderlv() >= 1)
            global.msg[0] = scr_gettext("obj_readable_room4_66")
    }
}
if (room == room_ruins_home_store)
{
    global.msg[0] = "* (From afar^1, this looks&  just like a doorway to the&  staff rooms.)/"
    global.msg[1] = "* (Upon further inspection^1,&  however^1, it's just&  painted on the wall...)/%%"
}
if (room == room_ruins_homehub)
{
    if (x == 940 && y == 920)
    {
        global.msg[0] = "* Hey^1! Watch where you're&  interacting^1, bub^1!&* I'm standing here!/%%"
        if (read >= 1)
        {
            global.msg[0] = "* O-oh^1, you just wanted&  to say hi...^1?&* Wow..../"
            global.msg[1] = "* Nobody's said hello to&  this old lamp post.../%%"
        }
    }
    else
    {
        comment = "stupid utmt not letting me do this without cheating"
        if (read > 0)
            global.msg[0] = "* (You've had enough of&  this lamp post.)/%%"
        else
        {
            messagechoice = irandom(100)
            if (messagechoice >= 0 && messagechoice <= 9)
                global.msg[0] = "* (It's a lamp post.)/%%"
            else if (messagechoice >= 10 && messagechoice <= 19)
                global.msg[0] = "* (This here is a&  genuine lamp post.)/%%"
            else if (messagechoice >= 20 && messagechoice <= 29)
                global.msg[0] = "* (This might be a lamp post...^1)&* (Or it might not.)/%%"
            else if (messagechoice >= 30 && messagechoice <= 39)
                global.msg[0] = "* (It's just a lamp post.)/%%"
            else if (messagechoice >= 40 && messagechoice <= 49)
                global.msg[0] = "* (You're fascinated by this&  completely regular lamp post.)/%%"
            else if (messagechoice >= 50 && messagechoice <= 59)
                global.msg[0] = "* (You're unsure what this&  could possibly be.)/%%"
            else if (messagechoice >= 60 && messagechoice <= 69)
                global.msg[0] = "* (You were caught off&  guard by this&  stationary lamp post.)/%%"
            else if (messagechoice >= 70 && messagechoice <= 79)
                global.msg[0] = "* (The lamp post gave&  you a mean look.)/%%"
            else if (messagechoice >= 80 && messagechoice <= 89)
                global.msg[0] = "* (This lamp post has&  seen better days.)/%%"
            else if (messagechoice >= 90 && messagechoice <= 99)
                global.msg[0] = "* (You have a sudden urge&  to lick the lamp post...^1)&* (...but it's not snowing.)/%%"
            else
                global.msg[0] = "* (There's a tiny Froggit&  sitting on this lamp post!^1)&* (It tipped its hat to you.)/%%"
        }
    }
    if (scr_murderlv() > 0)
        global.msg[0] = "* (A lamp post.)/%%"
}
if (room == room_fire_hh_mainhub)
{
    global.msg[0] = "* (It's a tree with redish-orange&  leaves and dark red bark.)/"
    global.msg[1] = "* (Looking closely^1, you spot&  embers embedded into the bark^1,&  burning indefinitely.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a red tree.)/%%"
}
if (room == room_fire_core_controlroom)
{
    if (x > 200)
        global.msg[0] = "* (It's a view of the CORE.^1)&* (It must be used for&  surveillance purposes.)/%%"
    else
    {
        global.msg[0] = "* (It's you!^1)&* (Your face is being&  displayed on this monitor.)/%%"
        if (global.flag[7] == 1)
            global.msg[0] = scr_gettext("obj_readable_room4_64")
        if (scr_murderlv() >= 12)
            global.msg[0] = scr_gettext("obj_readable_room4_66")
    }
}
if (room == room_fire_brattycattyshop)
{
    global.msg[0] = "* (It's a bowl of milk.)/"
    global.msg[1] = "* (You're unsure if this&  is for another cat&  or for Catty herself...)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a bowl of milk.)/%%"
}
if (room == room_water_gersonshop)
    global.msg[0] = "* (There's a strange marking&  on this wall...)/%%"
if (room == room_tundra_town)
{
    global.msg[0] = "* 'Welcome to Grillby's!^1'&  'Enjoy your stay!'/"
    global.msg[1] = "* (The sign is a bit greasy.^1)/%%"
    if (scr_murderlv() >= 7)
        global.msg[1] = "* (Nobody's inside.)/%%"
}
if (room == room_water5)
    global.msg[0] = "* (It only goes one way.)/%%"
if (room == room_asrielroom)
    global.msg[0] = "* (The closet is empty^1.)&* (It seems someone has moved&  the clothes somewhere else...)/%%"
if (room == room_asrielroom_final)
{
    global.msg[0] = scr_gettext("obj_readable_room5_68")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room5_69")
}
if (room == room_torhouse3)
{
    global.msg[0] = "* (A table^1, chai^1r, and paper...^1)&* (You see a lot of these around&  here^1, huh?)/%%"
    if (scr_murderlv() >= 1)
        global.msg[0] = "* Nothing important./%%"
}
if (room == room_asgoreroom)
{
    global.msg[0] = scr_gettext("obj_readable_room5_74")
    global.msg[1] = scr_gettext("obj_readable_room5_75")
    if (global.flag[7] == 1)
        global.msg[1] = scr_gettext("obj_readable_room5_78")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room5_80")
    if (x < 208)
        global.msg[0] = scr_gettext("obj_readable_room5_82")
}
if (room == room_tundra8)
{
    if instance_exists(obj_sans_room)
    {
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        global.msg[0] = "* (Just a conveniently-shaped&  snow poff.)/"
        scr_sansface(1, 1)
        global.msg[2] = "* hey^1, \\E2hands off&  the merch kid./%%"
    }
    else
        global.msg[0] = "* (Just a conveniently-shaped&  snow poff.)/%%"
}
if (room == room_tundra_xoxopuzz)
    global.msc = 696
if (room == room_fire_lab1)
{
    global.msg[0] = scr_gettext("obj_readable_room5_92")
    if (y >= 125 && x > 800)
        global.msc = 827
    if (x == 935)
        global.msg[0] = scr_gettext("obj_readable_room5_177")
    if (global.plot < 126 && scr_murderlv() < 12)
        global.msg[0] = scr_gettext("obj_readable_room5_93")
}
if (room == room_fire_lab2)
{
    if (x < 130)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_104")
        global.msg[1] = scr_gettext("obj_readable_room5_105")
    }
    if (x < 204 && x > 144)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_110")
        global.msg[1] = scr_gettext("obj_readable_room5_111")
        if (scr_murderlv() >= 12)
            global.msg[0] = "* (It's a box.^1)&* (Sometimes^1, it's a bed.)/%%"
    }
    if (x < 575 && x > 474)
        global.msg[0] = scr_gettext("obj_readable_room5_116")
    if (x > 575)
        global.msc = 647
}
if (room == room_water_piano)
{
    global.msg[0] = scr_gettext("obj_readable_room5_126")
    global.msg[1] = scr_gettext("obj_readable_room5_127")
}
if (room == room_water7)
{
    global.msg[0] = scr_gettext("obj_readable_room5_131")
    global.msg[1] = scr_gettext("obj_readable_room5_132")
    if (global.flag[7] == 1)
        global.msg[1] = "* (For some reason^1, it's&  not quite as scary&  to you anymore.)/%%"
}
if (room == room_tundra_library)
{
    global.msg[0] = scr_gettext("obj_readable_room5_138")
    global.msg[1] = scr_gettext("obj_readable_room5_139")
    global.msg[2] = scr_gettext("obj_readable_room5_140")
}
if (room == room_water_undynehouse)
{
    global.msg[0] = scr_gettext("obj_readable_room5_145")
    global.msg[1] = scr_gettext("obj_readable_room5_146")
}
if (room == room_water_undynehouse && x < 80)
{
    global.facechoice = 5
    global.faceemotion = 4
    global.typer = 37
    global.msg[0] = scr_gettext("obj_readable_room5_154")
    global.msg[1] = scr_gettext("obj_readable_room5_155")
}
if (room == room_fire2)
{
    global.msg[0] = scr_gettext("obj_readable_room5_160")
    if (global.flag[353] > 7)
        global.msg[0] = scr_gettext("obj_readable_room5_163")
    if (global.flag[353] > 15)
        global.msg[0] = scr_gettext("obj_readable_room5_167")
    if (global.flag[353] > 15 && global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_readable_room5_171")
}
if (room == room_fire_hh_lower)
{
    global.msg[0] = scr_gettext("obj_readable_room5_160")
    if (global.flag[359] > 7)
        global.msg[0] = scr_gettext("obj_readable_room5_163")
    if (global.flag[359] > 15)
        global.msg[0] = scr_gettext("obj_readable_room5_167")
    if (global.flag[359] > 15 && global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_readable_room5_171")
}
if (room == room_tundra_sansroom)
{
    if (x < 128)
    {
        if (global.flag[497] < 3)
        {
            global.msg[0] = scr_gettext("obj_readable_room5_186")
            global.msg[1] = scr_gettext("obj_readable_room5_187")
            global.flag[497] = 3
        }
        else
            global.msg[0] = scr_gettext("obj_readable_room5_192")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room5_197")
}
if (room == room_fire_cookingshow)
    global.msg[0] = scr_gettext("obj_readable_room5_203")
if (room == room_dogshrine)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_readable_room5_209")
    if (dognumber == 1)
        global.msc = 950
    if (dognumber == 2)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_216")
        global.msg[1] = scr_gettext("obj_readable_room5_217")
        global.msg[2] = scr_gettext("obj_readable_room5_218")
    }
    if (dognumber == 3)
        global.msc = 955
    if (dognumber == 4)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_226")
        global.msg[1] = scr_gettext("obj_readable_room5_227")
    }
    if (dognumber == 5)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_231")
        global.msg[1] = scr_gettext("obj_readable_room5_232")
    }
    if (dognumber == 6)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_236")
        global.msg[1] = scr_gettext("obj_readable_room5_237")
    }
    if (dognumber == 7)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_241")
        global.msg[1] = scr_gettext("obj_readable_room5_242")
    }
    if (dognumber == 8)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_246")
        global.msg[1] = scr_gettext("obj_readable_room5_247")
        global.msg[2] = scr_gettext("obj_readable_room5_248")
    }
    if (dognumber == 9)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_252")
        global.msg[1] = scr_gettext("obj_readable_room5_253")
    }
    if (dognumber == 10)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_257")
        global.msg[1] = scr_gettext("obj_readable_room5_258")
        global.msg[2] = scr_gettext("obj_readable_room5_259")
        global.msg[3] = scr_gettext("obj_readable_room5_260")
    }
    if (dognumber == 11)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_264")
        global.msg[1] = scr_gettext("obj_readable_room5_265")
    }
    if (dognumber == 12)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_269")
        global.msg[1] = scr_gettext("obj_readable_room5_270")
        global.msg[2] = scr_gettext("obj_readable_room5_271")
        global.msg[3] = scr_gettext("obj_readable_room5_272")
    }
}
if (room == room_dogshrine_ruined)
{
    if (locked == true)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_ds2_0")
        global.msg[1] = scr_gettext("obj_readable_room5_ds2_1")
        global.msg[2] = scr_gettext("obj_readable_room5_ds2_2")
        snd_stop(mus_sfx_dogseal)
        snd_play(mus_sfx_dogseal)
    }
    else
    {
        global.msg[0] = scr_gettext("obj_readable_room5_ds2_3")
        global.msg[1] = scr_gettext("obj_readable_room5_ds2_4")
        if (read >= 1)
        {
            global.msg[0] = scr_gettext("obj_readable_room5_ds2_5")
            global.msg[1] = scr_gettext("obj_readable_room5_ds2_6")
            global.msg[2] = scr_gettext("obj_readable_room5_ds2_7")
        }
    }
}
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
