if (forcedraw || unshield || target.sprite_index == spr_heartyellow_flip || sprite_exists(centered))
    draw_self()
else
{
    draw_set_alpha(1)
    var xscale = abs(image_xscale)
    var yscale = abs(image_yscale)
    var w = floor((sprite_width / image_xscale))
    var h = floor((sprite_height / image_yscale))
    if (!surface_exists(surface))
        surface = surface_create(w, h)
    surface_set_target(surface)
    draw_clear_alpha(c_black, 0)
    var drawx = (-((sprite_get_width(target.sprite_index) * xscale)))
    var drawy = (-((sprite_get_height(target.sprite_index) * yscale)))
    with (target)
    {
        draw_sprite_ext(sprite_index, 0, drawx, drawy, xscale, yscale, 0, c_white, 1)
        if (sprite_index == spr_heart)
        {
            gpu_set_fog(true, c_white, 0, 0)
            draw_sprite_ext(sprite_index, 0, drawx, drawy, xscale, yscale, 0, c_white, 0.3)
            gpu_set_fog(false, c_white, 0, 0)
        }
    }
    gpu_set_blendmode_ext(bm_dest_color, bm_src_alpha)
    draw_sprite(sprite_index, 0, 0, 0)
    gpu_set_blendmode(bm_normal)
    surface_reset_target()
    draw_surface_ext(surface, x, y, image_xscale, image_yscale, image_angle, image_blend, (image_alpha * target.image_alpha))
}
