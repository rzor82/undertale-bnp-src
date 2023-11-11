myinteract = 3
global.msc = 0
global.typer = 19
global.facechoice = 4
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_papyrus_room_244")
global.msg[1] = scr_gettext("obj_papyrus_room_245")
if (alttext == 1)
{
    global.msg[0] = scr_gettext("obj_papyrus_room_244")
    global.msg[1] = "WHAT'S THAT?/"
    global.msg[2] = "I HAVEN'T CHANGED&OUT OF MY&\"COOL OUTFIT\"?/"
    global.msg[3] = "YES^1!&KEEN EYE^1, HUMAN!/%%"
    alttext = 0
}
if (room == room_water_dogroom)
{
    global.msg[0] = "HELLO^1, HUMAN!/"
    global.msg[1] = "WHAT BRINGS YOU TO&THE VOID?/%%"
    if (talkedto > 0)
    {
        if (instance_exists(obj_sans_interactable1) == 1)
            obj_sans_interactable1.papyrustalkedto = 1
        global.msg[0] = "SANS ASKED ME TO&BE A SECRET&WITH HIM!/"
        global.msg[1] = "\\E4NEVER FEAR^1, SANS^1!&YOUR BROTHER IS&HERE TO HELP!/"
        global.msg[2] = "\\E0ARE YOU HERE TO&BE A SECRET TOO?/"
        global.msg[3] = "GREAT^1!&MAYBE YOU CAN HELP&US FIND THE EXIT!/"
        global.msg[4] = "\\E3SANS SAID THAT IT&WAS HIDDEN AS PART&OF THE SECRET.../"
        global.msg[5] = "\\E5...BUT I'M STARTING&TO THINK HE'S&JUST LOST./%%"
    }
}
if (room == room_tundra_xoxopuzz)
{
    global.msg[0] = scr_gettext("obj_papyrus_room_119")
    global.msg[1] = scr_gettext("obj_papyrus_room_120")
    global.msg[2] = scr_gettext("obj_papyrus_room_121")
    global.msg[3] = scr_gettext("obj_papyrus_room_122")
    global.msg[4] = scr_gettext("obj_papyrus_room_123")
    if instance_exists(obj_papyrus5)
    {
        if (x > (obj_papyrus5.x - 100))
        {
            sprite_index = dtsprite
            global.msg[0] = scr_gettext("obj_papyrus_room_129")
            global.msg[1] = scr_gettext("obj_papyrus_room_130")
            global.msg[2] = scr_gettext("obj_papyrus_room_131")
            global.msg[3] = scr_gettext("obj_papyrus_room_132")
            global.msg[4] = scr_gettext("obj_papyrus_room_133")
            global.msg[5] = scr_gettext("obj_papyrus_room_134")
            tempcon = 1
            if (talkedto == 1)
            {
                tempcon = 0
                global.msg[0] = scr_gettext("obj_papyrus_room_135")
                global.msg[1] = scr_gettext("obj_papyrus_room_136")
            }
            if (talkedto == 2)
            {
                tempcon = 0
                global.msc = 692
            }
            if (talkedto > 2)
            {
                tempcon = 0
                global.msc = 694
            }
        }
    }
}
if (room == room_water_undyneyard)
{
    dir = 1
    d = 0
    if (global.plot < 122)
        d = 1
    if (global.flag[354] < 2)
        d = 1
    if (global.flag[67] == 1)
        d = 1
    if (global.flag[88] < 3)
        d = 1
    if (global.flag[350] == 1)
        d = 1
    if (global.flag[350] == 2)
        d = 1
    if (global.kills > 0)
        d = 1
    if (d == 1)
    {
        global.msg[0] = scr_gettext("obj_papyrus_room_157")
        if (global.kills > 0)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_161")
            global.msg[1] = scr_gettext("obj_papyrus_room_162")
            global.msg[2] = scr_gettext("obj_papyrus_room_163")
            global.msg[3] = scr_gettext("obj_papyrus_room_164")
            global.msg[4] = scr_gettext("obj_papyrus_room_165")
            global.msg[5] = scr_gettext("obj_papyrus_room_166")
            global.msg[6] = scr_gettext("obj_papyrus_room_167")
            global.msg[7] = scr_gettext("obj_papyrus_room_168")
            global.msg[8] = scr_gettext("obj_papyrus_room_169")
            global.msg[9] = scr_gettext("obj_papyrus_room_170")
            global.msg[10] = scr_gettext("obj_papyrus_room_171")
            global.msg[11] = scr_gettext("obj_papyrus_room_172")
            global.msg[12] = scr_gettext("obj_papyrus_room_173")
            if (talkedto > 0)
            {
                global.msg[0] = scr_gettext("obj_papyrus_room_176")
                global.msg[1] = scr_gettext("obj_papyrus_room_177")
                global.msg[2] = scr_gettext("obj_papyrus_room_178")
                global.msg[3] = scr_gettext("obj_papyrus_room_179")
            }
        }
        if (global.flag[350] == 1)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_185")
            global.msg[1] = scr_gettext("obj_papyrus_room_186")
            global.msg[2] = scr_gettext("obj_papyrus_room_187")
            global.msg[3] = scr_gettext("obj_papyrus_room_188")
            global.msg[4] = scr_gettext("obj_papyrus_room_189")
            global.msg[5] = scr_gettext("obj_papyrus_room_190")
            global.msg[6] = scr_gettext("obj_papyrus_room_191")
            global.msg[7] = scr_gettext("obj_papyrus_room_192")
            global.msg[8] = scr_gettext("obj_papyrus_room_193")
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_papyrus_room_196")
        }
        if (global.flag[350] == 2)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_202")
            global.msg[1] = scr_gettext("obj_papyrus_room_203")
            global.msg[2] = scr_gettext("obj_papyrus_room_204")
            global.msg[3] = scr_gettext("obj_papyrus_room_205")
            global.msg[4] = scr_gettext("obj_papyrus_room_206")
            global.msg[5] = scr_gettext("obj_papyrus_room_207")
            global.msg[6] = scr_gettext("obj_papyrus_room_208")
            global.msg[7] = scr_gettext("obj_papyrus_room_209")
            global.msg[8] = scr_gettext("obj_papyrus_room_210")
            global.msg[9] = scr_gettext("obj_papyrus_room_211")
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_papyrus_room_214")
        }
        if (global.plot < 122)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_220")
            global.msg[1] = scr_gettext("obj_papyrus_room_221")
            global.msg[2] = scr_gettext("obj_papyrus_room_222")
            global.msg[3] = scr_gettext("obj_papyrus_room_223")
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_papyrus_room_226")
        }
    }
    if (d == 0)
    {
        global.msc = 698
        if (talkedto > 0)
            global.msc = 700
    }
}
if (room == room_tundra_town)
{
    global.msg[0] = scr_gettext("obj_papyrus_room_244")
    global.msg[1] = scr_gettext("obj_papyrus_room_245")
    if (global.flag[354] == 0 && global.plot >= 106)
    {
        global.msg[0] = scr_gettext("obj_papyrus_room_248")
        global.msg[1] = scr_gettext("obj_papyrus_room_249")
    }
    if (global.flag[354] == 1)
    {
        global.msg[0] = scr_gettext("obj_papyrus_room_253")
        global.msg[1] = scr_gettext("obj_papyrus_room_254")
        global.msg[2] = scr_gettext("obj_papyrus_room_255")
    }
    if (global.flag[176] == 1)
    {
        global.msg[0] = "\\E3LEMONS^1, YOU SAY...?/"
        global.msg[1] = "\\E1WAIT A SECOND^1.&DID SANS PUT&YOU UP TO THIS?/"
        global.msg[2] = "\\E0GOOD!!!^1!&I LOVE LEMONS!/"
        global.msg[3] = "THE RIPE&AND RICH&YELLOW COLOR.../"
        global.msg[4] = "IT REMINDS ME&OF MY BESTEST&FRIEND!/"
        global.msg[5] = "FLOWERY!/%%"
        global.flag[176] = 2
    }
    if instance_exists(obj_undyne_friendc)
    {
        global.msg[0] = scr_gettext("obj_papyrus_room_259")
        global.msg[1] = scr_gettext("obj_papyrus_room_260")
        if (global.plot > 175)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_263")
            global.msg[1] = scr_gettext("obj_papyrus_room_264")
            global.msg[2] = scr_gettext("obj_papyrus_room_265")
            global.msg[3] = scr_gettext("obj_papyrus_room_266")
            global.msg[4] = scr_gettext("obj_papyrus_room_267")
        }
        if (global.flag[493] == 8)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_272")
            global.msg[1] = scr_gettext("obj_papyrus_room_273")
        }
        if (global.flag[493] == 9)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_278")
            global.msg[1] = scr_gettext("obj_papyrus_room_279")
            global.msg[2] = scr_gettext("obj_papyrus_room_280")
            global.msg[3] = scr_gettext("obj_papyrus_room_281")
            global.msg[4] = scr_gettext("obj_papyrus_room_282")
            global.msg[5] = scr_gettext("obj_papyrus_room_283")
        }
        if (global.flag[493] == 10)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_287")
            global.msg[1] = scr_gettext("obj_papyrus_room_288")
            global.msg[2] = scr_gettext("obj_papyrus_room_289")
            global.msg[3] = scr_gettext("obj_papyrus_room_290")
        }
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
