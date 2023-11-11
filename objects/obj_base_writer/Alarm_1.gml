if (global.battlefacechange == 2)
    global.battlefacechange = 0
if (global.battlefacechange == 1)
{
    xx = global.idealborder[0]
    writer = OBJ_WRITER
    if (THEwriter == 1)
    {
        if (global.facechoice == 0)
        {
            if instance_exists(writer)
            {
                writer.x = global.idealborder[0]
                writer.writingx = (writer.x + 20)
                writer.writingxend = writer.writingxend_base
            }
            if (instance_exists(obj_face) == 1)
            {
                with (obj_face)
                    instance_destroy()
            }
            global.battlefacechange = 2
        }
        if (global.facechoice != 0)
        {
            if instance_exists(writer)
            {
                writer.x = (xx + 102)
                writer.writingx = (writer.x + 40)
                writer.writingxend = writer.writingxend_base
                script_execute(scr_facechoice)
            }
        }
    }
    global.battlefacechange = 2
}
alarm[1] = 1
