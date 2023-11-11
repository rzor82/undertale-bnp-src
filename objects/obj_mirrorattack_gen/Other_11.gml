if slashside
{
    if (x < hitx)
        sliced[1] = hitx
    else
        sliced[0] = (hitx - 5)
}
else if (y < hity)
    sliced[3] = hity
else
    sliced[2] = (hity - 5)
var stop = 0
if (abs((sliced[1] - sliced[0])) < 21)
{
    sliced[0] = (x - 13)
    sliced[1] = (x + 8)
    stop = 1
}
if (abs((sliced[3] - sliced[2])) < 21)
{
    sliced[2] = (y - 13)
    sliced[3] = (y + 8)
    stop = 1
}
if stop
    times = 0
