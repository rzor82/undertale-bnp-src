if (global.phasing == 0 && global.interact == 0)
{
    if (room >= room_fire_core1 && room <= room_fire_core_final)
        sprite_index = spr_magicglass_core
    ar = 3
    if (image_alpha < 1)
        image_alpha += 0.2
}
