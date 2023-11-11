if (shakeamt > 0)
{
    if instance_exists(obj_troubleboy_portabie)
        image_index = 1
    else
        image_index = 3
}
else if instance_exists(obj_troubleboy_portabie)
{
    if (engage_sadness == 1)
        image_index = 4
    else
        image_index = 0
    yoff = abs((sin((siner * 0.075)) * 4))
}
else
{
    image_index = 2
    yoff = 0
    if (y > (ystart + 50))
    {
        y = (ystart + 51)
        ygrav = 0
    }
    else
    {
        if (ygrav < 5)
            ygrav += 0.25
        y += ygrav
    }
}
if (instance_exists(obj_tb_sunglasses_follow) && obj_troubleboy_hitch.progress < 3 && instance_exists(obj_troubleboy_portabie))
{
    if (gly < 0)
        gly++
    else
        gly = 0
    if (gla < 1)
        gla += 0.1
    else
        gla = 1
}
else if (gla > 0)
    gla -= 0.2
else
{
    gla = 0
    gly = -100
}
draw_sprite_ext(spr_tb_hitch_horn1, 0, ((x - (sin((siner * 0.075)) * 7.5)) + shake), ((y - 115) + yoff), 2, 2, (sin((siner * 0.1)) * 10), c_white, 1)
draw_sprite_ext(spr_tb_hitch_horn2, 0, (((x + 17) - (sin((siner * 0.075)) * 7.5)) + shake), ((y - 105) + yoff), 2, 2, (-((sin(((siner + 5) * 0.1)) * 7))), c_white, 1)
draw_sprite_ext(spr_tb_hitch_head, image_index, (((x - 5) - (sin((siner * 0.075)) * 2.5)) + shake), ((y - 50) + yoff), 2, 2, (sin((siner * 0.075)) * 5), c_white, 1)
draw_sprite_ext(spr_tb_hitch_head_glasses, 0, (((x - 5) - (sin((siner * 0.075)) * 2.5)) + shake), (((y - 50) + yoff) + gly), 2, 2, (sin((siner * 0.075)) * 5), c_white, gla)
if (paused == false)
    siner++
