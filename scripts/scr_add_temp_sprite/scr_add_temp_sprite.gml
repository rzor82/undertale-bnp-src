var len = array_length_1d(global.tempsprite)
var owner = (is_real(argument1) ? argument1 : id)
var name = "<unknown>"
if instance_exists(owner)
    name = object_get_name(owner.object_index)
else if object_exists(owner)
    name = object_get_name(owner)
else if (owner == global)
    name = (((("global sprite, created by instance " + string(id)) + " (") + object_get_name(object_index)) + ")")
var index = len
for (var i = 0; i < len; i++)
{
    if (!sprite_exists(global.tempsprite[i]))
    {
        index = i
        i = len
    }
}
show_debug_message((((((((("Added temp sprite " + string(argument0)) + " at index ") + string(index)) + ", owner [") + name) + " ") + string(owner)) + "]"))
global.tempspriteownername[index] = name
global.tempspriteowner[index] = owner
global.tempsprite[index] = argument0
return index;
