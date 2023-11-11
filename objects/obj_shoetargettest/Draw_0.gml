draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha)
with (obj_targetparent)
    lock = other.lock
if (fade == 1)
{
    image_alpha -= 0.08
    image_xscale -= 0.06
}
if (image_xscale < 0.08)
    instance_destroy()
if (instance_number(obj_targetparent) == 0 && hit == 0)
{
    hit = 1
    if (myscore == 0)
    {
        global.damage = 0
        global.hurtanim[global.mytarget] = 5
        global.dontdospecial = 1
        fade = 1
        return;
    }
    if (myscore > 0)
    {
        mons = global.monsterinstance[global.mytarget]
        script_execute(scr_attackcalc)
        damage *= ((myscore / 160) * (4 / num))
        damage = round(damage)
        global.damage = damage
        global.damage += round(random(2))
        mons.takedamage = global.damage
        if (global.damage > 0)
            global.en += ceil((damage / 2))
        global.stretch = 2
        ht = 100
        wd = 100
        mons.trgtest = id
        critter = 0
        if (myscore > (400 * (num / 4)))
            critter = 1
        with (mons)
        {
            trgtest.ht = ht
            trgtest.wd = wd
        }
        if (global.weapon == 25)
        {
            shot = instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_strongpunch)
            global.damagetimer = 10
        }
        if (global.weapon == 49)
        {
            shot = instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_gunshot_stab)
            global.damagetimer = 20
        }
        if (global.weapon == 47)
        {
            shot = instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_frypan_impact)
            if (myscore == 990 && instance_exists(obj_asgoreb))
            {
                with (obj_speedrun_tracker)
                    quads += 1
            }
            global.damagetimer = 20
        }
        if (global.weapon == 45)
        {
            instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_notebook_attackanim)
            global.damagetimer = 24
        }
        if (scr_get_current_party() == 1)
        {
            shot = instance_create((mons.x + (wd / 2)), (mons.y + (ht / 2)), obj_frypan_impact)
            global.damagetimer = 24
        }
        if (critter == 1)
        {
            with (shot)
                event_user(5)
        }
        global.hurtanim[global.mytarget] = 1
        fade = 1
    }
}
