if (exist < 10)
{
    alarm[0] = 5
    if instance_exists(obj_wizard)
    {
        if (obj_wizard.altchance == 7)
        {
            sprink = instance_create((((offx + x) + 46) + random(18)), (((y - 10) + (som * 4)) - random(6)), obj_orbsprinkle)
            sprank = instance_create((((offx + x) - 66) + random(18)), ((y + (som * 4)) - random(6)), obj_orbsprinkle)
            sprink.sprite_index = spr_wizard_orbsprinkle_shiny1
            sprank.sprite_index = spr_wizard_orbsprinkle_shiny2
        }
    }
    else
    {
        instance_create((((offx + x) + 46) + random(18)), (((y - 10) + (som * 4)) - random(6)), obj_orbsprinkle)
        instance_create((((offx + x) - 66) + random(18)), ((y + (som * 4)) - random(6)), obj_orbsprinkle)
    }
}
if (exist >= 10)
{
    alarm[0] = 5
    if instance_exists(obj_wizard)
    {
        if (obj_wizard.altchance == 7)
        {
            if (parent.stare2 == 0)
            {
                sprink = instance_create((((offx + x) + 46) + random(18)), (((y - 10) + (som * 4)) - random(6)), obj_orbsprinkle)
                sprink.sprite_index = spr_wizard_orbsprinkle_shiny1
            }
            if (parent.stare1 == 0)
            {
                sprank = instance_create((((offx + x) - 66) + random(18)), ((y + (som * 4)) - random(6)), obj_orbsprinkle)
                sprank.sprite_index = spr_wizard_orbsprinkle_shiny2
            }
        }
    }
    else
    {
        if (parent.stare2 == 0)
            sprink = instance_create((((offx + x) + 46) + random(18)), (((y - 10) + (som * 4)) - random(6)), obj_orbsprinkle)
        if (parent.stare1 == 0)
            sprank = instance_create((((offx + x) - 66) + random(18)), ((y + (som * 4)) - random(6)), obj_orbsprinkle)
    }
}
