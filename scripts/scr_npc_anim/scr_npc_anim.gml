tt = 0
if (myinteract == 3)
{
    if instance_exists(OBJ_WRITER)
    {
        if (sprite_index != spr_fukufire && sprite_index != spr_hotdog_harpy && sprite_index != spr_jerry_npc && sprite_index != spr_prunsel && sprite_index != spr_nervous && sprite_index != spr_nervous_happy && sprite_index != spr_fukufire_alt && sprite_index != spr_npc_glyde)
        {
            image_speed = 0.2
            if (OBJ_WRITER.halt != false)
                tt = 1
        }
        if (sprite_index == spr_npc_nubert)
        {
            image_speed = 0.3
            if (OBJ_WRITER.halt != false)
                tt = 1
        }
    }
    else
        tt = 1
}
if (tt == 1)
{
    image_speed = 0
    image_index = 0
}
