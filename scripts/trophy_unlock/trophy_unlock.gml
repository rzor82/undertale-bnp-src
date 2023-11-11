var trophy_id = argument0
if is_undefined(ds_map_find_value(global.trophy_state, trophy_id))
    return;
if (os_type == os_psvita && ds_map_find_value(global.trophy_state, trophy_id))
    return;
var sysid = ds_map_find_value(global.trophy_sysid, trophy_id)
if (os_type == os_ps4 || os_type == os_psvita)
    psn_unlock_trophy((obj_time.j_ch - 1), real(sysid))
ds_map_set(global.trophy_state, trophy_id, 1)
