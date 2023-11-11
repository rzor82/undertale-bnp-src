if (string_lower(global.charname) == "nohit")
{
    caster_free(-3)
    snd_play(snd_damage)
    instance_deactivate_all(false)
    instance_create(0, 0, obj_expander)
    instance_create(0, 0, obj_gameshake)
    return;
}
if (global.inbattle == 1)
    dmgtkr = 0
else
    dmgtkr = 0
spared = 1
if (dmgtkr == 1)
{
    if (argument0 != 3)
    {
        check = 1
        if (argument0 == 1)
        {
            check = 0
            if (abs((obj_heart.xprevious - obj_heart.x)) > 0.01 || abs((obj_heart.yprevious - obj_heart.y)) > 0.01)
                check = 1
        }
        if (argument0 == 2)
        {
            check = 0
            if (abs((obj_heart.xprevious - obj_heart.x)) < 0.01 && abs((obj_heart.yprevious - obj_heart.y)) < 0.01)
                check = 1
        }
    }
    puredmg = dmg
    if instance_exists(obj_heart)
        obj_heart.dmgtkr = 2
    if (global.invc < 1 && check == 1)
    {
        if (dmgamt < argument1)
            dmgamt = argument1
        if (argument2 > 0 && dmgamt > argument2)
            dmgamt = argument2
        if (argument3 > 0)
            dmgamt = argument3
        if (dmgamt < 1)
            dmgamt = 1
        snd_play(snd_hurt1)
        global.hshake = 2
        global.shakespeed = 2
        global.vshake = 2
        instance_create(0, 0, obj_shaker)
        global.invc = global.inv
        if (argument4 > 0)
            global.invc = ((argument4 / 20) * global.inv)
        if (global.battlegroup == 22)
        {
            if (global.hp < 1)
                obj_torielboss.sprite_index = spr_torielboss_mouthcover
        }
    }
    dmg = puredmg
}
if (dmgtkr == 0)
{
    if (argument0 != 3)
    {
        check = 1
        if (argument0 == 1)
        {
            check = 0
            if (abs((obj_heart.xprevious - obj_heart.x)) > 0.01 || abs((obj_heart.yprevious - obj_heart.y)) > 0.01)
                check = 1
        }
        if (argument0 == 2)
        {
            check = 0
            if (abs((obj_heart.xprevious - obj_heart.x)) < 0.01 && abs((obj_heart.yprevious - obj_heart.y)) < 0.01)
                check = 1
        }
    }
    if instance_exists(obj_heart)
        obj_heart.dmgtkr = 1
    puredmg = dmg
    if (global.hp > 20)
        dmg += 1
    if (global.hp >= 30)
        dmg += 1
    if (global.hp >= 40)
        dmg += 1
    if (global.hp >= 50)
        dmg += 1
    if (global.hp >= 60)
        dmg += 1
    if (global.hp >= 70)
        dmg += 1
    if (global.hp >= 80)
        dmg += 1
    if (global.hp >= 90)
        dmg += 1
    if (global.invc < 1 && check == 1)
    {
        dmgamt = round((dmg - ((global.df + global.adef) / 5)))
        if (dmgamt < argument1)
            dmgamt = argument1
        if (argument2 > 0 && dmgamt > argument2)
            dmgamt = argument2
        if (argument3 > 0)
            dmgamt = argument3
        if (dmgamt < 1)
            dmgamt = 1
        var target = ((variable_instance_exists(id, "damager") && instance_exists(damager)) ? damager : obj_heart)
        global.hp -= dmgamt
        if (global.hp < 0)
            global.hp = 0
        snd_play(snd_hurt1)
        global.hshake = 2
        global.shakespeed = 2
        global.vshake = 2
        instance_create(0, 0, obj_shaker)
        if (global.battlegroup == 22)
        {
            if (global.hp < 1)
                obj_torielboss.sprite_index = spr_torielboss_mouthcover
        }
        if (instance_exists(obj_mirrorb) && (!instance_exists(obj_mirrorroulette_attack)) && (!obj_mirrorb.murder))
        {
            repeat irandom(2)
            {
                with (instance_create(target.x, target.y, obj_mirrorshield_particle))
                {
                    hspeed /= 2
                    vspeed /= 2
                }
            }
        }
        global.invc = global.inv
        if (argument4 > 0)
            global.invc = ((argument4 / 20) * global.inv)
    }
    dmg = puredmg
}
