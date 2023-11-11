if instance_exists(obj_generalsiner)
{
    surface_set_target(obj_generalsiner.surface)
    prevx = x
    prevy = y
    x -= obj_generalsiner.xx
    y -= obj_generalsiner.yy
    draw_self()
    surface_reset_target()
    x = prevx
    y = prevy
}
draw_self()
