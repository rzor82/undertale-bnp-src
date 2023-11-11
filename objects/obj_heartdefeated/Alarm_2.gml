if (instance_exists(obj_gameover_anim) && obj_gameover_anim.toriel)
    caster_loop(gameoversong, 1, 0.5)
else if (global.flag[272] == 1)
{
    sansed = 1
    caster_loop(gameoversong, 0.9, 1.25)
}
else
    caster_loop(gameoversong, 1, 1)
instance_create(0, 0, obj_gameoverbg)
alarm[3] = 80
