image_index = 0
if (obj_heart.specialscene == 0)
{
    if (global.bmenucoord[0] == 2)
    {
        if (global.myfight == 0)
        {
            if (global.mnfight == 0)
                image_index = 1
        }
        if (global.bmenuno == 0)
        {
            obj_heart.x = (x + 10)
            obj_heart.y = (y + 14)
        }
    }
}
if (global.item[0] == 0)
    image_blend = c_gray
else
    image_blend = c_white
