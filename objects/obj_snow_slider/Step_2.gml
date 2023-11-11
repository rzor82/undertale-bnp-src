if (con != 0 && con != 4)
{
    if instance_exists(camfollow)
    {
        __view_set(0, 0, round(((camfollow.x - (__view_get(2, 0) / 2)) + 10)))
        __view_set(1, 0, round(((camfollow.y - (__view_get(3, 0) / 2)) + 10)))
    }
}
