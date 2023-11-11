show_debug_message(json_encode(async_load))
requesting = req != ds_map_find_value(async_load, "id")
if (!requesting)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        json = ds_map_find_value(async_load, "result")
        json = json_decode(hashes)
        if (json == -1)
        {
            show_debug_message("Failed to get hashes.")
            state = 2
        }
        else
        {
            hashes = ds_map_find_value(json, "default")
            if (ds_list_find_index(hashes, hash) == -1)
                state = 4
            else
                state = 1
            ds_list_destroy(hashes)
        }
    }
    else if (ds_map_find_value(async_load, "status") == -1 && alarm[0] < 1)
    {
        if (retries > 0)
        {
            state = 3
            alarm[0] = 450
            show_debug_message((("Retrying in " + string(round((alarm[0] / 30)))) + " seconds..."))
        }
        else
            state = 2
    }
    timer = 0
}
