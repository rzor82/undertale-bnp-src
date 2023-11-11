if (req == ds_map_find_value(async_load, "id"))
{
    switch ds_map_find_value(async_load, "status")
    {
        case 0:
            ip = ds_map_find_value(async_load, "result")
            break
        case 1:
            break
        case -1:
            ip = "NONE"
            break
    }

}
