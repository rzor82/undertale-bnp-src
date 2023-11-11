if (global.flag[107] == 2)
{
    for (i = 0; i < 8; i += 1)
    {
        if (global.item[i] == 27)
            scr_itemshift(i, 0)
    }
    global.flag[107] = 0
}
caster_free(dogsong)
