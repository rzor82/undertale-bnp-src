script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
image_speed = 0
part1 = obj_pyropebody
mypart1 = instance_create((x + 8), (y + 108), part1)
altchance = irandom(115)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
{
    sprite_index = spr_pyropehurt_shiny
    mypart1.altchance = 7
}
alarm[9] = 8
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 20
sha = 0
shb = 0
flex = 0
encourage = 0
criticize = 0
hug = 0
heat = 0
ht = sprite_height
wd = sprite_width
