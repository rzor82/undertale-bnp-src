size = 2
lowx = -80
lowy = -80
highx = room_width
highy = room_height
scaler = 0.03
distdiff = 10
if instance_exists(obj_expander)
{
    lowx = ((-obj_expander.diffx) - (sprite_width / 2))
    lowy = ((-obj_expander.diffy) - (sprite_height / 2))
    highx = (window_get_width() + (sprite_width / 2))
    highy = (window_get_height() + (sprite_height / 2))
    var old_diag = sqrt(((obj_expander.origwv * obj_expander.origwv) + (obj_expander.orighv * obj_expander.orighv)))
    var new_diag = sqrt(((window_get_width() * window_get_width()) + (window_get_height() * window_get_height())))
    var tmpscaler = (scaler / (new_diag / old_diag))
    distdiff *= (scaler / tmpscaler)
    scaler = tmpscaler
}
side = choose(0, 1, 2, 3)
if (side == 0)
{
    x = (random((highx + 160)) - 80)
    y = (highy + 80)
}
if (side == 1)
{
    x = (random((highx + 160)) - 80)
    y = lowy
}
if (side == 2)
{
    y = (random((highy + 160)) - 80)
    x = lowx
}
if (side == 3)
{
    y = (random((highy + 160)) - 80)
    x = (highx + 80)
}
friction = -0.3
move_towards_point((room_width / 2), (room_height / 2), 2)
