scr_depth()
if (myinteract == 1 && con == 0)
{
    con = 1
    global.flag[28] = 1
    global.msc = 0
    global.typer = 5
    global.allowrun = 1
    global.facechoice = 0
    global.msg[0] = "\\W* (You found the&  \\YWrist Protector\\W.)&* (Hold [C] to skip text.)/%%"
    instance_create(0, 0, obj_dialoguer)
    global.interact = 1
    visible = false
}
if (con == 1 && (!instance_exists(OBJ_WRITER)))
{
    global.interact = 0
    instance_destroy()
}
