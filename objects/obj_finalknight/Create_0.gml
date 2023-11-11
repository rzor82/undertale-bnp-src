script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = irandom(125)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_knighthurt_shiny
image_speed = 0
part1 = obj_finalknight_body
mypart1 = instance_create((x + 60), y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_hurtbig
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 25
sha = 0
shb = 0
flex = 0
encourage = 0
criticize = 0
hug = 0
sleepy = 0
asleep = 0
talk = 0
ht = sprite_height
wd = sprite_width
