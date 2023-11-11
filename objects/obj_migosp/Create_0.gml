script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_migosp_shiny
hurtanim = 0
hurtsound = snd_damage
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
mercymod = -100
alarm[7] = (20 + random(40))
image_speed = 0
ht = 100
wd = 100
mercy = 0
