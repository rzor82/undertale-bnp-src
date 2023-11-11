if (hurtanim == 1)
    siner += 0.8
else
    siner += 1
if (pause == 1)
{
    siner += 0.5
    if (other.altchance == 3)
        face = spr_vulkinface5_shiny
    else
        face = spr_vulkinface5
    image_speed = 2
    if instance_exists(obj_vulkin)
        x = parent.x
}
if (pause == 2)
    siner = 0
if instance_exists(obj_vulkin)
{
    if (other.altchance == 3)
    {
        sprite_index = spr_vulkinbody_shiny
        draw_sprite_ext(spr_vulkinfeetback_shiny, 0, ((x + 2) + (cos((siner / 6)) * 2)), ((y + 102) + (sin((siner / 6)) * 2)), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_vulkinlava_shiny, (siner / 8), (x + 42), (y + 10), 2, 2, 0, c_white, 1)
        draw_sprite_ext(face, (siner / 15), (((x + 26) + 16) + (sin((siner / 12)) * 7)), (y + 52), (2 - (abs(sin((siner / 12))) * 0.2)), 2, 0, c_white, 1)
        draw_sprite_ext(spr_vulkinfeetfront_shiny, 0, ((x + 2) + (sin((siner / 6)) * 2)), ((y + 102) + (cos((siner / 6)) * 2)), 2, 2, 0, c_white, 1)
    }
    else
    {
        draw_sprite_ext(spr_vulkinfeetback, 0, ((x + 2) + (cos((siner / 6)) * 2)), ((y + 102) + (sin((siner / 6)) * 2)), 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_vulkinlava, (siner / 8), (x + 42), (y + 10), 2, 2, 0, c_white, 1)
        draw_sprite_ext(face, (siner / 15), (((x + 26) + 16) + (sin((siner / 12)) * 7)), (y + 52), (2 - (abs(sin((siner / 12))) * 0.2)), 2, 0, c_white, 1)
        draw_sprite_ext(spr_vulkinfeetfront, 0, ((x + 2) + (sin((siner / 6)) * 2)), ((y + 102) + (cos((siner / 6)) * 2)), 2, 2, 0, c_white, 1)
    }
}
