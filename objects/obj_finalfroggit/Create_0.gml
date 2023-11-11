scr_monstersetup()
image_speed = 0
part1 = obj_finalfroggit_body
mypart1 = instance_create(x, (y + 24), part1)
altchance = irandom(125)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
{
    sprite_index = spr_finalfroggithurt_shiny
    mypart1.sprite_index = spr_finalfroggit_shiny
    mypart1.altchance = 7
}
alarm[9] = 8
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 15
sha = 0
shb = 0
impress = 0
ht = 100
wd = 100
