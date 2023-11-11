g = 0
if instance_exists(obj_greatdog)
{
    if (obj_greatdog.dogignore <= 2)
    {
        draw_self_custom_x(0, 999, 0, 250)
        g = 1
    }
}
if (g == 0)
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, 999, ((265 - y) / image_yscale), (x + (5 * image_xscale)), (y - 11), image_xscale, image_yscale, c_white, 1)
