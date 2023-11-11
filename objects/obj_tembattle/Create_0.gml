script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = irandom(100)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_tembattle_shiny
image_speed = 0
part1 = obj_tembody
mypart1 = instance_create(x, y, part1)
hurtanim = 0
hurtsound = snd_ehurt1
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
dunk = 0
ht = 100
wd = 100
ranaway = 0
