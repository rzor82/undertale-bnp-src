if instance_exists(obj_gyftrot)
{
    if (obj_gyftrot.altchance == 7)
        sprite_index = spr_gyftrothead_shiny
}
alarm[2] = (random(60) + 40)
image_xscale = 2
image_yscale = 2
alarm[1] = 45
instance_create((x + 50), (y + 96), obj_gyftrotmouth)
image_speed = 0
