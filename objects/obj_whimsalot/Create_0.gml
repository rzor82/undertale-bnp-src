scr_monstersetup()
altchance = irandom(125)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_whimsalothurt_shiny
image_speed = 0
part1 = obj_whimsalot_body
mypart1 = instance_create((x + 21), y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_nosound
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 10
sha = 0
shb = 0
greentime = 0
impress = 0
ht = sprite_height
wd = sprite_width
