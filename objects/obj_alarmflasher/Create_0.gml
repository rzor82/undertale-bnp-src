siner_inc = 0.05
max_alpha = 0.35
active = false
siner = 0
alpha = 0
murder = scr_murderlv() < 12
var theroomname = room_get_name(room)
if (string_pos("core", theroomname) != 0 && string_pos("precore", theroomname) == 0)
{
    siner_inc = 0.15
    max_alpha = 0.35
    if murder
    {
        instance_destroy()
        return;
    }
}
