if (speartype == 0 && (!instance_exists(obj_dogeB)))
{
    whtspear = instance_create(xstart, ystart, blt_whitespear)
    whtspear.dmg = dmg
    whtspear.rr = rr
}
else if (speartype == 0)
{
    if gench
    {
        whtspear = instance_create(xstart, ystart, blt_whitespear)
        whtspear.dmg = dmg
        whtspear.rr = rr
        whtspear.depth = (other.depth - 1)
    }
    else
    {
        if trych
        {
            gen = instance_create((global.idealborder[1] - 50), ystart, blt_orangespear)
            blt_orangespear.dmg = dmg
        }
        else
        {
            gen = instance_create((global.idealborder[1] - 50), ystart, blt_bluespear)
            blt_bluespear.dmg = dmg
        }
        global.turntimer = 110
    }
}
