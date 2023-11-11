b = argument0
c = argument1
a += 1
for (i = 0; i < sprite_get_height(sprite_index); i += 1)
{
    a += 1
    draw_sprite_part_ext(sprite_index, image_index, 0, i, sprite_get_width(sprite_index), 1, ((x + (sin((a / b)) * c)) * image_xscale), (y + (i * image_yscale)), image_xscale, image_yscale, c_white, image_alpha)
}
