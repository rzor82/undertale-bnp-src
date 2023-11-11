if (global.osflavor <= 2 && keyboard_check(global.keybind[1]))
    return 1;
if (global.osflavor >= 4 && gamepad_axis_value((obj_time.j_ch - 1), gp_axisrv) <= -0.6)
    return 1;
return 0;
