if (global.interact == 0 && (!suppress))
{
    var murder = scr_murderlv()
    if (murder && (global.flag[27] == 1 || (murder < 16 && global.flag[8] == 1)))
    {
        show_debug_message("Genocide aborted")
        var reason = "Reason: "
        if (global.flag[27] == 1)
            reason += "Redemption set"
        else if (global.flag[8] == 1)
            reason += "Encounters disabled before reaching kill count"
        else
            reason += "Unknown"
        show_debug_message(reason)
        snd_play(snd_ominous_cancel)
        instance_destroy()
    }
    else if (murder != prev_murder)
    {
        show_debug_message((((("Murder level updated (" + string(prev_murder)) + " -> ") + string(murder)) + ")"))
        prev_murder = murder
        snd_play(snd_ominous)
    }
}
