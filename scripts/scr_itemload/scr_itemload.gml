show_debug_message("Loading items...")
with (obj_dropped_item)
    instance_destroy()
for (i = 0; i < 100; i++)
    uniques[i] = 0
for (i = 0; i < array_length_1d(global.uniqueitems); i++)
    uniques[global.uniqueitems[i]] = 1
if (global.armor > 0 && global.armor < array_length_1d(uniques) && uniques[global.armor] == 1)
    uniques[global.armor] = 2
if (global.weapon > 0 && global.weapon < array_length_1d(uniques) && uniques[global.weapon] == 1)
    uniques[global.weapon] = 2
uniques[27] = 2
uniques[65] = 2
var numdupes = 0
for (i = 0; i < 8; i++)
{
    if (global.item[i] > 0 && global.item[i] < array_length_1d(uniques))
    {
        show_debug_message(((("Checking item '" + scr_gettext(("item_name_" + string(global.item[i])))) + "' in inventory slot ") + string(i)))
        if (uniques[global.item[i]] > 1)
        {
            show_debug_message("Duplicate found")
            with (obj_time)
                scr_itemshift(other.i, 0)
            numdupes++
            i--
        }
        else if (uniques[global.item[i]] == 1)
            uniques[global.item[i]] = 2
    }
    else
        show_debug_message(("Ignoring out of bounds item " + string(global.item[i])))
}
for (i = 300; i < 324; i++)
{
    var box = (other.i > 311 ? 312 : 300)
    if (global.flag[i] > 0 && global.flag[i] < array_length_1d(uniques))
    {
        show_debug_message(((((("Checking item '" + scr_gettext(("item_name_" + string(global.flag[i])))) + "' in box ") + string((box - 300) == 12)) + " slot ") + string((i - box))))
        if (uniques[global.flag[i]] > 1)
        {
            show_debug_message("Duplicate found")
            with (obj_time)
                scr_storageshift((other.i - box), 0, box)
            numdupes++
            i--
        }
        else if (uniques[global.flag[i]] == 1)
            uniques[global.flag[i]] = 2
    }
    else
        show_debug_message(((((("Ignoring out of bounds item " + string(global.flag[i])) + " in box ") + string((box - 300) == 12)) + " slot ") + string((i - box))))
}
var filename = ("item" + string(global.filechoice))
if file_exists(filename)
{
    var file = file_bin_open(filename, 0)
    var size = file_bin_size(file)
    file_bin_close(file)
    if (size < 6 || size > 2046)
    {
        show_debug_message("Invalid item file size")
        return 0;
    }
    var buff = buffer_load(filename)
    var header = buffer_read(buff, buffer_string)
    if (header != "ITEM")
    {
        show_debug_message("Invalid item file")
        buffer_delete(buff)
        return 0;
    }
    var num_items = buffer_read(buff, buffer_u8)
    if (size != ((num_items * 8) + 6))
    {
        show_debug_message("Invalid number of items")
        buffer_delete(buff)
        return 0;
    }
    show_debug_message((("Found " + string(num_items)) + " dropped items"))
    for (i = 0; i < num_items; i++)
    {
        var xpos = buffer_read(buff, buffer_s16)
        var ypos = buffer_read(buff, buffer_s16)
        var item = buffer_read(buff, buffer_s16)
        var myrm = buffer_read(buff, buffer_s16)
        var name = scr_gettext(("item_name_" + string(item)))
        show_debug_message((((((((((("Dropped item: " + string(xpos)) + " ") + string(ypos)) + " ") + room_get_name(myrm)) + ": '") + name) + "' (") + string(item)) + ")"))
        if (name == "" || name == " ")
        {
            show_debug_message(("Invalid item: " + string(item)))
            buffer_delete(buff)
            return 0;
        }
        if (!room_exists(myrm))
        {
            show_debug_message(("Invalid room: " + string(myrm)))
            buffer_delete(buff)
            return 0;
        }
        if (uniques[item] < 2)
        {
            with (instance_create(xpos, ypos, obj_dropped_item))
            {
                dropped_room = myrm
                itemid = item
                event_user(0)
            }
            if (uniques[item] == 1)
                uniques[item] = 2
        }
        else
        {
            show_debug_message("Duplicate found")
            numdupes++
        }
    }
    buffer_delete(buff)
}
if (numdupes > 0)
    show_debug_message((("Ignored " + string(numdupes)) + " duplicate items"))
return 1;
