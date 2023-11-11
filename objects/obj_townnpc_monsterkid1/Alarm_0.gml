myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = "A"
global.faceemotion = 0
global.msg[0] = "\\E3* Hey^1, you shouldn't be reading this^1,\\E0 haha./%%"
if (room == room_tundra_town)
{
    global.msg[0] = "* Yo^1! It's you!&* What's up^1, dude?/"
    global.msg[1] = "* Sorry about tripping&  into you earlier^1,&  haha./"
    global.msg[2] = "* I didn't even get&  to buy anything&  from the Nice Cream guy./"
    global.msg[3] = "* I left all of&  my GOLD at home..^1.&* Oh well^1, haha./%%"
    if (global.flag[7] == 1)
    {
        if (global.flag[98] == 0)
        {
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_88")
            global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_89")
            global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_90")
            global.msg[3] = scr_gettext("obj_townnpc_monsterkid1_91")
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_93")
        }
        if (global.flag[98] == 2)
        {
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_97")
            global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_98")
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_100")
        }
        if (global.flag[98] == 1)
        {
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_104")
            global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_105")
            global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_106")
            global.msg[3] = scr_gettext("obj_townnpc_monsterkid1_107")
            global.msg[4] = scr_gettext("obj_townnpc_monsterkid1_108")
            global.msg[5] = scr_gettext("obj_townnpc_monsterkid1_109")
            if (global.flag[331] > 0)
            {
                global.msg[2] = "* Maybe Undyne..^1.&* Isn't the only cool&  person in town./"
                global.msg[3] = "* Because YO!!^1!&* I've found someone&  that's WAYYY cooler!!!/"
                global.msg[4] = scr_gettext("obj_townnpc_monsterkid1_109")
            }
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_111")
        }
    }
    if (scr_murderlv() >= 7)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_117")
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_118")
        global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_119")
    }
}
if (room == room_tundra_grillby)
{
    global.msg[0] = "\\E5* You had free dinner^1?&\\E5* I would be jealous^1,&  but uh.../"
    global.msg[1] = "\\E0* You had to have a&  dinner date with the&  weird skeleton^1! Haha./%%"
    if (talkedto > 0)
        global.msg[0] = "* I'll catch up with&  you in Waterfall^1,&  okay^1, dude?/%%"
}
if (room == room_water_undyneyard)
{
    global.msg[0] = "* YO!!^1!&* I can't believe we're&  at \\E8UNDYNE'S \\E0house!/"
    global.msg[1] = "* I tried knocking^1, but.../"
    global.msg[2] = "* That just gave me&  a bad headache^1.&* Haha./%%"
    if (scr_murderlv() >= 7)
    {
        global.msg[1] = "* I was gonna&  try knocking^1, but.../"
        global.msg[2] = "* Undyne rushed out&  the door before&  I had the chance!/"
        global.msg[3] = "* She looked pretty mad.../%%"
    }
}
if (room == room_water5)
{
    global.msg[0] = "\\E5* Hmm.../"
    global.msg[1] = "* How did this&  get here...?/%%"
    tempcon = 1
    if (talkedto > 0)
    {
        tempcon = 4
        global.msg[0] = "\\E0* This one time^1,&  I saw Undyne lift&  an entire BOULDER!/"
        global.msg[1] = "\\E5* I'm not sure why&  she did it^1, but.../"
        global.msg[2] = "\\E0* It looked&  \\E8really cool!/%%"
    }
    if (solvedpuzzle == 1)
    {
        global.msg[0] = "\\E0* Wow^1, you solved&  the seed puzzle^1!/"
        global.msg[1] = "\\E5* It would have&  taken me DAYS to&  solve it myself./"
        global.msg[2] = "\\E0* I'll meet you&  up ahead^1, haha./%%"
    }
}
if (room == room_water13)
{
    global.msg[0] = "\\E5* Hmm..^1.&* I'm always short one&  bridge seed.../"
    global.msg[1] = "\\E0* Yo^1, dude^1, do you&  think you could&  solve this one?/"
    global.msg[2] = "* Haha^1, thanks./%%"
}
if (room == room_water_nicecream)
{
    global.msg[0] = "* Yo! What's up^1, dude?/"
    global.msg[1] = "* I was going to&  buy some Nice Cream^1,&  but.../"
    global.msg[2] = "* I forgot my GOLD&  at home again^1!&* Haha./%%"
    if (scr_murderlv() >= 7)
    {
        global.msg[2] = "* Well^1, the Nice Cream&  guy isn't even&  here^1! Haha./%%"
        if (talkedto > 0)
            global.msg[0] = "\\E5* I wonder where&  he went.../%%"
    }
}
if (room == room_water6)
{
    global.msg[0] = "* Yo^1! I didn't think&  I'd see you&  again./"
    global.msg[1] = "\\E3* You know^1,\\E6 after the&  incident with Undyne.../"
    global.msg[2] = "\\E9* I thought you were&  a goner^1, dude./%%"
    if (talkedto > 0)
    {
        global.msg[0] = "\\E6* Yo..^1./"
        global.msg[1] = "\\E9* I don't get why&  she hates humans&  so much^1, man./"
        global.msg[2] = "* After all^1,\\E6 you're&  a human^1,\\E9 and&  you're not so bad./"
        global.msg[3] = "\\E6* Maybe she just&  hasn't gotten to&  know you yet^1,\\E0 haha./%%"
        global.flag[331] = 1
        if (global.flag[389] == 4)
        {
            global.msg[0] = "* Huh^1? What's that^1?/"
            global.msg[1] = "* You and Undyne are friends^1?/"
            global.msg[2] = "* Dude^1!&* That's so cool^1!/"
            global.msg[3] = "* Wait..^1.&* But I thought&  she hated humans^1!/"
            global.msg[4] = "* Man^1, I guess&  she's not so&  bad^1, huh? Haha./%%"
            if (global.flag[331] == 1)
                global.msg[4] = "* I'm glad you&  were able to&  change her mind./%%"
            global.flag[331] = 2
        }
    }
    if (talkedto > 1)
    {
        if (global.flag[331] == 2)
            global.msg[0] = "* I'm glad you&  were able to&  change her mind./%%"
        else
            global.msg[0] = "* Man^1, I guess&  she's not so&  bad^1, huh? Haha./%%"
    }
}
if (room == room_water2)
{
    global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_122")
    global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_123")
    global.msg[2] = scr_gettext("obj_townnpc_monsterkid1_124")
    global.msg[3] = scr_gettext("obj_townnpc_monsterkid1_125")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_127")
    if (talkedto > 0 && con == 2)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_129")
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_130")
    }
    if (con == 1 && talkedto > 0)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_132")
        global.msg[1] = scr_gettext("obj_townnpc_monsterkid1_133")
    }
}
if (room == room_water_waterfall4)
{
    if (talkedto == 0)
    {
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_141")
        if instance_exists(obj_monsterkidtrigger6)
            obj_monsterkidtrigger6.con = 4
    }
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_147")
    if (global.plot == 112)
    {
        if (global.flag[85] == 0)
        {
            myinteract = 0
            if instance_exists(obj_monsterkidtrigger6)
                obj_monsterkidtrigger6.con = 10
        }
        if (global.flag[85] == 1)
        {
            global.msg[0] = scr_gettext("obj_townnpc_monsterkid1_161")
            mydialoguer = instance_create(0, 0, obj_dialoguer)
        }
    }
}
if (global.plot != 112)
    mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
