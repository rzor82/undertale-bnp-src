var w = (c_borderwidth(1) - 5)
var h = (c_borderheight(1) - 5)
var xscale = (w / 40)
var yscale = (h / 40)
for (var i = 0; i < 4; i++)
{
    var alpha = zonealpha[i]
    var posx = (positions[i, 0] + 8)
    var posy = (positions[i, 1] + 8)
    if (zones[i] == 1)
    {
        posx++
        posy++
        draw_sprite_ext(spr_rainbowtarget, 0, posx, posy, xscale, yscale, 0, c_white, alpha)
        posx--
        posy--
    }
    else if (zones[i] == 2)
    {
        posx -= floor((w / 4))
        posy -= floor((h / 4))
        draw_set_alpha(alpha)
        draw_set_color(c_white)
        draw_rectangle(posx, posy, (posx + floor((w / 2))), (posy + floor((h / 2))), false)
    }
    if (zonealpha[i] > 0)
        zonealpha[i] -= 0.1
}
draw_set_alpha(1)
if global.debug
{
    draw_set_color(c_yellow)
    draw_set_font(fnt_maintext)
    with (boss)
        draw_text(x, (y - 10), ((((string(instance_number(obj_mirrorshield_particle)) + " ") + string(shieldhp)) + "/") + string(shieldmaxhp)))
}
if (targetalpha > 0)
{
    draw_sprite_ext(spr_6gun_crosshair, 0, (obj_heart.x + 8), (obj_heart.y + 8), 1, 1, 0, c_white, targetalpha)
    targetalpha -= 0.05
}
