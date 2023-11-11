siner_inc = 0.05
max_alpha = 0.35
active = true
siner = 0
alpha = 0
if (room == room_fire_hotelfront_2)
{
    if (scr_murderlv() >= 12)
    {
        if (scr_murderlv() < 16)
        {
            caster_free(global.currentsong)
            global.currentsong = snd_hotel_geno_outside
            caster_loop(global.currentsong, 1, 1)
        }
        else
            active = false
        with (obj_spagnot)
            image_blend = c_gray
    }
    else
    {
        instance_destroy()
        active = false
        return;
    }
}
else
{
    instance_destroy()
    active = false
    return;
}
