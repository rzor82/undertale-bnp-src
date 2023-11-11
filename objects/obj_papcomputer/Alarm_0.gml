myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
special = false
if (room == room_tundra_paproom)
{
    if instance_exists(obj_papyrusparent)
    {
        scr_papface(0, 0)
        global.msg[1] = scr_gettext("obj_papcomputer_63")
        global.msg[2] = scr_gettext("obj_papcomputer_64")
        global.msg[3] = scr_gettext("obj_papcomputer_65")
        global.msg[4] = scr_gettext("obj_papcomputer_66")
        global.msg[5] = scr_gettext("obj_papcomputer_67")
        global.msg[6] = scr_gettext("obj_papcomputer_68")
        if (read > 0)
        {
            global.msg[0] = scr_gettext("obj_papcomputer_73")
            special = (global.flag[5] > 50 && global.flag[5] < 56)
        }
    }
    else
    {
        global.msg[0] = scr_gettext("obj_papcomputer_79")
        special = (global.flag[5] > 50 && global.flag[5] < 56)
    }
    if (special == true)
    {
        global.msg[0] = "* (The computer's internet&  browser is opened to&  an error message.)/"
        global.msg[1] = "* ('HTTP Error 450: Blocked&  by Windows Parental&  Controls.')/"
        global.msg[2] = "* (You decide not to ask.)/%%"
    }
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* (It's Papyrus's computer.^1)&* (Seems he's used it&  since you last checked.)/"
        global.msg[1] = "* (The browser is opened to&  a thread of spam e-mails.)/"
        global.msg[2] = "* (They include offers to&  become a \"big shot\" and&  \"expand yourself\".)/"
        global.msg[3] = "* (The links all seem to be&  blocked by parental controls.)/%%"
    }
}
if (room == room_water_blookhouse)
    global.msg[0] = scr_gettext("obj_papcomputer_84")
if (room == room_tundra_sansroom)
{
    global.msg[0] = "* (It's Sans's computer.^1)&* (A web browser is the&  only thing that's launched.)/"
    global.msg[1] = "* (There are so many opened&  tabs^1, you can't even make out&  the website names.)/"
    global.msg[2] = "* (The website last used seems&  to be a social media website.)/"
    global.msg[3] = "* (It currently has the&  user profile 'CoolSkeleton95'&  pulled up.)/%%"
}
if (room == room_ice_dog)
{
    global.msg[0] = scr_gettext("obj_papcomputer_90")
    global.msg[1] = scr_gettext("obj_papcomputer_91")
    global.msg[2] = scr_gettext("obj_papcomputer_92")
    global.msg[3] = scr_gettext("obj_papcomputer_93")
    global.msg[4] = scr_gettext("obj_papcomputer_94")
    global.msg[5] = scr_gettext("obj_papcomputer_95")
}
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
