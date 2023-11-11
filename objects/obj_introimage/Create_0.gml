skip = false
act = 0
alarm[2] = 4
intromusic = caster_load("music/story.ogg")
image_speed = 0
visible = false
if (global.screen_border_id != 0)
{
    bdrawer = instance_create(0, 0, obj_borderdrawer)
    with (bdrawer)
    {
        alpha = 1
        border = 2
        active = true
        color = 16777215
    }
}
