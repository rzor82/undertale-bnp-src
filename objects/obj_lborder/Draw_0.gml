event_inherited()
draw_set_color(c_black)
if (outline == 1)
{
    draw_rectangle((borderxone - 1), (borderyone - 1), (borderxtwo + 5), (borderytwo + 5), true)
    draw_rectangle((borderxone - 2), (borderyone - 2), (borderxtwo + 6), (borderytwo + 6), true)
    draw_rectangle((borderxone + 5), (borderyone + 5), (borderxtwo - 1), (borderytwo - 1), true)
    draw_rectangle((borderxone + 6), (borderyone + 6), (borderxtwo - 2), (borderytwo - 2), true)
}
comment = "I have no idea how this works with muffet's fight but yeah it works kinda crazy"
