if (global.weapon == 3 || global.weapon == 13 || global.weapon == 14 || global.weapon == 51 || global.weapon == 52)
    return instance_create((global.idealborder[0] + 6), (global.idealborder[2] + 6), obj_target);
else if (global.weapon == 25 || global.weapon == 49 || global.weapon == 47 || global.weapon == 45)
    return instance_create((global.idealborder[0] + 6), (global.idealborder[2] + 6), obj_shoetargettest);
else
{
    global.myfight = 0
    global.mnfight = 1
    return -4;
}
