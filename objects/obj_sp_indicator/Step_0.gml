if (active == true)
{
    if (ind_delay > 0)
        ind_delay--
    else
    {
        ind++
        image_index++
        if (ind == 6)
        {
            ind = 0
            active = false
            if (state == 0)
                state = 1
            else
                state = 0
        }
        ind_delay = 1
    }
}
else if (state == 0)
    image_index = 0
else
    image_index = 6
