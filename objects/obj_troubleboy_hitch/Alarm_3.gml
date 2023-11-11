if (mypart1.paused != true)
{
    dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    with (mypart1)
    {
        shakeamt = 8
        alarm[0] = 2
        paused = true
    }
    if instance_exists(obj_troubleboy_portabie_body)
    {
        with (obj_troubleboy_portabie_body)
            paused = true
    }
    snd_play(snd_damage)
    alarm[8] = 11
}
if (sha == 0)
    sha = x
x = (sha + shudder)
if (shudder < 0)
    shudder = (-((shudder + 1)))
else
    shudder = (-shudder)
if (shudder == 0)
{
    sha = 0
    global.hurtanim[myself] = 2
    return;
}
alarm[3] = 2
