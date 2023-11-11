if (myinteract == 1)
{
    bottom = ((y + sprite_height) - obj_mainchara.sprite_height)
    climber = scr_marker(x, bottom, spr_mainchara_climb)
    obj_mainchara.visible = false
    if warp
        obj_mainchara.y = bottom
    obj_mainchara.x = x
    global.phasing = 1
    global.facing = 2
    myinteract = 2
    release = 0
    buffer = 0
}
else if (myinteract == 2)
{
    obj_mainchara.x = x
    if (!lock)
    {
        var dir = ((obj_time.down - obj_time.up) * 3)
        obj_mainchara.y += dir
        if (obj_mainchara.y >= bottom)
        {
            dir = 0
            obj_mainchara.y = bottom
            if obj_time.down
            {
                if (buffer < 2)
                    buffer = 1
                else
                    release = 1
            }
            else if (buffer && (!obj_time.down))
                buffer = 2
            if (control_check_pressed(1) || release)
            {
                obj_mainchara.y += 20
                with (climber)
                    instance_destroy()
                obj_mainchara.visible = true
                global.interact = 0
                global.phasing = 0
                myinteract = 0
                buffer = 3
            }
        }
        with (climber)
        {
            x = obj_mainchara.x
            y = obj_mainchara.y
            if (dir < 0)
                image_speed = 0.2
            else if (dir > 0)
                image_speed = -0.2
            else
                image_speed = 0
        }
    }
}
if myinteract
    global.interact = 3
else if (buffer == 3 && (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_mainchara, 0, 0))))
    buffer = 0
