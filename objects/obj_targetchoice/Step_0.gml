if (hspeed > 0)
{
    if (x > (obj_target.x + obj_target.sprite_width))
        xxx = 1
}
if (hspeed < 0)
{
    if (x < obj_target.x)
        xxx = 1
}
if (xxx == 1)
{
    global.damage = 0
    global.hurtanim[global.mytarget] = 5
    global.dontdospecial = 1
    instance_destroy()
    return;
}
mons = global.monsterinstance[global.mytarget]
ht = 100
wd = 100
if instance_exists(mons)
    mons.trgtest = id
with (mons)
{
    trgtest.ht = ht
    trgtest.wd = wd
}
if (image_speed == 0)
{
    myx = (x + (sprite_width / 2))
    myperfectx = (obj_target.x + (obj_target.sprite_width / 2))
    autohit = (((myx + hspeed) > myperfectx && hspeed > 0) || ((myx + hspeed) < myperfectx && hspeed < 0))
    autohit |= (instance_exists(obj_sansb) || instance_exists(obj_mewmew_boss) || instance_exists(obj_maddummy) || instance_exists(obj_sosorry))
    autohit &= global.autotarget == 1
    if (((!lock) && control_check_pressed(0)) || autohit)
    {
        mons = global.monsterinstance[global.mytarget]
        hspeed = 0
        script_execute(scr_attackcalc)
        global.damage = damage
        global.damage += random(2)
        if (global.damage > 0)
            global.en += round((damage / 5))
        bonusfactor = abs((myx - myperfectx))
        if (bonusfactor == 0)
            bonusfactor = 1
        global.stretch = ((obj_target.sprite_width - bonusfactor) / obj_target.sprite_width)
        if (bonusfactor <= 12)
            global.damage = round((global.damage * 2.2))
        if (bonusfactor > 12)
            global.damage = round(((global.damage * global.stretch) * 2))
        with (mons)
            takedamage = global.damage
        instance_create(((mons.x + (wd / 2)) - 5), (mons.y - 5), obj_slice)
        global.hurtanim[global.mytarget] = 1
        image_speed = 0.4
    }
}
if (global.myfight != 1 && (!lock))
    instance_destroy()
