myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_chilldrakenpc_70")
global.msg[1] = scr_gettext("obj_chilldrakenpc_71")
if (talkedto > 0)
    global.msg[0] = scr_gettext("obj_chilldrakenpc_72")
if (global.flag[7] == 1)
{
    global.msg[0] = scr_gettext("obj_chilldrakenpc_76")
    global.msg[1] = scr_gettext("obj_chilldrakenpc_77")
}
if (room == room_tundra_turnbeforeteenhangout)
{
    if (global.flag[7] == 1)
    {
        if (x >= 265)
        {
            global.msg[0] = "* Heh..^1. sorry kid.&* Big kids only^1, you know?/"
            global.msg[1] = "* Besides^1, we're all getting&  ready to move shop to&  the overworld./"
            global.msg[2] = "* At this rate you'll&  never join the club^1!&* Guh huh huh huh^1!/%%"
        }
        else
        {
            global.msg[0] = "* Get lost^1, kiddo^1!&* You don't belong here!/"
            global.msg[1] = "* You'll just get in&  the way of our&  moving operation!/%%"
        }
    }
    else if (global.armor == 15 || global.armor == 48)
    {
        if (x >= 265)
        {
            global.msg[0] = "* Well^1, well^1, well^1.&* Look who's shaped up!/"
            global.msg[1] = (global.armor == 48 ? "* You're lookin' mighty fine&  now^1, cowboy!/" : "* You're lookin' properly tough&  now^1, kiddo./")
            global.msg[2] = (global.armor == 48 ? "* But are you fine enough.../" : "* But are you tough enough.../")
            global.msg[3] = "* For this!^1?&* Guh huh huh huh!/%%"
            if (scr_murderlv() >= 2)
                global.msg[1] = "* You're lookin'-%%"
        }
        else
        {
            var armor = (scr_murderlv() >= 2 ? "%%" : (global.armor == 48 ? "cowboy hat" : "bandanna"))
            global.msg[0] = (("* Look at you^1!&* That " + armor) + " really&  makes you look tough, kid./")
            global.msg[1] = "* I'd say that you MIGHT&  have a shot at joinin' us./"
            global.msg[2] = "* But^1, in order to get a&  solid answer.../"
            global.msg[3] = "* You'll have to get past this!/%%"
        }
        with (obj_mainchara)
            uncan = 1
        con = 1
    }
    else if (x >= 265)
    {
        global.msg[0] = "* Heh..^1. sorry kid.&* Big kids only^1, you know?/"
        global.msg[1] = "* Come back when you're&  a little..^1.&* Mmmmm..^1./"
        global.msg[2] = "* Older^1!&* Guh huh huh huh^1!/%%"
        if (scr_murderlv() >= 2)
            global.msg[1] = "* Come back when you're-%%"
        else if (talkedto > 0)
            global.msg[0] = "\\W* You gotta \\Ylook tough to&  get into OUR club^1,\\W punk^1!&* Scram!/%%"
    }
    else
    {
        global.msg[0] = "* Get lost^1, kiddo^1!&* You don't belong here!/"
        global.msg[1] = "* This club is for teens ONLY!/%%"
        if (scr_murderlv() >= 2)
            global.msg[1] = "* This club is for-%%"
        else if (talkedto > 0)
            global.msg[0] = "\\W* Go \\Yput on some tougher&  looking clothes^1,\\W maybe&  you'll have a better shot^1./%%"
    }
    if (scr_murderlv() >= 2)
    {
        with (obj_mainchara)
            uncan = 1
        con = 1
    }
}
if (room == room_tundra_teenhangoutroom)
{
    if (x > 300)
    {
        global.msg[0] = "* Hey^1, not now^1, kid^1.&* You're going to make&  us look like losers./"
        global.msg[1] = "* I-I MEAN^1, I'VE NEVER&  MET THIS HUMAN IN&  MY ENTIRE LIFE!!/"
        global.msg[2] = "* HA^1, HAHA^1, HA.../%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* PLEASE^1, STRANGER^1!&* STOP TALKING TO ME&  AS IF YOU KNOW ME!!/"
            global.msg[1] = "* WE HAVEN'T MET BEFORE./%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* I think things have&  died down enough...&* Barrier being broken and all./"
            global.msg[1] = "* You schooling us will&  be a memory of the past...&* Don't tell anybody^1, okay?/%%"
        }
    }
    else
    {
        global.msg[0] = "* I let our leader&  know about you joining&  the club^1, so.../"
        global.msg[1] = "* Huh^1? Who are they^1?&* She's hanging out by&  the bikes^1, I think./"
        global.msg[2] = "* Go talk to her^1, maybe&  you'll come off as&  cool enough for her./"
        global.msg[3] = "* (And everyone will forget&  about what happened&  back there...?)/%%"
        if (talkedto > 0)
            global.msg[0] = "* Well^1, what'd she say^1?/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Cool or not^1, everyone&  is moving to the surface./"
            global.msg[1] = "* I even heard that&  Snowy got reunited&  with his mom!/"
            global.msg[2] = "* Seems like things are&  looking up for us&  monsters^1, huh?/%%"
        }
    }
}
if (room == room_tundra8)
{
    global.msg[0] = scr_gettext("obj_chilldrakenpc_82")
    global.msg[1] = scr_gettext("obj_chilldrakenpc_83")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_chilldrakenpc_87")
        global.msg[1] = scr_gettext("obj_chilldrakenpc_88")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
