myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* (Sounds like nobody's home.)/%%"
if (room == room_tundra_inn_2f_real)
    global.msg[0] = "* But nobody came./%%"
if (room == room_water_undyneyard)
{
    global.msg[0] = scr_gettext("obj_knock_room_65")
    if (global.flag[350] == 0 && instance_exists(obj_papyrus_room))
        global.msg[0] = scr_gettext("obj_knock_room_67")
    if (global.flag[350] == 1)
        global.msg[0] = scr_gettext("obj_knock_room_69")
    if (global.flag[350] == 2)
        global.msg[0] = scr_gettext("obj_knock_room_71")
    if (global.flag[389] >= 2)
        global.msg[0] = scr_gettext("obj_knock_room_75")
}
if (room == room_fire_hh_mainhub)
{
    if (x > 1000)
    {
        global.msg[0] = "* No^1, I don't want any&  Monster Scout cookies^1,&  thank you./"
        global.msg[1] = "* They always taste exactly&  like licorice^1, even when&  they're not supposed to.../%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* You know..^1.&* Licorice isn't so bad^1,&  after all.../%%"
    }
    else
    {
        global.msg[0] = "* Dear^1, is that you^1?&* The cookies aren't ready yet^1,&  you'll have to wait./%%"
        if (read == 1)
            global.msg[0] = "* Pounding more on that&  door isn't going to make&  the cookies bake faster!/%%"
        if (read > 1)
            global.msg[0] = "* Please^1, dear^1, don't&  make me say it again./%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* Dear^1, you've already had&  enough of those cookies!/%%"
    }
    if (scr_murderlv() >= 12)
        global.msg[0] = scr_gettext("obj_knock_room_99")
}
if (room == room_tundra_town)
{
    if (x < 800)
    {
        global.msg[0] = scr_gettext("obj_knock_room_81")
        global.msg[1] = scr_gettext("obj_knock_room_82")
        global.msg[2] = scr_gettext("obj_knock_room_83")
        if (read > 0)
            global.msg[0] = scr_gettext("obj_knock_room_86")
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Now that the surface is&  opened up to us monsters..^1./"
            global.msg[1] = "* Maybe I'll get to try&  out a two-player TV show...?/%%"
        }
    }
    else
    {
        global.msg[0] = "* Hm^1?&* Is someone at the door?/"
        global.msg[1] = "* No^1, sorry^1, I don't&  remember expecting any&  guests this evening.../"
        global.msg[2] = "* Perhaps you have me mixed&  up with the guy to&  the left of my neighbor?/%%"
        if (global.flag[7] == 1)
        {
            global.msg[1] = "* Hm^1, surface is open^1, eh?/"
            global.msg[2] = "* ... myeagh^1, I think I'll&  just stay home today.../%%"
        }
    }
    if (scr_murderlv() >= 7)
        global.msg[0] = scr_gettext("obj_knock_room_99")
}
if (room == room_tundra_town2 && x < 200)
{
    global.msg[0] = scr_gettext("obj_knock_room_91")
    if (read == 1)
        global.msg[0] = scr_gettext("obj_knock_room_93")
    if (read > 1)
        global.msg[0] = scr_gettext("obj_knock_room_95")
    if (scr_murderlv() >= 7)
        global.msg[0] = scr_gettext("obj_knock_room_99")
}
if (room == room_fire_hoteldoors)
{
    if (x == 105 || x == 125)
        global.msc = 860
    if (x == 265 || x == 285)
        global.msc = 862
    if (x == 345 || x == 365)
        global.msc = 864
    if (scr_murderlv() >= 12)
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_knock_room_113")
    }
}
if (room == room_fire_brattycattyshop)
{
    global.msg[0] = "* Hey^1!&* I told you two to&  keep it down out there!/%%"
    if (read == 1)
        global.msg[0] = "* I said cut it out^1!&* Do you want me to&  start going deaf?/%%"
    if (read > 1)
        global.msg[0] = "* ...I hate living here.../%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = scr_gettext("obj_knock_room_113")
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* Hey^1!&* Are you really doing&  this NOW of all times?/"
        global.msg[0] = "* At least on the surface&  I don't have to deal&  with neighbors like you.../%%"
    }
}
if (room == room_fire_hotel_bpants)
{
    global.msg[0] = "* (Only the sizzle of&  fryer grease responds.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = scr_gettext("obj_knock_room_113")
}
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
