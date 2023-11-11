var len = array_length_1d(global.tempsprite)
for (var i = 0; i < len; i++)
{
    if (global.tempspriteowner[i] != global && (!instance_exists(global.tempspriteowner[i])))
    {
        show_debug_message((((((("Deleting temp sprite " + sprite_get_name(global.tempsprite[i])) + " as owning instance (") + global.tempspriteownername[i]) + ", ID ") + string(global.tempspriteowner[i])) + ") no longer exists"))
        if sprite_exists(global.tempsprite[i])
            sprite_delete(global.tempsprite[i])
        else
            show_debug_message("Sprite didn't exist anyway (duplicate entry or manually destroyed)")
        global.tempspriteownername[i] = ""
        global.tempspriteowner[i] = -1
        global.tempsprite[i] = -1
    }
}
