window_set_caption("UNDERTALE: Bits and Pieces")
if (room == room_fire_opera)
    window_set_caption("UNDERTALE: Bits and Pieces - The Musical")
if (room > room_intromenu)
{
    if ((!variable_global_exists("pirate")) || (!variable_global_exists("piratedog")) || (!variable_global_exists("piratenuke")))
    {
        global.pirate = 1
        global.piratedog = 0
        global.piratenuke = 0
    }
    if (!variable_global_exists("osflavor"))
        global.osflavor = os_type == os_windows
    if (global.pirate == 1 || file_exists((program_directory + "steam_emu.ini")) || file_exists((program_directory + "steamclient.dll")) || file_exists((program_directory + "codex.dll")))
    {
        global.pirate = 1
        global.debug = false
        drop = irandom(7)
        spec = 1
    }
}
