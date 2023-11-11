if (q == 9)
{
    with (obj_borderparent)
        depth = -1
    image_xscale = 2.5
    image_yscale = 2.5
    depth = -2
}
else
{
    image_xscale = 2
    image_yscale = 2
    depth = 0
}
x = ((room_width - sprite_width) / 2)
if (con == 1)
{
    y = (-sprite_height)
    gravity = 3
    vspeed = 2
    con = 2
}
else if (con == 2 && y >= 0)
{
    vspeed = ((-(abs((vspeed / 2)))) + 1)
    if (vspeed > 0)
    {
        gravity = 0
        vspeed = 0
        con = 0
    }
    y = 0
}
else if (con == 3 && (y + sprite_height) < 0)
{
    y = (-sprite_height)
    gravity = 0
    vspeed = 0
    con = 0
}
draw_set_color(c_black)
draw_set_alpha(image_alpha)
draw_rectangle((x + (7 * image_xscale)), (y + (27 * image_yscale)), (x + (123 * image_xscale)), (y + (87 * image_yscale)), false)
draw_self()
draw_set_color(c_white)
var xx = (x + (sprite_width / 2))
var yy = (y + (sprite_height / 2))
var scale = 1
var angle = 0
with (obj_mettatonnn_writer)
    depth = (other.depth - 1)
with (obj_zoomaton)
{
    x = (other.x + ((other.sprite_width - (width * scalefactor)) / 2))
    y = (other.y + (((other.sprite_height - (height * scalefactor)) / 3) * (instance_exists(OBJ_WRITER) ? 2 : 2.2)))
    yy -= (image_alpha * 10)
}
if (q == 9)
    yy += 5
if (q == 4)
{
    scr_setfont(fnt_maintext)
    scale = 0.5
    angle = 6
}
else
    scr_setfont(fnt_main)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed((xx + irandom(1)), (yy + irandom(1)), string_hash_to_newline(text), scale, scale, angle)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_alpha(1)
