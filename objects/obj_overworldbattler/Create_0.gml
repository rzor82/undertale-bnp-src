global.flag[15] = 0
global.flag[16] = 0
global.battlegroup = 0
shake_speed = 1
claptime = -1
vshake = 5
hshake = 5
frame = 0
dmg = 6
if (global.invc > 0)
    instance_destroy()
else
{
    scr_damagestandard_x()
    if instance_exists(obj_soulvision)
    {
        with (obj_soulvision)
            raising = 1
    }
    if (global.flag[370] == 2 && global.flag[372] == 0 && global.hp == 0)
    {
        global.hp = 1
        global.invc = 60
    }
}
