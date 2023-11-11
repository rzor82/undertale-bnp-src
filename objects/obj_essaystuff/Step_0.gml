if (!keyboard_present)
    return;
if (cantype == 1)
{
    var newchar = ""
    var backspace = 0
    if keyboard_check_pressed(vk_anykey)
    {
        var exc = 0
        if keyboard_check_pressed(global.keybind[2])
            exc = 1
        if keyboard_check_pressed(global.keybind[0])
            exc = 1
        if keyboard_check_pressed(global.keybind[1])
            exc = 1
        if keyboard_check_pressed(global.keybind[3])
            exc = 1
        if keyboard_check_pressed(vk_backspace)
        {
            exc = 1
            backspace = 1
        }
        if control_check_pressed(1)
            exc = 1
        if control_check_pressed(0)
            exc = 1
        if keyboard_check_pressed(global.keybind[11])
            exc = 1
        if (exc == 0)
        {
            newchar = keyboard_lastchar
            if (keyboard_check_pressed(ord("Z")) && (!control_check_pressed(0)))
                newchar = "z"
            if (keyboard_check_pressed(ord("X")) && (!control_check_pressed(1)))
                newchar = "x"
        }
    }
    if (newchar != "")
    {
        if (endbuffer < 30)
            endbuffer = 30
        if (global.language == "ja")
            mystring = scr_kanatype_append(mystring, newchar)
        else
            mystring += newchar
    }
    else if backspace
    {
        if (string_length(mystring) > 1)
            mystring = string_delete(mystring, string_length(mystring), 1)
    }
}
endbuffer -= 1
if (endbuffer < 0 && alarm[0] > 10)
    alarm[0] = 10
