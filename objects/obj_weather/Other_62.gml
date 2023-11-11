show_debug_message(json_encode(async_load))
requesting = req != ds_map_find_value(async_load, "id")
if (requesting == 0)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        forecast = ds_map_find_value(async_load, "result")
        has_data = 1
    }
    else if (has_data == 0 && alarm[0] < 1)
    {
        if (ds_map_find_value(async_load, "status") == -1)
        {
            alarm[0] = 450
            show_debug_message((("Retrying in " + string(round((alarm[0] / 30)))) + " seconds..."))
        }
        forecast = "Unknown"
    }
}
