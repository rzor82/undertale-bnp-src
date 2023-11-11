script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
hurtanim = 0
normalgfx = 220
hurtgfx = 219
hurtsound = snd_damage
altchance = irandom(85)
if (global.debug == true)
    altchance = 7
ch = choose(0, 1, 2)
if (ch == 0)
{
    sprite_index = spr_icecap
    normalgfx = 220
    hurtgfx = 219
    lowgfw = 4052
}
else if (ch == 1)
{
    sprite_index = spr_icecap_green
    normalgfx = 3232
    hurtgfx = 3234
    lowgfw = 4053
}
else if (ch == 2)
{
    sprite_index = spr_icecap_red
    normalgfx = 3233
    hurtgfx = 3235
    lowgfw = 4054
}
if (altchance == 7)
{
    sprite_index = spr_icecap_shiny
    normalgfx = 3324
    hurtgfx = 3325
    lowgfw = 4055
}
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
mercymod = 10
image_speed = 0.1
cube = 0
ignore = 0
ht = 180
wd = 100
