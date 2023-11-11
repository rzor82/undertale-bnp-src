if (global.interact == 0 && uncan == 0 && (!instance_exists(obj_itemswapper)))
{
    with (obj_dropped_item)
    {
        if (dropped_room != room)
            instance_deactivate_object(id)
    }
    var interactedobject = noone
    var obj_facing = 0
    switch global.facing
    {
        case 1:
            interactedobject = collision_rectangle((x + (sprite_width / 2)), (y + (sprite_height / 2)), ((x + sprite_width) + 15), (y + sprite_height), obj_interactable, 0, 1)
            obj_facing = 3
            break
        case 3:
            interactedobject = collision_rectangle((x + (sprite_width / 2)), ((y + 3) + (sprite_height / 2)), (x - 15), ((y + sprite_height) + 3), obj_interactable, 0, 1)
            obj_facing = 1
            break
        case 0:
            interactedobject = collision_rectangle((x + 4), (y + 20), ((x + sprite_width) - 4), ((y + sprite_height) + 15), obj_interactable, 0, 1)
            obj_facing = 2
            break
        case 2:
            interactedobject = collision_rectangle((x + 4), ((y + sprite_height) - 5), ((x + sprite_width) - 4), (y + 8), obj_interactable, 0, 1)
            obj_facing = 0
            break
    }

    if (interactedobject != noone)
    {
        with (interactedobject)
        {
            show_debug_message(("Interacting with " + object_get_name(object_index)))
            facing = obj_facing
            scr_interact()
        }
    }
    instance_activate_object(obj_dropped_item)
}
