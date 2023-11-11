mercy = ((((global.monsterhp[myself] - global.at) - global.wstrength) + global.monsterdef[myself]) - mercymod)
if (object_index == obj_migosp)
{
    with (object_index)
    {
        if (mercymod > 0)
            mercy = -999
    }
}
if (object_index == obj_chilldrake && spec)
{
    var realmercy = mercy
    with (object_index)
    {
        if nospare
            mercy = 999999
        else
        {
            spec = 0
            scr_mercystandard()
            spec = 1
        }
        if (mercy >= 0)
            realmercy = max(max(0, realmercy), mercy)
    }
    mercy = realmercy
}
