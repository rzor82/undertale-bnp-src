script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = irandom(115)
if (global.debug == true)
    altchance = 1
if (altchance == 1)
    sprite_index = spr_tsunderplane_shiny
image_speed = 0
part1 = obj_tsunderplane_body
mypart1 = instance_create(x, y, part1)
mypart1.parent = id
alarm[9] = 10
hurtanim = 0
hurtsound = snd_hurtsmall
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
graze = 0
ht = 200
wd = 200
betray = 0
