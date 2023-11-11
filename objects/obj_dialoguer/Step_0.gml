if (instance_exists(writer) == 0)
    instance_destroy()
else if control_check_pressed(1)
{
    if (writer.halt == false && writer.skippable == 1)
    {
        if (global.typer != 10)
        {
            global.flag[25] += 1
            if instance_exists(obj_papyrussign)
            {
                if (obj_papyrussign.myinteract == 0)
                    writer.stringpos = string_length(writer.originalstring)
            }
            else
                writer.stringpos = string_length(writer.originalstring)
        }
    }
    control_clear(1)
}
else
    writer.depth = (depth - 1)
if (global.facechange == 2)
    global.facechange = 0
if (global.facechange == 1 && global.facechoice == 0)
{
    if instance_exists(writer)
    {
        writer.x = (xx + 30)
        writer.writingx = writer.x
        writer.writingxend = writer.writingxend_base
    }
    if (instance_exists(obj_face) == 1)
    {
        with (obj_face)
            instance_destroy()
    }
    global.facechange = 2
}
else if (global.facechange == 1)
{
    if instance_exists(writer)
    {
        writer.x = (xx + 68)
        writer.writingx = (writer.x + 20)
        writer.writingxend = writer.writingxend_base
        with (obj_face)
        {
            xstart = other.writer.x
            ystart = other.writer.y
        }
        scr_facechoice()
        global.facechange = 2
    }
}
