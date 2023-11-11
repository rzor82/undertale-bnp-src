script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
image_speed = 0
part1 = obj_vulkinbody
mypart1 = instance_create(x, (y + 2), part1)
altchance = irandom(115)
var theroomname = room_get_name(global.currentroom)
mypart1.alarm[0] = 10
if (global.debug == true)
    altchance = 3
if (altchance == 3)
{
    sprite_index = spr_vulkinhurt_shiny
    mypart1.altchance = 3
    mypart1.face = 3312
}
mypart1.parent = id
alarm[9] = 8
hurtanim = 0
hurtsound = snd_vulkinhurt
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -40
sha = 0
shb = 0
flex = 0
encourage = 0
criticize = 0
hug = 0
specialmessage = 0
ht = sprite_height
wd = sprite_width
global.flag[411] += 1
