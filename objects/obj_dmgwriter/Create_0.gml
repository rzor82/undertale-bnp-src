target = global.mytarget
stretchwidth = global.monsterinstance[target].wd
stretchfactor = (stretchwidth / global.monstermaxhp[target])
apparenthp = global.monsterhp[target]
actualhp = global.monsterhp[target]
maxhp = global.monstermaxhp[target]
negative = 0
special = false
dmg = global.damage
alarm[0] = 1
i = 1
if (dmg != 0)
{
    vspeed = -4
    gravity = 0.5
    gravity_direction = 270
}
drawbar = 1
green = 4845488
red = 4209120
zeronum = 1
if (global.dontdospecial == 1 || global.flag[271])
    zeronum = 0
