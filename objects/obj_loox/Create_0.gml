script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = irandom(75)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_loox_shiny
hurtanim = 0
hurtsound = snd_damage
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
mercymod = 4
image_speed = 0
alarm[7] = 30
ht = 120
wd = 100
