if (shakeamt > 0)
    image_index = 1
else if instance_exists(obj_troubleboy_hitch)
{
    if (engage_uwu == 1)
        image_index = 2
    else if (obj_troubleboy_portabie.progress >= 3)
        image_index = 4
    else
        image_index = 0
    shiveramt = ((abs(sin((siner * 0.075))) * 0.55) * (siner % 2))
}
else
{
    image_index = 3
    shiveramt = 0
}
draw_sprite_ext(spr_tb_portabie_wheel2, 0, (x + shake), y, (2 + (abs(sin((siner * 0.075))) * 0.2)), (2 + ((-(abs(sin((siner * 0.075))))) * 0.25)), 0, c_white, 1)
draw_sprite_ext(spr_tb_portabie_body, image_index, ((x + shiveramt) + shake), ((y - 10) + abs((sin((siner * 0.075)) * 4))), 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_tb_portabie_wheel1, 0, (x + shake), y, (2 + (abs(sin((siner * 0.075))) * 0.2)), (2 + ((-(abs(sin((siner * 0.075))))) * 0.25)), 0, c_white, 1)
if (paused == false)
    siner++
if (global.debug == true)
{
    draw_set_colour(c_red)
    draw_text((x - 45), (y - 35), string(obj_troubleboy_portabie.progress))
    draw_set_colour(c_white)
}
