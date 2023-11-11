if (canquit == 1)
{
    if (quit > 20)
    {
        if (global.osflavor <= 2)
            game_end()
    }
}
if (global.discord_rpc && (!global.paused))
{
    if (!global.paused)
    {
        var status = ""
        var details = ""
        var face = ((scr_murderlv() >= 2 || global.flag[221] == 1) ? "geno_face" : "face")
        if (global.debug == true)
        {
            status = "Dev Testing"
            details = "In Someplace, Somewhere"
            face = "face"
        }
        else if instance_exists(obj_gameshake)
        {
            var chars = "abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-=_+[]{},.<>/?;:'\"\\|"
            var len = string_length(chars)
            details = ""
            status = ""
            for (i = 0; i < 16; i++)
            {
                details += string_char_at(chars, floor(random(len)))
                status += string_char_at(chars, floor(random(len)))
            }
        }
        else if (instance_exists(obj_truechara) || sprite_index == spr_strike)
        {
            status = "The Void"
            face = "chara_face"
        }
        else if (room == room_battle)
        {
            status = ("In Battle: " + (((((("LV " + string(global.lv)) + ", ") + string(global.hp)) + "/") + string(global.maxhp)) + " HP"))
            var monster_counts = ds_map_create()
            var count = -1
            var name = ""
            var prev = 0
            for (i = 0; i < 4; i++)
            {
                if global.monster[i]
                {
                    if (instance_exists(obj_troubleboy_hitch) && instance_exists(obj_troubleboy_portabie))
                        name = "The Troubleboys"
                    else
                        name = global.monstername[i]
                    prev = ds_map_find_value(monster_counts, name)
                    if is_undefined(prev)
                        prev = 0
                    ds_map_set(monster_counts, name, (prev + 1))
                }
            }
            var key = ds_map_find_first(monster_counts)
            while (!is_undefined(key))
            {
                count = ds_map_find_value(monster_counts, key)
                if (instance_exists(obj_troubleboy_hitch) && instance_exists(obj_troubleboy_portabie))
                    count = 1
                details += key
                if (key == "Undyne" && instance_exists(obj_undyneboss) && obj_undyneboss.berserk)
                    details += " (Kindergarden)"
                if (count > 1)
                    details += (" x" + string(count))
                key = ds_map_find_next(monster_counts, key)
                if (!is_undefined(key))
                    details += ", "
            }
            ds_map_destroy(monster_counts)
        }
        else if (global.flag[200] > 0 && global.flag[(global.flag[200] + 19)] == 1)
        {
            details = "But nobody came."
            status = "But nobody came."
        }
        else
        {
            details = scr_roomname(room)
            if (details == " ")
                details = room_get_name(room)
            else if (room == room_end_castroll && variable_global_exists("cast_type"))
            {
                details += " ("
                switch global.cast_type
                {
                    case 0:
                        details += "Ruins"
                        break
                    case 1:
                        details += "Snowdin"
                        break
                    case 2:
                        details += "Waterfall"
                        break
                    case 3:
                        details += "Hotland"
                        break
                    default:
                        details += "???"
                        break
                }

                details += ")"
            }
            else if (room == room_creditsdodger && instance_exists(obj_creditsloader))
            {
                var num = obj_creditsloader.hitno
                if (obj_creditsloader.memory == -2 && (!instance_exists(obj_creditbullet)) && num <= 0)
                    status = "No names touched!"
                else
                {
                    var subject = (num == 1 ? "name" : "names")
                    status = (((string(num) + " ") + subject) + " touched")
                }
            }
            else if (string_pos(" - ", details) > 0)
            {
                var pos = string_pos(" - ", details)
                var region = string_copy(details, 1, pos)
                pos += 3
                name = string_copy(details, pos, ((string_length(details) - pos) + 1))
                details = region
                status = name
            }
        }
        np_setpresence(status, details, "cover", face)
    }
    np_update()
}
if (--cleanup_timer < 0)
{
    scr_clean_temp_sprites()
    cleanup_timer = 300
}
