if (global.debug == true)
{
    if keyboard_check_pressed(ord("Y"))
        wind--
    if keyboard_check_pressed(ord("U"))
        wind++
}
gen[0] = max(1, (limit / 200))
for (var i = 1; i < 4; i++)
    gen[i] = 0
if (!lock)
{
    x = __view_get(0, 0)
    y = __view_get(1, 0)
}
if (y < prev_y)
    gen[0] = (10 + ((prev_y - y) * max(20, (limit / 10))))
if (y > prev_y)
{
    gen[0] = 0
    gen[1] = (10 + ((y - prev_y) * max(20, (limit / 10))))
}
if (x < prev_x || wind > 0)
{
    gen[2] = ((prev_x - x) * max(1, (limit / 200)))
    if (wind > 0)
        gen[2] += ((limit / 40) * wind)
}
if (x > prev_x || wind < 0)
{
    gen[3] = ((x - prev_x) * max(1, (limit / 200)))
    if (wind < 0)
        gen[3] += ((limit / 40) * (-wind))
}
did_gen = 1
while (active && did_gen && instance_number(obj_snowflake) < limit)
{
    did_gen = 0
    if gen[0]
    {
        flake = instance_create(((x + irandom(w)) + random_range((-tolerance), tolerance)), (y - random(tolerance)), obj_snowflake)
        flake.wind_offset = wind
        gen[0] -= 1
        did_gen = 1
    }
    if gen[1]
    {
        effective_tolerance = tolerance
        if obj_time.run
            effective_tolerance *= 2
        flake = instance_create(((x + irandom(w)) + random_range((-tolerance), tolerance)), (((prev_y + h) - irandom((y - prev_y))) + random_range(tolerance, effective_tolerance)), obj_snowflake)
        flake.wind_offset = wind
        flake.tol = effective_tolerance
        gen[1] -= 1
        did_gen = 1
    }
    if gen[2]
    {
        flake = instance_create(((x + irandom((prev_x - x))) - random(tolerance)), ((y + irandom(h)) + random_range((-tolerance), tolerance)), obj_snowflake)
        flake.wind_offset = wind
        gen[2] -= 1
        did_gen = 1
    }
    if gen[3]
    {
        flake = instance_create(((x + __view_get(2, 0)) + random(tolerance)), ((y + irandom(h)) + random_range((-tolerance), tolerance)), obj_snowflake)
        flake.wind_offset = wind
        gen[3] -= 1
        did_gen = 1
    }
}
with (obj_snowflake)
{
    image_blend = other.snow_col
    if (other.slowfall && vspeed > 1)
    {
        vspeed /= 3
        siner_inc /= 2
        x_variance = 0.5
    }
}
if (shove && abs(wind) > 10)
{
    pushing = 1
    with (obj_mainchara)
        x += (other.wind / 10)
}
else
    pushing = 0
prev_x = __view_get(0, 0)
prev_y = __view_get(1, 0)
buffer = 0
