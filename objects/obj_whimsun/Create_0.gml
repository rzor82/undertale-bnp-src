script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = irandom(75)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_whimsun_shiny
damaged = 0
mybodypart = instance_create(x, y, obj_whimsun_body)
hurtanim = 0
hurtsound = snd_damage
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
mercymod = 99
ht = 100
wd = 100
image_alpha = 0
