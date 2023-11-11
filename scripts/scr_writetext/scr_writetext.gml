global.facechoice = 0
global.msc = argument0
if (argument1 != "x" && argument1 != "xx")
    global.msg[0] = argument1
if (argument2 != 0)
    global.facechoice = argument2
if (global.inbattle == 0)
{
    global.typer = 5
    if (argument3 != 0)
        global.typer = argument3
    instance_create(0, 0, obj_dialoguer)
}
if (global.inbattle == 1)
{
    with (OBJ_WRITER)
        halt = 3
    global.typer = 1
    if (argument3 != 0)
        global.typer = argument3
    if (argument1 == "xx")
        instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
    else
        instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
}
