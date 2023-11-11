if (!specialscene)
{
    if keyboard_check(global.keybind[0])
    {
        if (movement == 1 || movement == 2)
        {
            left = 1
            right = 0
            if (confuse == 0)
            {
                x -= global.sp
                if (control_check(1) == 1)
                    x += (global.sp / 2)
            }
            if (confuse == 1 && x < (global.idealborder[1] - 8))
            {
                x += global.sp
                if (control_check(1) == 1)
                    x += (global.sp / 2)
            }
        }
    }
    if keyboard_check(global.keybind[1])
    {
        if (movement == 1)
        {
            up = 1
            down = 0
            if (confuse == 0)
            {
                y -= global.sp
                if (control_check(1) == 1)
                    y += (global.sp / 2)
            }
            if (confuse == 1 && y < (global.idealborder[3] - 8))
            {
                y += global.sp
                if (control_check(1) == 1)
                    y -= (global.sp / 2)
            }
        }
        if (movement == 2)
        {
            if (jumpstage == 1 && vspeed == 0)
            {
                jumpstage = 2
                vspeed = -6
            }
        }
    }
    if keyboard_check(global.keybind[2])
    {
        if (movement == 1 || movement == 2)
        {
            right = 1
            left = 0
            if (confuse == 0)
            {
                x += global.sp
                if (control_check(1) == 1)
                    x -= (global.sp / 2)
            }
            if (confuse == 1 && x > (global.idealborder[0] + 8))
            {
                x -= global.sp
                if (control_check(1) == 1)
                    x += (global.sp / 2)
            }
        }
    }
    if keyboard_check(global.keybind[3])
    {
        if (movement == 1)
        {
            down = 1
            up = 0
            if (confuse == 0)
            {
                y += global.sp
                if (control_check(1) == 1)
                    y -= (global.sp / 2)
            }
            if (confuse == 1 && y > (global.idealborder[2] + 8))
            {
                y -= global.sp
                if (control_check(1) == 1)
                    y += (global.sp / 2)
            }
        }
    }
}
