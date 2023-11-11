if instance_exists(obj_switch)
{
    with (obj_switch)
    {
        switch image_index
        {
            case 1:
                image_index += (irandom(1) + 1)
                break
            case 2:
                image_index += choose(-1, 1)
                break
            case 3:
                image_index -= (irandom(1) + 1)
                break
            default:
                image_index = 1
        }

    }
}
