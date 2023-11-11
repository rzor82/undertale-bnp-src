l = 0
t = 0
w = sprite_width
h = sprite_height
ll = ((global.idealborder[0] - x) + 1)
tt = ((global.idealborder[2] - y) + 1)
ww = (((x + w) - global.idealborder[1]) - 1)
hh = (((y + h) - global.idealborder[3]) - 1)
if (ll > 0)
    l += ll
if (tt > 0)
    t += tt
if (ww > 0)
    w -= ww
if (hh > 0)
    h -= hh
w = round(w)
h = round(h)
l = round(l)
t = round(t)
if (x > (global.idealborder[0] - 5) && x < (global.idealborder[1] - 4))
{
    drawn = 1
    if (blue == 1)
        draw_set_color(0x97492F)
    else
        draw_set_color(0xA87286)
    ossafe_fill_rectangle((x + 4), (y + 4), (x + 12), (global.idealborder[3] - 6))
    if (blue == 1)
        draw_set_color(0xE8A200)
    else
        draw_set_color(c_white)
    ossafe_fill_rectangle((x + 5), (y + 4), (x + 11), (global.idealborder[3] - 6))
}
if (w > 0 && h > 0)
{
    if (l < w && t < h)
    {
        if (blue == 1)
            image_index = 1
        draw_sprite_part(spr_bonetop, image_index, l, t, (w - l), (h - t), (x + l), (y + t))
        draw_sprite_part(spr_bonebottom, image_index, l, t, (w - l), (h - t), (x + l), (global.idealborder[3] - 10))
    }
}
if (abs((obj_heart.x - x)) < 15 && global.invc < 1)
{
    if collision_rectangle((x + 3), (y + 2), (x + 9), (global.idealborder[3] - 2), obj_heart, 0, 1)
        event_user(1)
}
if (x < (global.idealborder[0] - 10) && hspeed < 0)
    instance_destroy()
if (x > (global.idealborder[1] + 10) && hspeed > 0)
    instance_destroy()
