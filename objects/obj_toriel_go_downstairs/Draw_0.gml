if (con < 4)
    draw_self()
else
{
    var boundx = (x + sprite_width)
    var boundy = (y + sprite_height)
    if (boundx > clipx)
        boundx = clipx
    if (boundy > clipy)
        boundy = clipy
    if (boundx <= x || boundy <= y)
        return;
    draw_sprite_part(sprite_index, sprite_index, 0, 0, (boundx - x), (boundy - y), x, y)
}
