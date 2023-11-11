if (falling == 0)
{
    if (bonk == 1)
    {
        caster_free(slidesnd)
        hspeed = 0
        vspeed = 0
        bonk = 0
    }
    else if (alarm[2] < 1)
    {
        caster_free(slidesnd)
        slidesnd = caster_play(snd_snow_slide, 0.9, 0.6)
        xxx = ((other.bbox_left + other.bbox_right) / 2)
        yyy = ((other.bbox_top + other.bbox_bottom) / 2)
        direction = point_direction(x, y, xxx, yyy)
        speed = 4
        speed += ((1 / size) + 0.1)
        hspeed = (-hspeed)
        vspeed = (-vspeed)
        shrinko = 30
        alarm[2] = 15
    }
    t = 1
}
timeincrease = 1
