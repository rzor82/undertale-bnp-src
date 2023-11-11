prevx = x
prevy = y
if (do_siner && instance_exists(obj_generalsiner))
{
    surface_set_target(obj_generalsiner.surface)
    x = 0
    y = 0
}
if (type == 0)
    draw_sprite_ext(sprite_index, global.flag[20], x, y, 2, 2, 0, image_blend, image_alpha)
if (type == 1)
    draw_sprite_ext(sprite_index, global.faceemotion, x, y, 2, 2, 0, image_blend, image_alpha)
if (do_siner && instance_exists(obj_generalsiner))
{
    surface_reset_target()
    x = prevx
    y = prevy
    draw_surface(obj_generalsiner.surface, x, y)
}
