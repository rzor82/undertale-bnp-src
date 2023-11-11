tick++
time_until_next--
switch type
{
    case 0:
        if (time_until_next == 0)
        {
            var _n = 55
            repeat irandom_range(1, 3)
            {
                instance_create((x + irandom_range(2, _n)), (y + irandom_range(25, 70)), obj_p_steam)
                time_until_next = irandom_range(4, 10)
            }
        }
        break
    case 1:
        if ((tick % 20) == 0)
        {
            with (instance_create((x + 10), (y + 10), obj_p_steam))
            {
                life = 2.5
                vel[1] = -1.5
                image_alpha = 0
            }
        }
        break
}

