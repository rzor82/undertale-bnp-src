if (global.osflavor <= 2)
    return file_exists(argument0);
else
    return (!(is_undefined(ds_map_find_value(global.savedata, argument0))));
