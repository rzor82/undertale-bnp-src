if (type == 0)
{
    if (!surface_exists(surf))
        surf = surface_create(60, 80)
    if surface_exists(surf)
    {
        surface_set_target(surf)
        draw_clear_alpha(c_white, 0)
        draw_sprite_part(spr_steamy_effect, 0, ((tick / 4) % 120), 0, 60, 80, 0, 0)
        gpu_set_blendmode(bm_subtract)
        draw_sprite(spr_steamy_effect_mask, 0, 0, 0)
        gpu_set_blendmode(bm_normal)
        surface_reset_target()
        draw_set_alpha(0.3)
        gpu_set_blendmode(bm_add)
        draw_surface(surf, x, y)
        gpu_set_blendmode(bm_normal)
        draw_set_alpha(1)
    }
}
