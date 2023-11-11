if (y > (global.idealborder[3] - 10))
{
    vspeed = bounce
    caster_play(snd_bounce, random_range(0.75, 1), mypitch)
}
if (mydir == -1)
{
    if (x < (-sprite_width))
        instance_destroy()
}
else if (x > (room_width + sprite_width))
    instance_destroy()
