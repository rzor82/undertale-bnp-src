if decrease
    image_alpha -= 0.05
if (image_alpha <= 0)
    instance_destroy()
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, rot, image_blend, image_alpha)
