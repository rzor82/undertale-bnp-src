if (powered == 1)
    siner += 1
else
    siner = 0
if murder
    image_blend = c_red
else
    image_blend = c_white
if (image_xscale >= 0)
{
    for (i = 0; i < image_xscale; i += 1)
        draw_sprite_ext(spr_core_wallstrip_m, (siner / 6), (x + (i * 20)), y, 1, 1, 0, image_blend, 1)
}
if instance_exists(obj_darktotem_anim)
    image_speed = obj_darktotem_anim.image_speed
else if instance_exists(obj_core_glowtotem)
    image_speed = obj_core_glowtotem.image_speed
