script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = irandom(75)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_vegetoid_shiny
hurtanim = 0
hurtsound = snd_damage_c
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
mercymod = 7
image_speed = 0.1
ht = 108
wd = 100
eat = 0
ate = 0
scalevalue = -0.01
sety = y
