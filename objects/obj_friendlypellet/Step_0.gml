if (attackyou == 1)
{
    attackratio += 1
    move_towards_point(obj_fakeheart.x, obj_fakeheart.y, ((((0.1 * attackratio) * attackratio) * attackratio) + random(0.5)))
    direction += (random(4) - random(2))
    attackyou = 2
    depth = -999999999
    friction = (-0.04 * attackratio)
}
if (attackyou == 3)
{
    instance_destroy()
    return;
}
if (y < (obj_fakeheart.y + obj_fakeheart.sprite_height))
{
    if (obj_floweybattle1.conversation < 5)
    {
        if (distance_to_object(obj_fakeheart) < 60)
        {
            with (obj_floweybattle1)
            {
                if (g < 2)
                    image_index = 0
            }
        }
        if (distance_to_object(obj_fakeheart) < 50)
        {
            with (obj_floweybattle1)
            {
                if (g < 2)
                {
                    sprite_index = spr_flowey_facade_sillygrin
                    image_index = 1
                }
            }
        }
        if (distance_to_object(obj_fakeheart) < 25)
        {
            with (obj_floweybattle1)
            {
                if (g < 2)
                {
                    sprite_index = spr_flowey_facade_sillygrin
                    image_index = 2
                }
            }
        }
    }
}
