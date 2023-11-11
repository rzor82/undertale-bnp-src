script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
image_speed = 0
mypart1 = instance_create(x, y, obj_froghead)
mypart2 = instance_create(x, y, obj_froglegs)
altchance = irandom(75)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
{
    sprite_index = spr_froggit_shiny
    mypart1.sprite_index = spr_froghead_shiny
    mypart2.sprite_index = spr_froglegs_shiny
}
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 3
global.flag[30] = 1
ht = 100
wd = 100
