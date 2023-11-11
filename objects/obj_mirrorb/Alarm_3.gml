if (hit == 0)
{
    if shielded
    {
        global.mytarget = 3
        global.monsterinstance[3] = id
        global.monstermaxhp[3] = shieldmaxhp
        global.monsterhp[3] = shieldhp
        shieldanimspeed = 0.02
        flashalpha = 1
        flashphase = 2
        shake = 0
    }
    else if ((global.monsterhp[myself] - takedamage) <= 0 && (!died))
    {
        with (obj_mirrorbg)
        {
            new_sat = -1
            bg_blend = 16777215
            event_user(1)
        }
        with (obj_battlecontroller)
            mainloop = 1
        global.flag[365] = ((murder && actcon >= 4) ? 3 : 2)
        caster_free(global.batmusicintro)
        caster_free(global.batmusic)
        died = 1
        con = 2
    }
    dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    if shielded
    {
        shieldhp -= takedamage
        if (shieldhp > 0)
            snd_play(snd_swallow)
        else
        {
            snd_play(snd_glassbreak)
            noshield = 1
        }
    }
    else
    {
        global.monsterhp[myself] -= takedamage
        snd_play(snd_damage)
    }
    global.mytarget = myself
    alarm[8] = 11
    hit = 1
}
if (sha == 0)
    sha = x
if ((!shielded) && shake)
    x = (sha + shudder)
if (shudder < 0)
    shudder = (-((shudder + 1)))
else
    shudder = (-shudder)
if (shudder == 0)
{
    sha = 0
    shake = 1
    global.hurtanim[myself] = 2
    return;
}
alarm[3] = (died ? 3 : 2)
