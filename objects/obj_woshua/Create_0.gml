script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
altchance = irandom(100)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_woshua_shiny
image_speed = 0
part1 = obj_woshbody
mypart1 = instance_create(x, y, part1)
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 5
sha = 0
shb = 0
dirtyjoke = 0
alphaup = 0
dub = 0
slime = 0
flex = 0
clean = 0
ht = 100
wd = 100
