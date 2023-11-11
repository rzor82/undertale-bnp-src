if (y > goal)
    event_user(1)
if (dont == 0)
{
    if (x < (__view_get(0, 0) - 40))
        x += 361
    if (x > (__view_get(0, 0) + 360))
        x -= 361
}
