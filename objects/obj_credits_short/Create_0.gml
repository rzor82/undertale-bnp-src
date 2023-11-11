number = -1
caster_free(-3)
ii = caster_load("music/intronoise.ogg")
caster_play(ii, 1, 1)
alarm[5] = 150
rot = 0
phonecalls = 0
global.filechoice = 0
ossafe_ini_open("undertale.ini")
ini_write_real("FFFFF", "E", 0)
ini_write_real("FFFFF", "F", 0)
won = ini_read_real("General", "Won", 0)
ini_write_real("General", "Won", (won + 1))
ossafe_ini_close()
ossafe_savedata_save()
with (obj_speedrun_tracker)
{
    if (stop < 0 || (stop - start) < 3900)
    {
        instance_create(0, 0, obj_dogtroid)
        instance_destroy(other)
        if (stop < 0)
            stop = gmlscripts_unix_timestamp()
    }
}
