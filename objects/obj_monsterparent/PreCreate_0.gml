event_inherited()
is_ripoff = string_pos("obj_ripoff_", object_get_name(object_index)) == 1
if is_ripoff
    instance_create(0, 0, obj_expander)
gottem = 0
