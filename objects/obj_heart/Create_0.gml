if (global.flag[365] == 1)
{
    if (instance_exists(obj_battlecontroller) && ((!(variable_instance_exists(obj_battlecontroller.id, "shield"))) || obj_battlecontroller.shield))
    {
        with (instance_create(x, y, obj_heartshield))
            target = other.id
    }
}
global.sp = global.asp
movement = 0
jumpstage = 0
hgo = 0
vgo = 0
shot = 0
pink = 0
orange = 0
left = 0
up = 0
right = 0
down = 0
upleft = 0
upright = 0
downleft = 0
downright = 0
holdingz = 0
if control_check(0)
    holdingz = 1
global.bmenuno = 0
global.bmenucoord[0] = 0
global.bmenucoord[1] = 0
global.bmenucoord[2] = 0
global.bmenucoord[3] = 0
global.bmenucoord[4] = 0
global.bmenucoord[6] = 0
global.bmenucoord[7] = 0
global.bmenucoord[8] = 0
global.bmenucoord[9] = 0
global.bmenucoord[10] = 0
global.bmenucoord[51] = 0
global.hurtanim[0] = 0
global.hurtanim[1] = 0
global.hurtanim[2] = 0
global.hurtanim[3] = 0
global.myfight = 0
global.mnfight = 0
global.xpreward[3] = 0
global.goldreward[3] = 0
shadow[0] = -4
shadow[1] = -4
confuse = 0
charge = 0
maxcharge = 16
charging = 0
chargesound = 0
chargepitch = 0
chargesnd = -1
ignore_border = 0
slam_pain = 0
dmgtkr = 0
customcolor = 4209120
if (global.canusegrazing == 1)
    instance_create((x + 8), (y + 10), obj_grazebox)
specialscene = 0
