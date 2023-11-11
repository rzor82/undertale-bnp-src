if (instance_exists(writer) && writer.myview >= 0 && writer.myview != view_current)
    return;
if (side == 0)
{
    yy = 0
    if instance_exists(writer)
    {
        if (writer.writingy > (yy + 80))
            writer.writingy -= 155
    }
    if instance_exists(obj_face)
    {
        if (obj_face.y > (yy + 80))
            obj_face.y -= 155
    }
    draw_set_color(c_white)
    scr_textbox((__view_get(0, view_current) + 14), (__view_get(1, view_current) + 5), (__view_get(0, view_current) + 306), (__view_get(1, view_current) + 80))
    draw_set_color(c_black)
    draw_rectangle(((__view_get(0, view_current) + 17) + 4), ((__view_get(1, view_current) + 8) + 4), ((__view_get(0, view_current) + 301) - 4), ((__view_get(1, view_current) + 77) - 4), false)
}
else
{
    yy = 0
    if instance_exists(writer)
    {
        if (writer.writingy < (yy + 80))
            writer.writingy += 155
    }
    if instance_exists(obj_face)
    {
        if (obj_face.y < (yy + 80))
            obj_face.y += 155
    }
    if (room != room_of_bog)
    {
        draw_set_color(c_white)
        scr_textbox((__view_get(0, view_current) + 14), (__view_get(1, view_current) + 160), (__view_get(0, view_current) + 306), (__view_get(1, view_current) + 235))
        draw_set_color(c_black)
        draw_rectangle(((__view_get(0, view_current) + 17) + 4), ((__view_get(1, view_current) + 163) + 4), ((__view_get(0, view_current) + 301) - 4), ((__view_get(1, view_current) + 232) - 4), false)
    }
}
count = 1
