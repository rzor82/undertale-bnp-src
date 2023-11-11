if (d == 0)
    scr_depth()
if (fun == false)
{
    script_execute(scr_npcdir, 2)
    scr_npc_anim()
}
if (room == room_fire_lab1 && global.plot > 126)
{
    if (!instance_exists(obj_dialoguer))
    {
        sprite_index = spr_alphys_u
        fun = true
    }
}
