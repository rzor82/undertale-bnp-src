if bg
{
    diffy = (y - ystart)
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(0, diffy, room_width, (72 + diffy), false)
}
if show
    draw_self()
