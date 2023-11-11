if (fun == false)
{
    if (speed == 0)
    {
        if (room == room_fire_core_freebattle)
        {
            sprite_index = spr_knightknight_npc
            image_speed = 0.08
        }
        if (room == room_fire_precore)
            sprite_index = spr_madjick_npc
        if (room == room_fire_core_warrior)
        {
            if (global.flag[421] == 1)
                sprite_index = spr_finalfroggit_npc
            if (global.flag[421] == 2)
                sprite_index = spr_madjick_npc
            if (global.flag[421] == 3)
                sprite_index = spr_astigmatism_npc
            if (room == room_fire_core_roadblock)
                sprite_index = spr_finalfroggit_npc
        }
    }
    if (hspeed > 0)
        sprite_index = spr_darkman_r
    if (hspeed < 0)
        sprite_index = spr_darkman_l
    if (vspeed != 0)
    {
        sprite_index = spr_darkman_d
        if (room == room_fire_core_warrior)
        {
            if (global.flag[421] == 1)
                sprite_index = spr_finalfroggit_npc
            if (global.flag[421] == 2)
                sprite_index = spr_madjick_npc
            if (global.flag[421] == 3)
                sprite_index = spr_astigmatism_npc
        }
        if (room == room_fire_core3 || room == room_fire_precore)
            sprite_index = spr_madjick_npc
        if (room == room_fire_core_roadblock)
            sprite_index = spr_finalfroggit_npc
    }
}
if (speed > 0 && fun == false)
    image_speed = 0.25
if (mov == 1)
{
    vspeed = -2
    mov = 2
}
if (mov == 2)
{
    if (y < (__view_get(1, 0) - 50))
        instance_destroy()
}
if (room == room_icecave1)
    sprite_index = spr_npc_glyde
