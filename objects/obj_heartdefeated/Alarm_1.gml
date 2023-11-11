visible = false
if (instance_exists(obj_gameover_anim) && obj_gameover_anim.asgore)
{
    x += 2
    snd_play(snd_impact)
    gameoversong = caster_load("music/kingdescription.ogg")
    container = scr_marker(0, 0, spr_heartcontainer)
    container.x = (x - (container.sprite_width / 2))
    container.y = (y - (container.sprite_height / 2))
    container.image_xscale = 2
    container.image_yscale = 2
    container.image_speed = 0.1
    container.image_blend = c_red
}
else
{
    if (instance_exists(obj_gameover_anim) && obj_gameover_anim.toriel)
        gameoversong = caster_load("music/toriel.ogg")
    snd_play(snd_break2)
    instance_create((x - 2), y, obj_heartshard)
    instance_create(x, (y + 3), obj_heartshard)
    instance_create((x + 2), (y + 6), obj_heartshard)
    instance_create((x + 8), y, obj_heartshard)
    instance_create((x + 10), (y + 3), obj_heartshard)
    instance_create((x + 12), (y + 6), obj_heartshard)
}
alarm[2] = 50
if (sansed == 1)
    global.typer = 17
