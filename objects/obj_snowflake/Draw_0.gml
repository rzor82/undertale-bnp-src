if instance_exists(obj_snowgen)
{
    wind = obj_snowgen.wind
    if obj_snowgen.instawind
        wind_offset = wind
}
draw_self()
image_angle += ((vspeed * 3) * (1 + abs(wind_offset)))
x += ((sin(siner) * x_variance) + wind_offset)
siner += siner_inc
if (wind_offset < wind)
    wind_offset += 0.5
else if (wind_offset > wind)
    wind_offset -= 0.5
