if (fall == 0)
{
    otherpl = instance_create((x + 46), (y + 56), obj_planeexhaust)
    if (room != room_end_castroll)
    {
        otherblend = merge_color(c_red, c_white, (global.monsterhp[parent.myself] / global.monsterhp[parent.myself]))
        otherpl.image_blend = otherblend
        if (global.monsterhp[parent.myself] < 30)
            alarm[0] = 4
        else if (global.monsterhp[parent.myself] < 60)
            alarm[0] = 6
        else
            alarm[0] = 10
    }
    else
        alarm[0] = 10
}
