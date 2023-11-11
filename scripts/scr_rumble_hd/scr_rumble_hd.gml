var low_amp = argument0
var low_freq = argument1
var high_amp = argument2
var high_freq = argument3
if (os_type == os_switch_beta)
{
    if switch_controller_vibration_permitted()
    {
        switch_controller_vibrate_hd((obj_time.j_ch - 1), 0, low_amp, low_freq, high_amp, high_freq)
        switch_controller_vibrate_hd((obj_time.j_ch - 1), 1, low_amp, low_freq, high_amp, high_freq)
    }
}
