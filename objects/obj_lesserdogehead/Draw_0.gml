if instance_exists(tailobj)
{
    var surface_draw = 0
    if (instance_exists(obj_lesserdoge) && surface_exists(obj_lesserdoge.surface))
    {
        surface_set_target(obj_lesserdoge.surface)
        draw_clear_alpha(c_black, 0)
        surface_draw = 1
        with (tailobj)
            draw_self()
    }
    image_speed = (tailobj.mercymod / 900)
    if (image_speed > 0.5)
        image_speed = 0.5
    x = tailobj.x
    y = (tailobj.y - (tailobj.mercymod / 4))
    if (tailobj.sprite_index == spr_lesserdoge)
    {
        draw_set_color(c_white)
        ossafe_fill_rectangle((x + 40), ((69 + y) - 1), (x + 85), (((69 + y) - 1) + (tailobj.mercymod / 4)))
        draw_set_color(0x352F56)
        ossafe_fill_rectangle((x + 42), ((69 + y) - 1), (x + 83), (((69 + y) - 1) + (tailobj.mercymod / 4)))
        draw_set_color(0x92CAEE)
        ossafe_fill_rectangle((x + 44), ((69 + y) - 1), (x + 81), (((69 + y) - 1) + (tailobj.mercymod / 4)))
        ossafe_fill_rectangle((x + 54), ((69 + y) - 1), (x + 76), (((88 + y) - 1) + (tailobj.mercymod / 4)))
        draw_sprite(sprite_index, image_index, x, (y - 1))
        if (tailobj.mercymod > 500)
        {
            draw_set_color(c_white)
            ossafe_fill_rectangle((x + 110), -1, (x + 155), floor(((-1 + ((tailobj.mercymod - 500) / 4)) - 26)))
            draw_set_color(0x352F56)
            ossafe_fill_rectangle((x + 112), -1, (x + 153), floor(((-1 + ((tailobj.mercymod - 500) / 4)) - 26)))
            draw_set_color(0x92CAEE)
            ossafe_fill_rectangle((x + 114), -1, (x + 151), floor(((-1 + ((tailobj.mercymod - 500) / 4)) - 26)))
            draw_sprite_ext(sprite_index, image_index, (x + 196), floor((((tailobj.mercymod - 500) / 4) + 40)), -1, -1, 0, c_white, 1)
        }
        thismercy = tailobj.mercymod
    }
    if surface_draw
    {
        surface_reset_target()
        draw_surface(obj_lesserdoge.surface, 0, 0)
    }
}
else
    instance_destroy()
