if (instance_number(object_index) > 1)
{
    show_debug_message(((("Destroying excess " + object_get_name(object_index)) + " instance ") + string(id)))
    show_debug_message(("Instances remaining: " + string((instance_number(object_index) - 1))))
    show_debug_message(("Stack: " + string(debug_get_callstack())))
    instance_destroy(id, false)
    return;
}
else
{
    show_debug_message(((("Created " + object_get_name(object_index)) + " instance ") + string(id)))
    show_debug_message(("Stack: " + string(debug_get_callstack())))
}
cosmos = 0
active = true
border = 3.5
color = 16777215
suppress = 0
alpha = 0
