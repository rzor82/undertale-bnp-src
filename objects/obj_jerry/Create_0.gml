script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
hurtanim = 0
normalgfx = 228
hurtgfx = 229
hurtsound = snd_damage
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
mercymod = 65
image_speed = 0.25
ditch = 0
thisturn = 0
thisturn2 = 0
mycommand = 0
ht = 110
wd = 200
altchance = irandom(85)
if (global.debug == true)
    altchance = 7
if (altchance == 7)
{
    sprite_index = spr_jerry_shiny
    normalgfx = 3594
    hurtgfx = 3593
}
