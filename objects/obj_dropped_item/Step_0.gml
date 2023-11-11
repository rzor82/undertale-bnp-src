if collision_rectangle(x, y, (x + sprite_width), (y + sprite_height), obj_mainchara, 0, 0)
    depth = (obj_mainchara.depth + 1)
else
    scr_depth()
visible = dropped_room == room
if (!visible)
    return;
if (myinteract == 1 && instance_exists(mydialoguer))
{
    if (!warned)
    {
        with (mydialoguer)
        {
            with (writer)
                instance_destroy()
            instance_destroy()
        }
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        global.msg[0] = "* Hey^1, look^1, we get it^2.&* You wanna dupe items./"
        global.msg[1] = "* No u./%%"
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        warned = true
    }
    myinteract = 3
    alarm[0] = -1
}
else if (success && (!instance_exists(mydialoguer)))
{
    global.interact = 0
    instance_destroy()
}
else
    event_inherited()
