if (argument_count < 0)
    return -1;
var lib = "rousrDissonance.dll"
if (!variable_global_exists("__defined_functions"))
    global.__defined_functions = ds_list_create()
var key = (lib + "::RunCallbacks")
if (ds_list_find_index(global.__defined_functions, key) == -1)
{
    show_debug_message((("Defining " + key) + "()"))
    external_define(lib, "RunCallbacks", 1, 0, 0)
    ds_list_add(global.__defined_functions, key)
}
var res = external_call("RunCallbacks")
return res;
