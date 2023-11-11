if (x > (__view_get(0, 0) - 100) && x < ((__view_get(0, 0) + __view_get(2, 0)) + 100))
{
    if (y > (__view_get(1, 0) - 100) && y < ((__view_get(1, 0) + __view_get(3, 0)) + 100))
        instance_create(((x + random(60)) - 20), (y - 15), obj_glowparticle_1)
}
alarm[0] = 10
