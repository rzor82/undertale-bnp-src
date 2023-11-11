var trophy_id = argument0
var state = ds_map_find_value(global.trophy_state, trophy_id)
if (!is_undefined(state))
    return state;
else
    return 0;
