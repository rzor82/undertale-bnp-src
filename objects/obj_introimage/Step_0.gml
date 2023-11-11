if (act == 1)
{
    if control_check_pressed(0)
    {
        if (skip == false)
        {
            skip = true
            fader = instance_create(0, 0, obj_unfader)
            fader.tspeed = 0.05
            alarm[1] = 30
            with (OBJ_WRITER)
                instance_destroy()
        }
    }
}
if instance_exists(obj_unfader)
{
    with (obj_borderdrawer)
        alpha = (1 - obj_unfader.image_alpha)
}
else if (instance_exists(obj_introfader) && (!obj_introfader.over))
{
    with (obj_borderdrawer)
    {
        if (alpha > 0)
            alpha -= 0.1
    }
}
else
{
    with (obj_borderdrawer)
    {
        if (alpha < 1)
            alpha += 0.1
    }
}
