var writerx = 60
var writery = 60
if (global.language == "ja")
    writerx = 95
if (con == 1)
{
    con = 1.1
    global.msc = 0
    global.typer = 120
    global.msg[0] = scr_gettext("obj_endflowey_regret_111")
    if (global.pirate && rpt > 1)
    {
        if (rpt == 100)
        {
            global.msg[0] = "\\E4I have your IP address"
            if (global.osflavor == 1 && dox)
                global.msg[0] += ("&" + string_letters(environment_get_variable("USERNAME")))
            global.msg[0] += "./"
            if dox
            {
                global.msg[1] = (string(ip) + "/%%")
                con = 2
            }
            else
                global.msg[1] = "I'm going to leak it&online!/%%"
        }
        else
        {
            global.msg[0] = "\\E4Don't you have anything&better to do?/%%"
            con = 2
        }
    }
    instance_create(writerx, writery, OBJ_WRITER)
}
if (con == 1.1 && instance_exists(OBJ_WRITER) == 0)
{
    con = 0.9
    alarm[4] = 60
}
if (con == 1.9)
{
    global.msc = 0
    global.typer = 120
    global.msg[0] = scr_gettext("obj_endflowey_regret_128")
    global.msg[1] = scr_gettext("obj_endflowey_regret_129")
    global.msg[2] = scr_gettext("obj_endflowey_regret_130")
    global.msg[3] = scr_gettext("obj_endflowey_regret_131")
    global.msg[4] = scr_gettext("obj_endflowey_regret_132")
    if global.pirate
    {
        if (rpt == 100)
        {
            global.msg[0] = "\\E6...just kidding^1, that&would be illegal./"
            global.msg[1] = "\\E4Scared you though^1,&didn't I?/"
            global.msg[2] = "Unlike you^1, I respect the&law^3. \\E5Sometimes./"
            global.msg[3] = "\\E4Anyway, don't you have&anything better to do?/%%"
            con = 2
        }
        else
        {
            if realf
            {
                global.msg[0] = "You're probably expecting&me to monologue about&what's next./"
                global.msg[1] = "How everyone is happy^1, how&you have to power to&take their freedom away^1,&etc./"
                global.msg[2] = "\\E1But that's not why&I'm here./"
            }
            else
            {
                global.msg[0] = "You're probably wondering&why you're here./"
                global.msg[1] = "\\E6'Did I do something wrong?'/"
                global.msg[2] = "'Did I corrupt my SAVE file?'/"
                if (rpt == 1)
                {
                    global.msg[0] = "You know why you're here./"
                    global.msg[1] = "\\E6I've already given you my&little speech./"
                    global.msg[2] = "\\E1However^1, it seems as&though you forgot what&I said./"
                }
            }
            global.msg[3] = "\\E0No^1, I just need to&talk to you./%%"
            if (rpt == 1)
                global.msg[3] = "\\E0So, here is is again./%%"
            con = 0.2
        }
    }
    else
        con = 0.2
    instance_create(writerx, writery, OBJ_WRITER)
}
if (con == 0.2 && instance_exists(OBJ_WRITER) == 0)
{
    con = 1.2
    alarm[4] = 70
}
if (con == 2.2)
{
    global.msc = 0
    global.typer = 120
    global.msg[0] = scr_gettext("obj_endflowey_regret_148")
    global.msg[1] = scr_gettext("obj_endflowey_regret_149")
    global.msg[2] = scr_gettext("obj_endflowey_regret_150")
    global.msg[3] = scr_gettext("obj_endflowey_regret_151")
    global.msg[4] = scr_gettext("obj_endflowey_regret_152")
    global.msg[5] = scr_gettext("obj_endflowey_regret_153")
    global.msg[6] = scr_gettext("obj_endflowey_regret_154")
    global.msg[7] = scr_gettext("obj_endflowey_regret_155")
    global.msg[8] = scr_gettext("obj_endflowey_regret_156")
    global.msg[9] = scr_gettext("obj_endflowey_regret_157")
    global.msg[10] = scr_gettext("obj_endflowey_regret_158")
    global.msg[11] = scr_gettext("obj_endflowey_regret_159")
    global.msg[12] = scr_gettext("obj_endflowey_regret_160")
    global.msg[13] = scr_gettext("obj_endflowey_regret_161")
    global.msg[14] = scr_gettext("obj_endflowey_regret_162")
    global.msg[15] = scr_gettext("obj_endflowey_regret_163")
    global.msg[16] = scr_gettext("obj_endflowey_regret_164")
    global.msg[17] = scr_gettext("obj_endflowey_regret_165")
    global.msg[18] = scr_gettext("obj_endflowey_regret_166")
    global.msg[19] = scr_gettext("obj_endflowey_regret_167")
    global.msg[20] = scr_gettext("obj_endflowey_regret_168")
    global.msg[21] = scr_gettext("obj_endflowey_regret_169")
    global.msg[22] = scr_gettext("obj_endflowey_regret_170")
    global.msg[23] = scr_gettext("obj_endflowey_regret_171")
    global.msg[24] = scr_gettext("obj_endflowey_regret_172")
    global.msg[25] = scr_gettext("obj_endflowey_regret_173")
    global.msg[26] = scr_gettext("obj_endflowey_regret_174")
    global.msg[27] = scr_gettext("obj_endflowey_regret_175")
    global.msg[28] = scr_gettext("obj_endflowey_regret_176")
    global.msg[29] = scr_gettext("obj_endflowey_regret_177")
    global.msg[30] = scr_gettext("obj_endflowey_regret_178")
    if global.pirate
    {
        global.msg[0] = "\\E6You know^1, Toby Fox put a&lot of effort into this&game./"
        global.msg[1] = "\\E9Countless hours of work./"
        global.msg[2] = "To share his ideas with&the world./%%"
    }
    instance_create(writerx, writery, OBJ_WRITER)
    con = 0.3
}
if (con == 0.3 && instance_exists(OBJ_WRITER) == 0)
{
    con = 1.3
    alarm[4] = 70
}
if (con == 2.3)
{
    global.msc = 0
    global.typer = 120
    global.msg[0] = scr_gettext("obj_endflowey_regret_195")
    global.msg[1] = scr_gettext("obj_endflowey_regret_197")
    global.msg[2] = scr_gettext("obj_endflowey_regret_199")
    global.msg[3] = scr_gettext("obj_endflowey_regret_201")
    global.msg[4] = scr_gettext("obj_endflowey_regret_203")
    global.msg[5] = scr_gettext("obj_endflowey_regret_205")
    global.msg[6] = scr_gettext("obj_endflowey_regret_207")
    global.msg[7] = scr_gettext("obj_endflowey_regret_209")
    global.msg[8] = scr_gettext("obj_endflowey_regret_211")
    global.msg[9] = scr_gettext("obj_endflowey_regret_213")
    global.msg[10] = scr_gettext("obj_endflowey_regret_215")
    global.msg[11] = scr_gettext("obj_endflowey_regret_217")
    global.msg[12] = scr_gettext("obj_endflowey_regret_219", chara)
    if global.pirate
    {
        global.msg[0] = "\\E7There's just one problem./"
        global.msg[1] = "\\E6A certain group of people./"
        global.msg[2] = "\\E7People like you.../"
        global.msg[3] = "'Pirates.'^3/"
        global.msg[4] = "\\E6I know you may not have the&means to purchase this&game at the moment./"
        global.msg[5] = "And if that's the case^1,&feel free to come back when&you do own a legitimate copy./"
        global.msg[6] = "\\E1If you do have the means^1,&then.../"
        global.msg[7] = "\\E5Please^1, go support Toby Fox&and his amazing work^5./"
        global.msg[8] = "\\E0 Well^1, that's it for now./"
        global.msg[9] = "\\E5I hope you consider what&I said./%%"
    }
    instance_create(writerx, writery, OBJ_WRITER)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == 0)
{
    flowey = 3
    con = 3
    alarm[4] = 200
}
if (con == 4)
{
    ossafe_ini_open("undertale.ini")
    if realf
    {
        ini_write_real("EndF", "EndF", 2)
        ossafe_savedata_save()
        if (!global.pirate)
            room_goto(room_emptyblack)
    }
    if global.pirate
    {
        url_open("https://store.steampowered.com/app/391540")
        ini_write_real("EndF", "P", (rpt + 1))
        room_goto(room_of_dog)
    }
    ossafe_ini_close()
}
