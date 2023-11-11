if instance_exists(target)
{
    if (target.sprite_index == spr_heartyellow_flip)
    {
        image_yscale = (-abs(image_yscale))
        image_blend = c_orange
    }
    if (target.object_index == obj_hearthalf)
    {
        image_blend = target.image_blend
        if (!unshield)
            image_alpha = 0.5
        forcedraw = 1
    }
    if (target.object_index == obj_cutsceneheart)
    {
        if (!sprite_exists(centered))
        {
            centered = sprite_duplicate(sprite_index)
            sprite_set_offset(centered, (sprite_width / 2), (sprite_height / 2))
            scr_add_temp_sprite(centered)
            sprite_index = centered
        }
        image_blend = 0x9898FF
        depth = (target.depth - 1)
        x = target.x
        y = target.y
    }
    else
    {
        depth = target.depth
        x = (target.x - ((sprite_width - target.sprite_width) / 2))
        y = (target.y - ((sprite_height - target.sprite_height) / 2))
    }
    image_angle = target.image_angle
    visible = target.visible
}
else
    instance_destroy()
if unshield
{
    if (!sounded)
    {
        with (object_index)
        {
            image_alpha = 1
            sounded = 1
        }
        snd_play(snd_crack)
    }
    image_blend = c_red
    image_alpha -= 0.05
    if (image_alpha <= 0)
        instance_destroy()
}
