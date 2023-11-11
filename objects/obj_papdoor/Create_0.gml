myinteract = 0
read = 0
image_xscale = 1
image_yscale = 1
scr_depth()
dooract = 0
touched = false
if (room == room_ruins18)
{
    if (global.flag[116] < 2)
        sprite_index = spr_ruins_gate_locked
    else
        sprite_index = spr_ruins_gate_unlocked
    if (global.flag[116] == 3)
    {
        dooract = 1
        sprite_index = spr_ruins_gate_open
    }
}
else if (global.flag[88] > 2)
    dooract = 1
