script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = irandom(125)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_wizardhurt_shiny
image_speed = 0
part1 = obj_wizardbody
mypart1 = instance_create((x + 2), (y + 46), part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_hurtlaugh
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
confuse = 0
clear = 0
stare1 = 0
stare1a = 0
stare2 = 0
stare2a = 0
ht = sprite_height
wd = sprite_width
