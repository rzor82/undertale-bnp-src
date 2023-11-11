var rot = 0
var offsetx = 0
var dont = 0
var right = 0
var offsety = 0
if ((argument0 % 2) == 0)
    right = 1
switch global.facing
{
    case 0:
        if right
            offsetx = 7
        else
        {
            rot = 270
            offsetx = 6
        }
        break
    case 1:
        if right
        {
            offsetx = 7
            offsety = 3
        }
        else
        {
            offsetx = 7
            rot = 90
            offsety = 2
        }
        break
    case 2:
        if right
        {
            offsetx = 10
            rot = 180
        }
        else
        {
            offsetx = 3
            rot = 90
        }
        break
    case 3:
        if right
        {
            offsetx = 5
            offsety = 2
            rot = 180
        }
        else
        {
            offsetx = 5
            rot = 270
            offsety = 3
        }
        break
    default:
        global.msc = 0
        global.msg[0] = "* Facing was set to value&  outside of the range./%%"
        instance_create(0, 0, obj_dialoguer)
        dont = 1
        break
}

if place_meeting(x, y, obj_steppingsoundstop)
    dont = 1
if (!instance_exists(obj_snowstepmanager))
{
    manager = instance_create(0, 0, obj_snowstepmanager)
    manager.i = 0
    manager.j = 0
    manager.alarm[0] = 120
}
if (dont == 0)
{
    manager.managerarr[manager.j] = instance_create(((obj_mainchara.x + 3) + offsetx), ((obj_mainchara.y + 24) + offsety), obj_snowstep)
    manager.managerarr[manager.j].rot = rot
    manager.j++
}
