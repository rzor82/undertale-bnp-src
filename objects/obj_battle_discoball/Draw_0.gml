draw_set_alpha(1)
if (!surface_exists(surface))
    surface = surface_create(320, 240)
surface_set_target(surface)
draw_clear_alpha(c_white, 0)
with (obj_discoball)
    event_perform(ev_draw, 0)
surface_reset_target()
draw_surface_part_ext(surface, 0, 0, 320, split, 0, 0, 2, 2, 16777215, 1)
if strobe
{
    var other_height = (240 - split)
    var offset = 50
    for (var i = 0; i < 3; i++)
        draw_surface_part_ext(surface, 0, split, 320, other_height, 0, ((room_height - (other_height * 2)) + offset), 2, 2, 16777215, 1)
}
