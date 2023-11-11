if (f == 0)
{
    if (c == 0)
        sl2 = (sin((sinelover / 10)) * 8)
    else
        sl2 = (cos((sinelover / 10)) * 8)
    if (y < (bborder - 20))
    {
        draw_sprite_ext(sprite_index, image_index, (sl2 + x), y, 2, 2, 0, c_white, (1 - merge_amt))
        draw_sprite_ext(merger, image_index, (sl2 + x), y, 2, 2, 0, c_white, merge_amt)
        merge_amt += 0.05
    }
}
if (f == 1)
    instance_destroy()
if (f == 2)
{
    vspeed = 0
    if (c == 0)
        sl2 = (sin((sinelover / 10)) * 8)
    else
        sl2 = (cos((sinelover / 10)) * 8)
    if (y < (bborder - 20))
    {
        draw_sprite_ext(sprite_index, image_index, (x + sl2), y, (1.5 + stetch), 2, 0, c_white, (1 - merge_amt))
        draw_sprite_ext(merger, image_index, (x + sl2), y, (1.5 + stetch), 2, 0, c_white, merge_amt)
        merge_amt += 0.05
    }
    sinelover += 1
}
if (merge_amt > 1)
{
    ch = ((ch + 1) % 3)
    event_user(0)
}
