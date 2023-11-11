if (global.debug && global.draw_debug)
{
    draw_set_colour(c_red)
    draw_text(300, 300, sprite_get_name(sprite_index))
    draw_text(300, 340, string(image_index))
    draw_set_colour(c_lime)
    draw_text(400, 300, sprite_get_name(obj_mainchara.sprite_index))
    draw_text(400, 340, string(obj_mainchara.image_index))
    draw_set_colour(c_white)
}
