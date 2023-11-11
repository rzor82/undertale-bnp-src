while (instance_number(obj_snowflake) < limit)
    instance_create((prev_x + irandom(w)), (prev_y + irandom(h)), obj_snowflake)
active = true
buffer = 0
