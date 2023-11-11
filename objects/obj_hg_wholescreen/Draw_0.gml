if (con == 0)
{
    obj_asriel_body.image_alpha -= 0.1
    draw_set_color(c_black)
    if (obj_battlecontroller.drawrect == 1)
        ossafe_fill_rectangle(xx, yy, xx2, yy2)
    else
    {
        with (obj_btparent)
            image_alpha -= 0.1
        with (obj_borderparent)
            image_alpha = 0
        with (obj_battlecontroller)
            drawbinfo = 0
    }
}
if (con == 2)
{
    draw_set_color(c_white)
    draw_set_alpha(scr)
    ossafe_fill_rectangle(global.idealborder[0], global.idealborder[2], global.idealborder[1], global.idealborder[3])
    scr -= 0.1
    draw_set_alpha(1)
    if (scr <= 0)
        instance_destroy()
}
var lowx = -100
var lowy = -100
if instance_exists(obj_expander)
{
    lowx = ((-obj_expander.diffx) - 20)
    lowy = ((-obj_expander.diffy) - 20)
}
if (xx > lowx)
    xx -= 10
if (yy > lowy)
    yy -= 10
if (xx2 <= window_get_width())
    xx2 += 10
if (yy2 <= window_get_height())
    yy2 += 10
draw_set_color(c_white)
for (i = 0; i < 4; i += 1)
    draw_rectangle((xx + i), (yy + i), (xx2 + i), (yy2 + i), true)
