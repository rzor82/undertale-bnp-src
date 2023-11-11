with (instance_create(0, 0, blt_sweatdrop))
{
    speed = 0
    depth = (other.depth - 20)
    x = (obj_lborder.x + irandom((c_borderwidth(0) - sprite_width)))
    y = (global.idealborder[2] - 80)
    visible = false
    vspeed = 3.5
}
alarm[0] = global.firingrate
