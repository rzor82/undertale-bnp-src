if (control_check_pressed(0) == 1)
    event_perform(ev_other, ev_user0)
if (old == 0)
{
    if (keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[2]))
    {
        if (mychoice == 0)
            mychoice = 1
        else
            mychoice = 0
        snd_play(snd_squeak)
        if (mychoice == 1)
            x = x1
        else
            x = x0
    }
}
