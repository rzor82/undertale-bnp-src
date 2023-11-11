onscreen = 0
if (x > (__view_get(0, view_current) - argument0) && x < ((__view_get(0, view_current) + __view_get(2, view_current)) + argument0))
{
    if (y < ((__view_get(3, view_current) + __view_get(1, view_current)) + argument1) && y > (__view_get(1, view_current) - argument1))
        onscreen = 1
}
