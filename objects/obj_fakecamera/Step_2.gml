if active
{
    var diffx = (obj_mainchara.x - obj_mainchara.xprevious)
    var diffy = (obj_mainchara.y - obj_mainchara.yprevious)
    var overflowx = 0
    var overflowy = 0
    if (diffx < 0)
        overflowx = bufferx <= 0
    else if (diffy > 0)
        overflowx = bufferx >= limitx
    if (diffy < 0)
        overflowy = buffery <= 0
    else if (diffy > 0)
        overflowy = buffery >= limity
    var prev_overx = overrunx
    var prev_overy = overruny
    if overflowx
        overrunx += diffx
    else
    {
        obj_mainchara.x = obj_mainchara.xprevious
        bufferx += diffx
    }
    if overflowy
        overruny += diffy
    else
    {
        obj_mainchara.y = obj_mainchara.yprevious
        buffery += diffy
    }
    if (prev_overx != 0 && sign(prev_overx) != sign(overrunx))
    {
        bufferx += overrunx
        overrunx = 0
    }
    if (prev_overy != 0 && sign(prev_overy) != sign(overruny))
    {
        buffery += overruny
        overruny = 0
    }
    __view_set(0, 0, xx)
    __view_set(1, 0, yy)
}
