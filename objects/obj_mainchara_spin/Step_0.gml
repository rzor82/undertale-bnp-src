with (obj_mainchara)
{
    other.image_alpha = image_alpha
    visible = false
    if other.follow
    {
        other.x = x
        other.y = y
    }
}
if (mode == 1 && airtime >= spin_time)
    instance_destroy()
if (mode > 0)
{
    airtime++
    real_index = ((target_facing * 4) + (sprite_get_number(sprite_index) * (airtime / spin_time)))
    if chop
        image_index = (floor((real_index / 2)) * 2)
    else
        image_index = real_index
}
scr_depth()
