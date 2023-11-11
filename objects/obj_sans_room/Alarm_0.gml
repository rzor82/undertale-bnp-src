myinteract = 3
talkingto = 1
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
if (room == room_tundra6)
{
    global.msg[0] = scr_gettext("obj_sans_room_114")
    global.msg[1] = scr_gettext("obj_sans_room_115")
    global.msg[2] = scr_gettext("obj_sans_room_116")
    global.msg[3] = scr_gettext("obj_sans_room_117")
    global.msg[4] = scr_gettext("obj_sans_room_118")
    global.msg[5] = scr_gettext("obj_sans_room_119")
    global.msg[6] = scr_gettext("obj_sans_room_120")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_sans_room_123")
}
if (room == room_water_friendlyhub)
{
    global.msg[0] = "* hey there^1.&* you havin' fun?/"
    global.msg[1] = "\\E1* well^1, i won't keep you&  for too long^1, but.../"
    global.msg[2] = "\\E2* i wanna give you&  some parting advice^1,&  at least./"
    global.msg[3] = "\\E0* remember..^1.&* when life gives you&  lemons^1, you make.../"
    global.msg[4] = "\\E1* hmm.../"
    global.msg[5] = "\\E2* get back to me&  on that one^1, okay?/%%"
    if (talkedto > 0)
    {
        global.msg[0] = "* oh^1, hey^1.&* you actually got&  back to me on it./"
        global.msg[1] = "\\E3* well^1, after doing some&  pretty intense&  thinking.../"
        global.msg[2] = "\\E1* i'm still stumped./"
        global.msg[3] = "\\E0* the very nature of&  the lemon is shrouded&  in darkness./"
        global.msg[4] = "\\E1* maybe you should ask&  papyrus about it?/%%"
        global.flag[176] = 1
    }
    if (talkedto > 1)
    {
        global.msg[0] = "\\E1* i'm still stumped./"
        global.msg[1] = "\\E1* maybe you should ask&  papyrus about it?/%%"
    }
}
if (room == room_fire_hotellobby)
{
    global.msg[0] = "* hey^1.&\\E2* long time no&  see^1, huh?/"
    global.msg[1] = "\\E3* since our talk^1,&  i've been doing&  some thinking^1, and.../"
    global.msg[2] = "\\E0* i've decided to&  hang out in my&  own element more./"
    global.msg[3] = "\\E2* pretty sure a&  grungy fast food&  place fits the bill./%%"
    if (talkedto > 0)
        global.msg[0] = "\\E6* can't talk now^1, i'm&  basking in the greasy&  atmosphere./%%"
}
if (room == room_tundra7)
{
    global.msg[0] = scr_gettext("obj_sans_room_135")
    global.msg[1] = scr_gettext("obj_sans_room_136")
    global.msg[2] = scr_gettext("obj_sans_room_137")
    global.msg[3] = scr_gettext("obj_sans_room_138")
    global.msg[4] = scr_gettext("obj_sans_room_139")
    global.msg[5] = scr_gettext("obj_sans_room_140")
    global.msg[6] = scr_gettext("obj_sans_room_141")
    if (scr_murderlv() >= 3 && global.flag[27] == 0)
        global.msg[0] = scr_gettext("obj_sans_room_145")
}
if (room == room_tundra8)
    global.msc = 235
if (room == room_tundra9)
{
    if (global.flag[58] == 0)
    {
        global.msg[0] = scr_gettext("obj_sans_room_160")
        global.msg[1] = scr_gettext("obj_sans_room_161")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_sans_room_166")
        global.msg[1] = scr_gettext("obj_sans_room_167")
    }
    if (scr_murderlv() >= 3)
    {
        if (global.flag[254] == 0)
        {
            global.msg[0] = scr_gettext("obj_sans_room_175")
            global.msg[1] = scr_gettext("obj_sans_room_176")
            global.msg[2] = scr_gettext("obj_sans_room_177")
            global.msg[3] = scr_gettext("obj_sans_room_178")
        }
        else
        {
            global.msg[0] = scr_gettext("obj_sans_room_182")
            global.msg[1] = scr_gettext("obj_sans_room_183")
        }
    }
}
if (room == room_tundra_randoblock)
{
    global.msg[0] = scr_gettext("obj_sans_room_191")
    global.msg[1] = scr_gettext("obj_sans_room_192")
    global.msg[2] = scr_gettext("obj_sans_room_193")
    global.msg[3] = scr_gettext("obj_sans_room_194")
    if (scr_murderlv() >= 4)
        global.msg[0] = scr_gettext("obj_sans_room_198")
}
if (room == room_tundra_xoxopuzz)
{
    ossafe_ini_open("undertale.ini")
    M1 = ini_read_real("Sans", "M1", 0)
    ossafe_ini_close()
    if (global.flag[63] >= 0)
    {
        global.msg[0] = scr_gettext("obj_sans_room_211")
        global.msg[1] = scr_gettext("obj_sans_room_212")
        global.msg[2] = scr_gettext("obj_sans_room_213")
    }
    if (global.flag[63] == 0 && M1 > 1)
    {
        global.msg[0] = scr_gettext("obj_sans_room_217")
        global.msg[1] = scr_gettext("obj_sans_room_218")
        global.msg[2] = scr_gettext("obj_sans_room_219")
    }
    if (global.flag[63] > 5)
    {
        global.msg[0] = scr_gettext("obj_sans_room_223")
        global.msg[1] = scr_gettext("obj_sans_room_224")
    }
}
if (room == room_tundra_iceexit_new)
{
    global.msg[0] = scr_gettext("obj_sans_room_237")
    if (obj_doublesans.talkedto > 0)
        global.msg[0] = scr_gettext("obj_sans_room_238")
}
if (room == room_tundra_dangerbridge)
{
    ossafe_ini_open("undertale.ini")
    PK = ini_read_real("Papyrus", "PK", 0)
    ossafe_ini_close()
    global.msg[0] = scr_gettext("obj_sans_room_246")
    global.msg[1] = scr_gettext("obj_sans_room_247")
    if (PK > 0)
    {
        global.msg[0] = scr_gettext("obj_sans_room_250")
        global.msg[1] = scr_gettext("obj_sans_room_251")
        dont = 1
    }
    if (scr_murderlv() >= 5 && global.flag[27] == 0)
    {
        global.msg[0] = scr_gettext("obj_sans_room_256")
        global.msg[1] = scr_gettext("obj_sans_room_257")
        global.msg[2] = scr_gettext("obj_sans_room_258")
        global.msg[3] = scr_gettext("obj_sans_room_259")
        global.msg[4] = scr_gettext("obj_sans_room_260")
        global.msg[5] = scr_gettext("obj_sans_room_261")
        global.msg[6] = scr_gettext("obj_sans_room_262")
        global.msg[7] = scr_gettext("obj_sans_room_263")
        global.msg[8] = scr_gettext("obj_sans_room_264")
        s_click = 1
        with (obj_mainchara)
            uncan = 1
    }
}
if (room == room_water11)
{
    if (global.flag[85] == 0)
        global.msc = 551
    if (global.flag[85] == 1)
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_sans_room_280")
        global.msg[1] = scr_gettext("obj_sans_room_281")
    }
}
if (room == room_fire_hotdog)
{
    instance_create(0, 0, obj_golddisplay)
    global.msc = 685
}
talkedto += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
