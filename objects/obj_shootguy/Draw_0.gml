draw_self()
if active
{
    var offset = (room == room_fire_core2 ? 25 : 20)
    for (i = 0; i < ammo; i += 1)
        draw_sprite(spr_shotguy_indicator, 0, ((x + offset) + (i * 10)), (y - 2))
}
var blend = (active ? c_white : c_gray)
draw_set_color(blend)
if (win > 0)
    draw_set_color(c_lime)
draw_rectangle((gridl - 2), (gridu - 2), (gridr + 1), (gridd + 1), true)
if (wintimer >= 50)
    draw_sprite(spr_text_congratulations, 0, ((gridr / 2) + (gridl / 2)), (gridu - 15))
if (restart > false)
{
    if (rstype < 99)
        draw_sprite(spr_text_restart, 0, ((gridr / 2) + (gridl / 2)), (gridu - 15))
    else
        draw_sprite(spr_text_restaurant, 0, ((gridr / 2) + (gridl / 2)), (gridu - 15))
}
if (room == room_fire_core2)
{
    image_blend = blend
    with (obj_targetguy)
        image_blend = blend
}
else if (!active)
{
    draw_set_color(c_black)
    draw_set_alpha(0.4)
    ossafe_fill_rectangle(-10, -10, 400, 160)
}
draw_set_alpha(1)
if (global.debug == true)
{
    draw_set_color(c_yellow)
    draw_set_font(fnt_maintext)
    with (obj_mainchara)
    {
        if visible
            draw_text(x, (y - 20), ((string(other.shots_fired) + " ") + string(other.skipped)))
    }
}
