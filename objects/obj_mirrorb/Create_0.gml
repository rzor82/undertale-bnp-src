scr_monstersetup()
global.flag[365] = 0
global.solobattle = 1
global.canusegrazing = 0
with (obj_battlebg)
    instance_destroy()
shake = 1
instance_create(0, 0, obj_smoothborder)
murder = (scr_murderlv() >= 8 && global.flag[27] == 0)
if murder
    mercymod = -99999999
else
    mercymod = -1
eliminate = 0
deflect = 0
prevdef = global.monsterdef[myself]
originaldef = global.monsterdef[myself]
forcecmd = 0
unshield = 0
shielded = 0
ticknoise = 0
flashalpha = 1
flashphase = 0
shieldphase = 0
shieldhp = 0
shieldmaxhp = 300
shieldanimspeed = 0.05
specialcolor = merge_color(c_navy, c_white, 0.8)
image_xscale = 2
image_yscale = 2
image_speed = 0
image_index = 0
hurtanim = 0
hpthreshold = 1
hurtsound = snd_hurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
actcon = 0
timer = 0
died = 0
con = 0
global.heard = 0
takedamage = 0
mycommand = -1
ht = 100
wd = 100
sha = 0
hit = 0
track = -1
runcon = 0
noturn = 0
noshield = 0
didshift = 0
didshield = 0
looppoint = -1
x = ((room_width - sprite_width) / 2)
y += 10
siner = 0
reset = false
travel = 0
beginx = x
beginy = y
startx = x
starty = y
destx = x
desty = y
a = 0
scr_mercystandard()
with (instance_create(0, 0, obj_mirrorbg))
{
    if (caster_is_playing(global.batmusicintro) || caster_is_playing(global.batmusic))
    {
        new_blend = 0
        old_blend = 0
    }
    else
    {
        other.didshift = 2
        new_blend = 16777215
        old_blend = 16777215
    }
    depth = 1000
}
