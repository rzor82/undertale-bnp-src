script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
image_speed = 0
hurtanim = 0
hurtsound = snd_damage
chance = irandom(75)
if (global.debug == true)
    chance = 69
if (chance == 69)
    sprite_index = spr_moldsmal_blue_shiny
else
    sprite_index = choose(200, 3239, 3242)
if (global.monsteratk[myself] > 6)
{
    chance = irandom(100)
    if (global.debug == true)
        chance = 69
    if (chance == 69)
        sprite_index = spr_moldsmal_blue2_shiny
    else
        sprite_index = choose(3237, 3238, 3241)
}
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
mercymod = 99
scalevalue = -0.01
xscalevalue = -0.001
ht = 82
wd = 100
setx = x
