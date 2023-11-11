if (myinteract == 1)
{
    global.interact = 1
    alarm[0] = 1
    myinteract = 2
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == 0 && global.interact != 3)
    {
        global.interact = 0
        myinteract = 0
    }
}
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
