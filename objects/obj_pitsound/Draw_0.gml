siner += 1
offsetx = 0
offsety = 0
if murder
{
    sprite = spr_coreentrance_bright_panic
    if do_blend
    {
        image_blend = c_red
        if ((siner % 20) == 0)
            index = (index == 0 ? 3 : 0)
    }
    if (rect_draw && index == 3)
    {
        draw_set_color(c_red)
        draw_set_alpha(0.5)
        draw_rectangle(144, 40, 175, 99, false)
    }
    offsetx = 7
    offsety = 15
}
else
{
    sprite = spr_coreentrance_bright
    image_blend = c_white
    index = (siner / 8)
}
if (!do_blend)
    index = (siner / 8)
draw_set_alpha(1)
draw_sprite_ext(sprite, index, (60 + offsetx), offsety, 1, 1, 0, image_blend, 1)
