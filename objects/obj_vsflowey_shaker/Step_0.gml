intensity = (special_intensity * (1 / instance_number(object_index)))
if (turn1 == 0)
{
    if special
        window_set_position((myx + ((shakex * choose(1, -1)) * intensity)), (myy + ((shakey * choose(1, -1)) * intensity)))
    else
    {
        __view_set(0, 0, (myx + ((shakex * choose(1, -1)) * intensity)))
        __view_set(1, 0, (myy + ((shakey * choose(1, -1)) * intensity)))
    }
    turn1 = 1
}
else if special
    window_set_position((myx + ((random(shakex) - random(shakex)) * intensity)), (myy + ((random(shakey) - random(shakey)) * intensity)))
else
{
    __view_set(0, 0, (myx + ((random(shakex) - random(shakex)) * intensity)))
    __view_set(1, 0, (myy + ((random(shakey) - random(shakey)) * intensity)))
}
if (special == 3)
{
    win_x = window_get_x()
    win_y = window_get_y()
    comp_x = myx
    comp_y = myy
    if instance_exists(obj_flowey_master)
    {
        comp_x = obj_flowey_master.win_x
        comp_y = obj_flowey_master.win_y
    }
    change = 0
    if (abs((comp_x - win_x)) > (shakex * intensity))
    {
        win_x = (comp_x + (((shakex * choose(-1, 1)) * intensity) / 4))
        change = 1
    }
    if (abs((comp_y - win_y)) > (shakey * intensity))
    {
        win_y = (comp_y + (((shakey * choose(-1, 1)) * intensity) / 4))
        change = 1
    }
    if change
        window_set_position(win_x, win_y)
}
if (decay == 1)
{
    shakex -= 1
    shakey -= 1
}
if (shakex <= 0 && shakey <= 0)
    instance_destroy()
