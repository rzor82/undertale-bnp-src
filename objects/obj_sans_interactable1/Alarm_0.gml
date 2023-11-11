myinteract = 3
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
if (room == room_tundra2)
{
    global.msg[0] = scr_gettext("obj_sans_interactable1_68")
    global.msg[1] = scr_gettext("obj_sans_interactable1_69")
    if (talkedto > 0)
    {
        if (talkedto == 1)
        {
            global.msg[0] = scr_gettext("obj_sans_interactable1_74")
            global.msg[1] = scr_gettext("obj_sans_interactable1_75")
        }
        if (talkedto >= 2)
            global.msg[0] = scr_gettext("obj_sans_interactable1_79")
    }
    if (scr_murderlv() >= 2)
        global.msg[0] = scr_gettext("obj_sans_interactable1_85")
}
if (room == room_water_dogroom)
{
    global.msg[0] = "* heya./"
    global.msg[1] = "* what are you doing^1?&\\E1* looking for secrets?/"
    global.msg[2] = "\\E0* well^1, sorry kiddo^1.&\\E2* there's nothin here./%%"
    if (talkedto == 1)
    {
        global.flag[212] = 1
        global.msg[0] = "* what^1?&* i'm not lyin to ya./"
        global.msg[1] = "\\E2* there's nothin but&  nothin out here./"
        global.msg[2] = "\\E3* there might be&  something if you&  come back later.../"
        global.msg[3] = "\\E0* until then^1,\\E2 it's&  just you and me./"
        global.msg[4] = "\\E3* it's not all bad^1,&  though^1. just look at&  it this way.../"
        global.msg[5] = "\\E2* if you put us&  together^1, you'd make&  a nothin' sandwich./%%"
    }
    if (talkedto == 2)
    {
        global.msg[0] = "\\E1* though^1,&  if i'm being&  completely honest...?/"
        global.msg[1] = "\\E0* that would probably&  taste pretty gross./"
        global.msg[2] = "\\E1* like c'mon^1,&  who wants bones&  in their food?/"
        global.msg[3] = "\\E2* i know i don't./%%"
    }
    if (global.plot > 121)
    {
        if (global.flag[212] == 1)
        {
            global.msg[0] = "\\E1* hey./"
            global.msg[1] = "\\E0* what'd i tell ya^1?&\\E2* something ended up&  showing up after all./%%"
        }
        if (papyrustalkedto == 1)
        {
            global.msg[0] = "* 'sup./"
            global.msg[1] = "\\E1* are you enjoying&  being a secret?/"
            global.msg[2] = "\\E2* i know i am./%%"
        }
        else
        {
            global.msg[2] = "\\E0* well^1, sorry kiddo^1.&\\E2* there's nothin here./"
            global.msg[3] = "\\E1* except for you^1,&  papyrus and me^1,&  of course./%%"
        }
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
