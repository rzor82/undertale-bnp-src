if (argument_count < 4)
    return -1;
var lib = "rousrDissonance.dll"
if (!variable_global_exists("__defined_functions"))
    global.__defined_functions = ds_list_create()
var key = (lib + "::SetTimeStamps")
if (ds_list_find_index(global.__defined_functions, key) == -1)
{
    show_debug_message((("Defining " + key) + "(ty_real, ty_real, ty_real, ty_real)"))
    external_define(lib, "SetTimeStamps", 1, 0, 4, 0, 0, 0, 0)
    ds_list_add(global.__defined_functions, key)
}
var res = external_call("SetTimeStamps", argument[0], argument[1], argument[2], argument[3])
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
show_debug_message(((("discord_set_timestamps(" + args) + "): ") + string(res)))
return res;
