draw_set_alpha(1)
with (blt_sweatdrop)
{
    if (image_alpha < 1)
        image_alpha += 0.05
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
if (height > 0)
{
    var h = (global.idealborder[3] - height)
    draw_set_color(c_white)
    draw_rectangle((global.idealborder[0] + 5), global.idealborder[3], global.idealborder[1], (h + waveheight), false)
    var offset = 0
    var tempsiner = siner
    for (var i = (global.idealborder[0] + 5); i < global.idealborder[1]; i++)
    {
        offset = (sin(tempsiner) * waveheight)
        draw_line(i, (h + waveheight), i, (h - offset))
        tempsiner += 0.5
    }
    siner += 0.5
}
draw_set_color(c_yellow)
draw_set_font(fnt_maintext)
with (boss)
    draw_text(x, (y - 10), ((string(instance_number(blt_sweatdrop)) + " ") + string(other.height)))
