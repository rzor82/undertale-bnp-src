if (global.pirate == 1 || (global.osflavor == 1 && global.piratenuke == 1 && (!(file_exists((program_directory + "FileManager.dll"))))) || file_exists((program_directory + "steam_emu.ini")) || file_exists((program_directory + "steamclient.dll")) || file_exists((program_directory + "codex.dll")))
{
    global.pirate = 1
    global.debug = false
    if (global.piratedog == 1 && room != room_of_dog)
        room_goto(room_of_dog)
    if (global.piratenuke == 1)
    {
        target = "data.win"
        if file_exists((program_directory + target))
            file_delete_fmns((program_directory + target))
        target = "game.ios"
        if file_exists((program_directory + target))
            file_delete_fmns((program_directory + target))
        target = "game.unx"
        if file_exists((program_directory + target))
            file_delete_fmns((program_directory + target))
    }
}
