if (altchance == 7)
{
    if (sprite_index != spr_vegetoidhurt_shiny)
    {
        dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y + 80), obj_dmgwriter)
        global.damage = takedamage
        with (dmgwriter)
            dmg = global.damage
        sprite_index = spr_vegetoidhurt_shiny
        snd_play(hurtsound)
    }
}
else if (sprite_index != spr_vegetoidhurt)
{
    dmgwriter = instance_create(((x + (sprite_width / 2)) - 48), (y + 80), obj_dmgwriter)
    global.damage = takedamage
    with (dmgwriter)
        dmg = global.damage
    sprite_index = spr_vegetoidhurt
    snd_play(hurtsound)
}
x += shudder
if (shudder < 0)
    shudder = (-((shudder + 2)))
else
    shudder = (-shudder)
if (shudder == 0)
{
    global.hurtanim[myself] = 2
    return;
}
alarm[3] = 2
