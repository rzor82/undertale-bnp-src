script_execute(scr_depth, 0, 0, 0, 0, 0)
if (fun == false)
{
    if (callspriteindex != spr_papyrus_coolfit_call)
    {
        if (instance_exists(obj_face_anything_new) && global.facechoice == 4)
            image_index = obj_face_anything_new.image_index
        else if (speed == 0 && path_speed == 0)
            image_index = 0
    }
}
if (dir == 1)
    scr_npcdir(1)
if (((!instance_exists(obj_undyne_friendc)) || room == room_water_dogroom) && fun == false)
    scr_npc_watch(0)
if (callsprite == 1)
{
    sprite_index = callspriteindex
    if (!instance_exists(obj_dialoguer))
        callsprite = 2
}
if (callsprite == 2)
{
    if (callspriteindex != 4012)
        sprite_index = spr_papyrus_d
    else
        sprite_index = spr_papyrus_coolfit_d
    callsprite = 0
}
