var _match_secret = argument[0]
var _is_instance = argument[1]
with (global.__rousr_dissonance)
{
    Is_dirty = 1
    discord_set_match_secret(_match_secret, _is_instance)
}
