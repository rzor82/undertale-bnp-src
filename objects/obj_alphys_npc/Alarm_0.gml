myinteract = 3
global.msc = 0
global.typer = 47
global.facechoice = 6
global.faceemotion = 0
global.faceemotion = 8
global.msg[0] = scr_gettext("obj_alphys_npc_99")
if (room == room_fire_lab1)
{
    global.flag[430] = 5
    global.msg[0] = scr_gettext("obj_alphys_npc_76")
    global.msg[1] = scr_gettext("obj_alphys_npc_77")
    if (x > 860)
    {
        global.facechoice = 0
        global.typer = 5
        global.msg[0] = scr_gettext("obj_alphys_npc_82")
    }
    if (global.plot > 126)
    {
        fun = false
        global.faceemotion = 3
        global.msg[0] = "* Oh^1, h-hey^1, you're&  uh^1, back./"
        global.msg[1] = "\\EF* That's nice^1?&* But^1, shouldn't you&  b-be leaving...?/"
        global.msg[2] = "\\EG* Mettaton could come&  back^1, and I don't&  want to take-/"
        global.msg[3] = "\\E5* I mean^1, Y-YOU&  shouldn't take that&  chance^1, eheh.../%%"
        if (talkedto > 0)
        {
            global.faceemotion = "G"
            global.msg[0] = "* Um^1, while you're still&  here^1, I um^1, want&  to ask you^1?\\EF Something?/"
            global.msg[1] = "\\ED* Do um^2.&\\EG* Do humans r-really^2.&\\EH* Run to school..^2. w-with-/"
            global.msg[2] = "\\EJ* N-nevermind./%%"
        }
        if (global.plot > 130)
        {
            global.faceemotion = "F"
            global.msg[0] = "* Y-you know^1, I said&  I would guide you^1,&  but^1, um.../"
            global.msg[1] = "\\EG* I'm not very good&  at talking over&  the phone^1, eheheh./"
            global.msg[2] = "* Errr^1,\\EF anyway^1./%%"
            if (talkedto > 0)
            {
                global.faceemotion = 2
                global.msg[0] = "* Um^1, about those&  lasers back there.../"
                global.msg[1] = "\\W\\E0* Like \\Oorange attacks\\W^1, you&  w-won't get hurt if&  you keep moving.../"
                global.msg[2] = "\\W\\E6* A-and \\Bblue attacks\\W can't&  hurt you if you stay&  completely still./"
                global.msg[3] = "\\E7* Just like you were&  taught b-back in your&  bullet pattern classes!/"
                global.msg[4] = "\\EJ* Oh^1, r-right^2.&* Humans^1, um^1, don't&  have those^1, d-do they?/%%"
            }
        }
        if (global.plot > 134)
        {
            global.faceemotion = 8
            global.msg[0] = "* Why'd Mettaton have to&  b-break in the&  wall like that...?/"
            global.msg[1] = "\\EF* He's been k-kinda&  aggressive lately^1,&  I wonder why.../"
            global.msg[2] = "\\EJ* Yeah..^2.&* I wonder why...../"
            global.msg[3] = "\\EH* Um^1, a-additionally^1,&  that cooking show^1,&  w-what was that about?/"
            global.msg[4] = "\\E5* G-guess the potential&  TV ratings were&  too hard to ignore?/%%"
            if (talkedto > 0)
            {
                global.faceemotion = 3
                global.msg[0] = "\\E3* Oh^1! I uh^1, forgot&  to s-say^1, good job&  on using that jetpack./"
                global.msg[1] = "\\E0* You made it all&  the w-way to the&  top^1, even though-/"
                if (global.flag[377] == 1)
                    global.msg[1] = "\\EG* Even if things didn't&  end up going the&  way we-/"
                global.msg[2] = "\\E5* N-nevermind^1, eheheh./%%"
            }
        }
    }
}
if (room == room_fire_core_mettmeetingplace)
{
    global.flag[430] = 1
    global.facechoice = 6
    global.faceemotion = 5
    global.msg[0] = scr_gettext("obj_alphys_npc_91")
}
if (room == room_fire_core_final)
{
    global.flag[430] = 1
    global.facechoice = 6
    global.faceemotion = 5
    global.msg[0] = scr_gettext("obj_alphys_npc_99")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
