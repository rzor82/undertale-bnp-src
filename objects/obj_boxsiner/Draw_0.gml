draw_set_color(c_green)
yoff = 0
siner += 1
if (fade == 1)
    alpha -= 0.01
with (obj_borderdrawer)
{
    alpha = (1 - other.alpha)
    global.screen_border_alpha = (1 - alpha)
}
if (alpha <= 0)
    instance_destroy()
repeat (2)
{
    i = 0
    if (i < 6)
    {
        draw_set_alpha(alpha)
        ysin = (sin((((i * 3) + (siner / 2)) / 8)) * 20)
        draw_rectangle((20 + (i * 100)), ((16 + yoff) + ysin), (20 + ((i + 1) * 100)), ((136 + yoff) + ysin), true)
        for (i += 1; i < 6; i += 1)
        {
            draw_set_alpha(alpha)
            ysin = (sin((((i * 3) + (siner / 2)) / 8)) * 20)
            draw_rectangle((20 + (i * 100)), ((16 + yoff) + ysin), (20 + ((i + 1) * 100)), ((136 + yoff) + ysin), true)
        }
    }
    yoff = 120
}
draw_set_alpha(1)
