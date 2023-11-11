if (!dimension_override)
    height = (obj_uborder.y - yy)
if surface_exists(surface)
    surface_resize(surface, width, height)
else
    surface = surface_create(width, height)
surface_set_target(surface)
draw_clear_alpha(c_black, 0)
surface_reset_target()
with (obj_battlecontroller)
    drawrect = 1
