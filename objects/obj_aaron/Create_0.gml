altchance = irandom(100)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_uniaaron_shiny
script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
image_speed = 0
part1 = obj_aaronbody
mypart1 = instance_create(x, y, part1)
hurtanim = 0
hurtsound = snd_hurtbuzz
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 5
sha = 0
shb = 0
flex = 0
alphaup = 0
ht = 200
wd = 100
