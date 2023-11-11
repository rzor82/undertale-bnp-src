if unlock
{
    __view_set(0, 0, round(((obj_mainchara.x - (__view_get(2, 0) / 2)) + 10)))
    __view_set(1, 0, round(((threshold - (__view_get(2, 0) / 2)) + 10)))
    obj_mainchara.cutscene = true
    remy = threshold
    active = true
    unlock = 0
    con = 1
}
