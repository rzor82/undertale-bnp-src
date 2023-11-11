if (!variable_global_exists("__rousr_dissonance"))
    global.__rousr_dissonance = noone
instance_create_depth(0, 0, 0, EDiscordHandlers)
instance_create_depth(0, 0, 0, EDissonanceJoinReply)
var _application_id = string(argument[0])
var _steam_id = (argument_count > 1 ? argument[1] : "")
if (!instance_exists(global.__rousr_dissonance))
{
    with (instance_create_depth(0, 0, 0, rousrDissonance))
        global.__rousr_dissonance = id
}
with (global.__rousr_dissonance)
{
    Is_dirty = 0
    Is_ready = 0
    Last_error_code = undefined
    Last_error_msg = undefined
    Handlers = array_create(EDiscordHandlers.Num)
    for (var i = 0; i < EDiscordHandlers.Num; i++)
        array_set(Handlers, i, [331, undefined])
    Avatars = []
    Num_avatars = 0
    if (!Discord_initialized)
        Discord_initialized = discord_init(_application_id, _steam_id) == 1
    if (!Discord_initialized)
    {
        show_debug_message("Discord RPC not initalized!")
        return 0;
    }
}
return 1;
