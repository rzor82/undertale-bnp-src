if (!(variable_instance_exists(id, "shadow")))
    shadow[0] = -4
draw_self()
var drained = 0
var amt = 0
with (obj_mirrorb)
{
    amt = lerp(0.25, 1, (shieldhp / shieldmaxhp))
    drained = shieldhp > 0
}
if drained
{
    var xx = (x + (sprite_width / 2))
    var yy = (y + (sprite_height / 2))
    var size = 3
    draw_set_color(c_white)
    if (array_length_1d(shadow) <= image_index || (!sprite_exists(shadow[image_index])))
        shadow[image_index] = scr_create_shadow_ext(spr_heart_transparent, image_index, (floor(image_index) == 1 ? 0x7F7F7F : c_white))
    draw_sprite_ext(shadow[image_index], 0, x, y, image_xscale, image_yscale, image_angle, image_blend, (amt * image_alpha))
    draw_set_alpha((amt * image_alpha))
    draw_rectangle((xx - size), (yy - size), ((xx + size) - 1), ((yy + size) - 1), false)
}
draw_set_alpha(1)
