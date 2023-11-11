if create
{
    var scale = 2
    var sprite = spr_mirrorb
    var w = (sprite_get_width(sprite) * scale)
    var h = (sprite_get_height(sprite) * scale)
    var spawnx = floor(((room_width - w) / 2))
    var spawny = floor(((room_height - h) / 2))
    var sprite_surface = surface_create(w, h)
    var mask_surface = surface_create(w, h)
    var num = array_length_1d(sides)
    var prevx = [0, 0]
    var prevy = 0
    var i = 0
    draw_sprite_ext(sprite, 0, spawnx, spawny, scale, scale, 0, c_white, 1)
    while (i <= num && num > 0)
    {
        surface_set_target(mask_surface)
        draw_clear_alpha(c_lime, 1)
        gpu_set_blendmode(bm_subtract)
        draw_set_color(c_lime)
        if (i == num)
            draw_triangle(prevx[1], h, prevx[0], h, prevx[0], prevy, 0)
        else
        {
            var starty = (starts[i] * scale)
            var stopy = (stops[i] * scale)
            var startx = (sides[i] ? w : 0)
            var stopx = (sides[i] ? 0 : w)
            if (i == 0)
                draw_rectangle(0, 0, w, starty, false)
            else
                draw_triangle(prevx[1], starty, prevx[0], starty, prevx[0], prevy, 0)
            draw_triangle(startx, starty, stopx, starty, stopx, stopy, 0)
        }
        gpu_set_blendmode(bm_normal)
        surface_reset_target()
        surface_set_target(sprite_surface)
        draw_clear_alpha(c_lime, 1)
        draw_sprite_ext(sprite, 0, 0, 0, scale, scale, 0, c_white, 1)
        draw_surface(mask_surface, 0, 0)
        surface_reset_target()
        with (instance_create(spawnx, spawny, obj_mirror_death_fragment))
        {
            sprite_index = sprite_create_from_surface(sprite_surface, 0, 0, w, h, true, false, 0, 0)
            scr_add_temp_sprite(sprite_index)
            vspeed = (random_range(6, 8) * lerp(-1, 1, (i / num)))
            hspeed = random_range(-3, 3)
        }
        prevx = [startx, stopx]
        prevy = starty
        i++
    }
    surface_free(sprite_surface)
    surface_free(mask_surface)
    create = 0
}
