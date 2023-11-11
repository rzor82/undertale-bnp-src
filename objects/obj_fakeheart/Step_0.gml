if (movement == 2)
{
    if (sprite_index != spr_heartpink)
        sprite_index = spr_heartpink
    x = ((global.idealborder[1] - (obj_heart.x - global.idealborder[0])) - (sprite_width / 2))
    y = obj_heart.y
}
else if (!instance_exists(obj_heart))
    global.invc -= 1
if (global.invc > 0)
    image_speed = 0.5
else
{
    image_index = 0
    image_speed = 0
}
if (movement != 2)
{
    if obj_time.left
    {
        if (movement == 1)
        {
            if (control_check(1) == 1)
                x -= (global.sp / 2)
            else
                x -= global.sp
        }
    }
    if obj_time.right
    {
        if (movement == 1)
        {
            if (control_check(1) == 1)
                x += (global.sp / 2)
            else
                x += global.sp
        }
    }
    if obj_time.up
    {
        if (movement == 1)
        {
            if (control_check(1) == 1)
                y -= (global.sp / 2)
            else
                y -= global.sp
        }
    }
    if obj_time.down
    {
        if (movement == 1)
        {
            if (control_check(1) == 1)
                y += (global.sp / 2)
            else
                y += global.sp
        }
    }
}
if (global.hp < 1 && (!instance_exists(obj_heartshield)))
    script_execute(scr_gameoverb)
