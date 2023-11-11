if (priority < 0)
    priority = 0
if (x > fatalx)
{
    image_alpha -= 0.2
    if (image_alpha < 0.1)
    {
        image_alpha = 0
        if instance_exists(obj_targetparent)
        {
            with (obj_targetparent)
                priority -= 1
        }
        instance_destroy()
        priority = 999999
        return;
    }
}
if (priority == 0)
{
    image_index = 0
    autohit = (abs(floor((x / hspeed))) - floor((obj_battlethingparent.fatalx / hspeed))) == target
    autohit |= (instance_exists(obj_sansb) || instance_exists(obj_mewmew_boss) || instance_exists(obj_maddummy) || instance_exists(obj_sosorry))
    autohit &= global.autotarget == 1
    if (((!lock) && control_check_pressed(0)) || autohit)
    {
        image_alpha = 1
        image_speed = 0.5
        obj_battlethingparent.check = id
        with (obj_battlethingparent)
            event_user(3)
        control_clear(0)
        with (obj_targetparent)
            event_user(1)
    }
}
