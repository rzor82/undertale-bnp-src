if (con == 2)
{
    vspeed = 0
    anchor = 1
    con = 3
}
if (anchor == 1)
{
    if (top == spr_introlast)
        y = global.idealborder[2]
    if (top == spr_undertaletitle)
        y = (global.idealborder[3] - sprite_height)
}
if (con == 11)
    instance_destroy()
