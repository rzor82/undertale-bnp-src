var str = argument0
if (global.osflavor <= 2)
{
    str = string_replace_all(str, "\\*ZZ", string_upper(scr_keybind_name(global.keybind[4])))
    str = string_replace_all(str, "\\*XX", string_upper(scr_keybind_name(global.keybind[6])))
    str = string_replace_all(str, "\\*CC", string_upper(scr_keybind_name(global.keybind[8])))
    str = string_replace_all(str, "\\*F4", scr_keybind_name(global.keybind[10]))
    str = string_replace_all(str, "\\*ESC", scr_keybind_name(global.keybind[11]))
    str = string_replace_all(str, "\\*Z2", scr_keybind_name(global.keybind[5]))
    str = string_replace_all(str, "\\*X2", scr_keybind_name(global.keybind[7]))
    str = string_replace_all(str, "\\*C2", scr_keybind_name(global.keybind[9]))
    str = string_replace_all(str, "\\*Z", scr_keybind_name(global.keybind[4]))
    str = string_replace_all(str, "\\*X", scr_keybind_name(global.keybind[6]))
    str = string_replace_all(str, "\\*C", scr_keybind_name(global.keybind[8]))
    str = string_replace_all(str, "\\*A", scr_keybind_name(global.keybind[0]))
    str = string_replace_all(str, "\\*D", scr_keybind_name(global.keybind[2]))
}
return str;
