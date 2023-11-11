draw_sprite_ext(sprite_index, image_index, (x + 24), (y + 24), 2, 2, rot, c_white, 1)
scr_setfont(fnt_main)
draw_set_color(c_white)
y_offset = 10
if instance_exists(obj_weather)
{
    with (obj_weather)
    {
        if (req == -4)
            event_user(0)
    }
    draw_text((x + 60), (y + 25), string_hash_to_newline(string_upper(obj_weather.forecast)))
    y_offset = -5
}
draw_text((x + 60), (y + y_offset), string_hash_to_newline(day))
rot += 0.34
