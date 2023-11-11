myinteract = 3
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msc = 0
global.msg[0] = "* Ribbit^1, ribbit^1.&* (This is just an&  error message^1, human.)/"
global.msg[1] = "* (Maybe try putting me&  in a room with text&  that's programmed in...?)/"
global.msg[2] = "* (That's your choice^1, I suppose.^1)&* Ribbit./%%"
if (room == room_ruins7)
{
    global.msg[0] = scr_gettext("obj_smallfrog_61")
    global.msg[1] = scr_gettext("obj_smallfrog_62")
    global.msg[2] = scr_gettext("obj_smallfrog_63")
    global.msg[3] = scr_gettext("obj_smallfrog_64")
    global.msg[4] = scr_gettext("obj_smallfrog_65")
    global.msg[5] = scr_gettext("obj_smallfrog_66")
    if (global.flag[45] == 4)
    {
        global.msg[1] = "\\W* (Have you been using&  \\YMERCY\\W?)/"
        global.msg[2] = "* (What's with that look?^1)&* (Do you need some&  more advice?)/"
        global.msg[3] = "* (Well...^1)&* (If you ever feel stuck^1,&  stay true to yourself.)/"
        global.msg[4] = "\\W* (\\YMERCY\\W can come in handy&  even when it doesn't&  seem like it.)/"
        global.msg[5] = "* Ribbit./%%"
    }
    if (global.flag[6] == 1)
    {
        global.msg[0] = scr_gettext("obj_smallfrog_70")
        global.msg[1] = scr_gettext("obj_smallfrog_71")
        global.msg[2] = scr_gettext("obj_smallfrog_72")
        global.msg[3] = scr_gettext("obj_smallfrog_73")
        global.msg[4] = scr_gettext("obj_smallfrog_74")
    }
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_smallfrog_79")
        global.msg[1] = scr_gettext("obj_smallfrog_80")
        global.msg[2] = scr_gettext("obj_smallfrog_81")
        global.msg[3] = scr_gettext("obj_smallfrog_82")
    }
}
if (room == room_ruins12B)
{
    global.msg[0] = "* Ribbit^1, ribbit^1.&* (Hello there^1, human.)/"
    global.msg[1] = "* (I am able to tell&  how much FUN you've&  been having.)/"
    global.msg[2] = (("* (Let's see here...^2)&* (About " + string(global.flag[5])) + " percent FUN so far.)/")
    global.msg[3] = "* (I hope that was helpful.^1)&* Ribbit./%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* Ribbit^1.&* (Well^1, did you have any&  FUN on your adventure?)/%%"
}
if (room == room_ruins17)
{
    global.msg[0] = scr_gettext("obj_smallfrog_90")
    global.msg[1] = scr_gettext("obj_smallfrog_91")
    global.msg[2] = scr_gettext("obj_smallfrog_92")
    global.msg[3] = scr_gettext("obj_smallfrog_93")
    global.msg[4] = scr_gettext("obj_smallfrog_94")
    if (global.flag[45] == 4)
    {
        global.msg[0] = scr_gettext("obj_smallfrog_90")
        global.msg[1] = "* (Something feels..^1. differen^2t recently.)/"
        global.msg[2] = "* (I don't feel so&  intimidated anymore...^1)&* Ribbit./%%"
    }
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_smallfrog_97")
        global.msg[1] = scr_gettext("obj_smallfrog_98")
        global.msg[2] = scr_gettext("obj_smallfrog_99")
        global.msg[3] = scr_gettext("obj_smallfrog_100")
    }
    if (global.flag[6] == 1)
    {
        global.msg[0] = scr_gettext("obj_smallfrog_105")
        global.msg[1] = scr_gettext("obj_smallfrog_106")
        global.msg[2] = scr_gettext("obj_smallfrog_107")
        global.msg[3] = scr_gettext("obj_smallfrog_108")
        global.msg[4] = scr_gettext("obj_smallfrog_109")
    }
}
if (room == room_ruins13 && x > 300 && x < 400)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_smallfrog_117")
    global.msg[1] = scr_gettext("obj_smallfrog_118")
    global.msg[2] = scr_gettext("obj_smallfrog_119")
    global.msg[3] = scr_gettext("obj_smallfrog_120")
    if (talkedto > 0)
    {
        global.msg[0] = scr_gettext("obj_smallfrog_117_console")
        global.msg[1] = scr_gettext("obj_smallfrog_118_console")
        global.msg[2] = scr_gettext("obj_smallfrog_119_console")
        global.msg[3] = scr_gettext("obj_smallfrog_120_console")
    }
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_smallfrog_124")
}
if (room == room_ruins18)
{
    if (global.flag[116] == 0 && global.flag[39] == 0)
    {
        global.msg[0] = "* Ribbit^1, ribbit^1.&* (There used to be a bridge&  connecting to HOME.)/"
        global.msg[1] = "* (But some ruffians broke it^1,&  and now nobody can cross.)/"
        global.msg[2] = "* (And the gate is locked too^1,&  so there's no way there.)/"
        global.msg[3] = "* Ribbit^1, ribbit^1!&* (Human! Please find the&  key to the gate!)/%%"
    }
    if (global.flag[116] == 0 && global.flag[39] > 0)
    {
        global.msg[0] = "* Ribbit^1, ribbit^1.&* (There used to be a bridge&  connecting to HOME.)/"
        global.msg[1] = "* (But some ruffians broke it^1,&  and now nobody can cross.)/"
        global.msg[2] = "* (And the gate is locked too^1,&  so there's no way there.)/"
        global.msg[3] = "* Ribbit^1, ribbit^1!&* (Human! Please find the&  key to the-%"
        global.msg[4] = "* (Oh^1? You've already fought&  that troublesome duo?^1)&* (What are you waiting for?)/"
        global.msg[5] = "* (Go get that key!)/%%"
        if (talkedto > 0)
            global.msg[0] = "* (Go get that key!)/%%"
    }
    if (global.flag[116] == 1)
    {
        global.msg[0] = "* Ribbit^1, ribbit^1.&* (There used to be a bridge&  connecting to HOME.)/"
        global.msg[1] = "* (But some ruffians broke it^1,&  and now nobody can cross.)/"
        global.msg[2] = "* (And the gate is locked too^1,&  so there's no way there.)/"
        global.msg[3] = "* Ribbit^1, ribbit^1!&* (Human! Please find the&  key to the-%"
        global.msg[4] = "* (Oh^1? You've already got&  it from those ruffians?^1)&* (What are you waiting for?)/"
        global.msg[5] = "* (Unlock that gate!)/%%"
        if (talkedto > 0)
            global.msg[0] = "* (Unlock that gate!)/%%"
    }
    if (global.flag[116] >= 2)
    {
        global.msg[0] = "* Ribbit^1, ribbit^1.&* (There used to be a bridge&  connecting to HOME.)/"
        global.msg[1] = "* (But some ruffians broke it^1,&  and now nobody can cross.)/"
        global.msg[2] = "* (And the gate is locked too^1,&  so there's no way there.)/"
        global.msg[3] = "* Ribbit^1, ribbit^1!&* (Human! Please find the&  key to the-%"
        global.msg[4] = "* (Oh^1? You've already &  unlocked the gate?^1)&* (Well^1, splendid!)/%%"
        if (talkedto > 0)
            global.msg[0] = "* (You have my thanks^1, human.)/%%"
    }
    if (global.flag[129] > 0)
    {
        global.msg[0] = "* Ribbit^1, ribbit^1.&* (There used to be a bridge&  connecting to HOME.)/"
        global.msg[1] = "* (But some ruffians broke it^1,&  and now nobody can cross.)/"
        global.msg[2] = "* (And the gate is locked too^1,&  so there's no way there.)/"
        global.msg[3] = "* Ribbit^1, ribbit^1!&* (Human! Please find the&  key to the-%"
        global.msg[4] = "* (Oh^1? You've already.^1.^1.^1)&* (Why are you telling&  me about this!?)/"
        global.msg[5] = "* (I only wanted you&  to get the key from&  those two^1, not...)/"
        global.msg[6] = "* (What have you done...?^1)&* Ribbit./%%"
        if (talkedto > 0)
            global.msg[0] = "* Ribbit^1.&* (I won't talk with&  you anymore^1, thanks.)/%%"
    }
    if (global.flag[7] == 1)
    {
        if (global.flag[116] > 0)
        {
            global.msg[0] = "* Ribbit^1, ribbit^1.&* (I guess you opening the&  gate to HOME was in vain...)/"
            global.msg[1] = "* (Everyone's HOME will be&  on the surface^1, now!^1)&* Ribbit./%%"
        }
        else
        {
            global.msg[0] = "* Ribbit^1, ribbit^1.&* (Good thing the King is&  helping people get out of HOME.)/"
            global.msg[1] = "* (Everyone deserves to have&  their HOME on the surface.^1)&* Ribbit./%%"
        }
    }
}
if (room == room_ruins_homehub)
{
    global.msg[0] = "* Ribbit^1, ribbit^1.&* (Human^1, let me give&  you some advice...)/"
    global.msg[1] = "* (You may want to explore&  as much as you can while&  down in the underground.)/"
    global.msg[2] = "* (Monsters like to expand&  their homes into side&  areas off the main path.)/"
    global.msg[3] = "* (If you're into sights^1,&  get exploring!^1)&* Ribbit./%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* Ribbit...^1?&* (Do you humans have&  side areas too...?)/%%"
}
if (room == room_ruins5)
{
    global.msg[0] = "* Ribbit^1, ribbit^1.&* (Let me give you&  some secret information.)/"
    global.msg[1] = "* (I've heard there's some&  monsters with a&  different color pattern.)/"
    global.msg[2] = "\\W* (You can tell by&  the way they \\Vshimmer\\W.)/"
    global.msg[3] = "\\W* (I call them...^1)&* (\\VShimmering Monsters\\W.)/"
    global.msg[4] = "* (Well^1, at least the&   King would be&  proud of the name...)/%%"
    if (global.flag[7] == 1)
        global.msg[0] = "\\W* Ribbit^1?&* (Did you see any \\VShimmering&  Monsters\\W on your journey?/%%"
}
if (room == room_ruins13 && x > 400)
{
    if (global.flag[22] == 0)
        global.msc = 748
    if (global.flag[22] == 1)
        global.msc = 751
    if (global.flag[22] == 2)
        global.msc = 753
    if (global.flag[7] == 1)
    {
        global.msc = 0
        if (global.flag[22] == 0)
        {
            global.msg[0] = scr_gettext("obj_smallfrog_140")
            global.msg[1] = scr_gettext("obj_smallfrog_141")
        }
        if (global.flag[22] == 1)
        {
            global.msg[0] = scr_gettext("obj_smallfrog_145")
            global.msg[1] = scr_gettext("obj_smallfrog_146")
        }
        if (global.flag[22] == 2)
        {
            global.msg[0] = scr_gettext("obj_smallfrog_150")
            global.msg[1] = scr_gettext("obj_smallfrog_151")
        }
    }
}
if (room == room_ruins_sewer_tease)
{
    if (global.flag[451] == 0)
    {
        if (y > 400)
        {
            global.msg[0] = "* Ribbit^1, ribbit^1...&* (That lever over&  there...^1)/"
            global.msg[1] = "* (Ribbit?)&* (Could you please pull&  it for me, human?^1)/"
            global.msg[2] = "* (I don't have hands^1,&  so I can't do it&  myself...)/%%"
        }
        else
        {
            global.msg[0] = "* Ribbit^1, ribbit^1!&* (Someone has&  withdrawn the bridge!^1)/"
            global.msg[1] = "* (Now my friend and&  I are separated...)/"
            global.msg[2] = "* Ribbit^1!&* (Someone has got to&  do something!)/%%"
        }
        if (global.flag[7] == 1)
        {
            if (y > 400)
                global.msg[0] = "* Ribbit^1, ribbit..^1.&* (Nobody helped us&  cross the bridge...)/%%"
            else
                global.msg[0] = "* Ribbit^1, ribbit..^1?&* (Why didn't you&  come earlier...?)/%%"
        }
    }
    else if (global.flag[451] == 1)
    {
        if (y > 400)
            global.msg[0] = "* Ribbit^1, ribbit^1.&* (Thank you, human. Now&  I can cross this bridge.^1)/%%"
        else
            global.msg[0] = "* Ribbit^1, ribbit^1!&* (Finally! My friend&  and I are connected!^1)/%%"
        if (global.flag[7] == 1)
        {
            if (y > 400)
            {
                global.msg[0] = "* Ribbit^1, ribbit^1?&* (What's that?)/"
                global.msg[1] = "* (Why haven't my friend&  and I crossed&  the bridge?)/"
                global.msg[2] = "* (Well^1, I've come to&  appreciate the&  distance between us.)/"
                global.msg[3] = "* (I've been pretending&  to be indecisive...)/"
                global.msg[4] = "* (I hope my friend isn't&  too mad at me.^1)&* Ribbit./%%"
            }
            else
            {
                global.msg[0] = "* Ribbit^1, ribbit^1!&* (Why are they taking&  so long to choose!)/"
                global.msg[1] = "* (I've been waiting for&  them to pick who&  to cross first.)/"
                global.msg[2] = "* (Truthfully^1, I let them&  pick because I didn't&  want to go first.)/"
                global.msg[3] = "* (I'm not much of&  a go-getter^1, you see.)/"
                global.msg[4] = "* (Please don't tell&  my friend about this.^1)&* Ribbit./%%"
            }
        }
    }
}
if (room == room_ruins_sewer_switchpuzz)
{
    global.msg[0] = "* Ribbit^1, ribbit^1.&* (Hmm... I can't seem to&  figure this puzzle out...)/"
    global.msg[1] = "* (Ah^1, human^1, maybe you&  can help me out...?)/"
    global.msg[2] = "\\W* (You need to flip the switches&  and turn them all \\GGreen\\W.)/"
    global.msg[3] = "* (Good luck!^1)&* Ribbit./%%"
    if (global.flag[226] == 1)
    {
        global.msg[0] = "* Ribbit^1!&* (Wow^1, you did it!)/"
        global.msg[1] = "* (Good job^1, human.^1)&* Ribbit./%%"
    }
    if (global.flag[7] == 1)
    {
        if (global.flag[226] == 1)
        {
            global.msg[0] = "* Ribbit^1!&* (I'm in awe from&  your expert puzzle skills.)/"
            global.msg[1] = "* (Are all humans as&  good at them as you?)&* Ribbit./%%"
        }
        else
        {
            global.msg[0] = "* Ribbit^1!&* (This puzzle still&  hasn't been solved...)/"
            global.msg[1] = "* (Do you think you&  could solve it before&  we head to the surface?)/"
            global.msg[2] = "\\W* (You need to flip the switches&  and turn them all \\GGreen\\W.)/"
            global.msg[3] = "* (Good luck!^1)&* Ribbit./%%"
        }
    }
}
if (instance_exists(OBJ_WRITER) == 0)
{
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
talkedto += 1
