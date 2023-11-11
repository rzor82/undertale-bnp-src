draw_self()
if shielded
{
    if unshield
    {
        if (timer > 0)
            timer -= shieldanimspeed
        else
        {
            shielded = 0
            unshield = 0
            shieldhp = 0
        }
    }
    else
    {
        var percent = max(0, (shieldhp / shieldmaxhp))
        if (timer < percent)
            timer += shieldanimspeed
        else if (timer > percent)
            timer -= shieldanimspeed
        if (abs((timer - percent)) < shieldanimspeed)
            timer = percent
        if (shieldhp <= 0 && timer == 0)
        {
            shielded = 0
            shieldhp = 0
        }
    }
    var t = ((sprite_height / 2) - (timer * (sprite_height / 2)))
    gpu_set_fog(true, specialcolor, 0, 0)
    var yoffset = (-((sprite_get_yoffset(sprite_index) * image_yscale)))
    var xoffset = (-((sprite_get_xoffset(sprite_index) * image_xscale)))
    draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), ((x - 2) + xoffset), (((y - 2) + (t * 2)) + yoffset), image_xscale, image_yscale, c_blue, (image_alpha * 0.8))
    draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), ((x + 2) + xoffset), (((y - 2) + (t * 2)) + yoffset), image_xscale, image_yscale, c_blue, (image_alpha * 0.4))
    draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), ((x - 2) + xoffset), (((y + 2) + (t * 2)) + yoffset), image_xscale, image_yscale, c_blue, (image_alpha * 0.4))
    draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), ((x + 2) + xoffset), (((y + 2) + (t * 2)) + yoffset), image_xscale, image_yscale, c_blue, (image_alpha * 0.8))
    gpu_set_fog(false, c_white, 0, 0)
    draw_set_blend_mode(bm_add)
    draw_sprite_part_ext(sprite_index, image_index, 0, t, sprite_width, (sprite_height - t), (x + xoffset), ((y + (t * 2)) + yoffset), image_xscale, image_yscale, specialcolor, (image_alpha * 0.4))
    draw_set_blend_mode(bm_normal)
}
else
    timer = 0
if (flashphase != 0)
{
    if (flashphase == 1)
    {
        if (flashalpha < 1)
            flashalpha += 0.1
        else
            flashphase = 2
    }
    else if (flashphase == 2)
    {
        if (flashalpha > 0)
            flashalpha -= 0.1
        else
            flashphase = 0
    }
    gpu_set_fog(true, c_white, 0, 0)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, (image_alpha * flashalpha))
    gpu_set_fog(false, c_white, 0, 0)
}
draw_set_alpha(1)
