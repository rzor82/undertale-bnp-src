if (sided == 0)
{
    if (rr == 1)
    {
        x = (global.idealborder[1] + 20)
        hspeed = -7
        gravity = 0.13
        gravity_direction = 0
        image_alpha = 1
        sided = 1
    }
    if (rr == 0)
    {
        x = (global.idealborder[0] - 20)
        hspeed = 7
        gravity = 0.13
        gravity_direction = 180
        image_alpha = 1
        sided = 1
    }
}
