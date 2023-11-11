scr_monstersetup()
altchance = irandom(125)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
    sprite_index = spr_astigmatismhurt_shiny
image_speed = 0
part1 = obj_astigmatism_body
mypart1 = instance_create((x + 6), (y + 10), part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_hurtgirl
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 10
sha = 0
shb = 0
turnt = 0
pickon = choose(0, 1)
impress = 0
ht = 100
wd = 100
