draw_sprite_part(bg_coretiles_wip, 0, 240, 200, 20, 40, x, y)
if active
{
    draw_set_color(c_red)
    draw_set_alpha(((sin(siner) / 3) * 2))
    draw_rectangle((x + 8), (y + 7), (x + 11), (y + 26), false)
    siner += 0.1
    if (sin(siner) < 0)
    {
        active = false
        alarm[4] = 30
        siner = 0
    }
}
draw_set_alpha(1)
