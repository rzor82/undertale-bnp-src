if (argument_count < 1)
    return -1;
var lib = "rousrDissonance.dll"
if (!variable_global_exists("__defined_functions"))
    global.__defined_functions = ds_list_create()
var key = (lib + "::SetJoinSecret")
if (ds_list_find_index(global.__defined_functions, key) == -1)
{
    show_debug_message((("Defining " + key) + "(ty_string)"))
    external_define(lib, "SetJoinSecret", 1, 0, 1, 1)
    ds_list_add(global.__defined_functions, key)
}
var res = external_call("SetJoinSecret", argument[0])
var args = ""
if (argument_count > 0)
{
    for (i = 0; i < argument_count; i++)
    {
        if (typeof(argument[i]) == "string")
            args += (("'" + argument[i]) + "'")
        else
            args += string(argument[i])
        if (i != (argument_count - 1))
            args += ", "
    }
}
show_debug_message(((("discord_set_join_secret(" + args) + "): ") + string(res)))
return res;
