with (obj_battlecontroller)
    drawrect = 0
if (edge == 0)
    edge = 0.1
if (part == 0)
    part = 1
wp = (w0 / part)
hp = (h0 / part)
lside = __view_get(0, 0)
rside = (__view_get(0, 0) + __view_get(2, 0))
side = 0
curx = 0
size = 1
col += 1
color = make_color_hsv(col, 233, 200)
if (col > 254)
    col = 0
for (i = 0; i < part; i += 1)
{
    draw_sprite_part_ext(image, image_index, ((wp * i) + x), 0, (wp * i), 999, (((room_width / 2) + (wp * i)) - 6), (0 - ((wp * i) / 2)), i, i, color, image_alpha)
    draw_sprite_part_ext(image, image_index, ((wp * i) + x), 0, (wp * i), 999, (((room_width / 2) - (wp * i)) + 6), (0 - ((wp * i) / 2)), (-i), i, color, image_alpha)
}
x += rotspeed
if (x > boundx)
    x -= boundx
if (x < 0)
    x += boundx
ftimer += 1
if (ftimer > fadein_time && ftimer < fadeout_time)
{
    falpha += 0.025
    draw_set_alpha(falpha)
    draw_set_color(c_white)
    if instance_exists(obj_expander)
    {
        with (obj_expander)
            ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
    }
    else
        ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (ftimer >= fadeout_time && ftimer < fadeout_time_end)
{
    image_alpha = 0.5
    falpha -= 0.1
    draw_set_alpha(falpha)
    draw_set_color(c_white)
    if instance_exists(obj_expander)
    {
        with (obj_expander)
            ossafe_fill_rectangle((-diffx), (-diffy), window_get_width(), window_get_height())
    }
    else
        ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (global.flag[500] == 1 && ftimer == fadeout_time)
{
    with (obj_asriel_body)
    {
        aligncon = 4
        specialnormal = 0
    }
    global.turntimer = -2
    if (global.mnfight == 2)
        global.msg[0] = scr_gettext("obj_roundedge_135")
}
if (global.flag[500] == 1 && ftimer >= 671)
{
    with (obj_battlethingparent)
        sprite_index = spr_asrieltarget
    with (obj_target)
        sprite_index = spr_asrieltarget
}
draw_set_alpha(1)
