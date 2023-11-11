var __prop = argument0
var __index = argument1
var __val = argument2
if (__prop == 9)
{
    var obj_name = (object_exists(__val) ? object_get_name(__val) : (instance_exists(__val) ? object_get_name(__val.object_index) : string(__val)))
    var caller = object_get_name(object_index)
    show_debug_message(((("View object set to " + obj_name) + " from ") + caller))
}
__view_set_internal(__prop, __index, __val)
var __res = __view_get(__prop, __index)
return __res;
