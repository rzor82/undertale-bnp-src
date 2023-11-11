legx = 0
legrot_r = 0
legrot_l = 0
bodyy = 0
con = 0
army = 0
siner = 0
leg = 0
timer = 0
active = false
main_timer = -70
essay = " SKIPPING THE ESSAY?#YOU'RE GOING TO FAIL THE CLASS."
bpants = instance_create(210, 35, obj_npc_marker)
bpants.sprite_index = spr_bpants_bush
bpants.image_speed = 0
bpants.visible = true
bpants.depth = 1010
dtable = instance_create(80, 60, obj_npc_marker)
dtable.sprite_index = spr_djtable
dtable.image_speed = 0.25
dtable.visible = true
dtable.depth = 1010
napsta = instance_create(98, 30, obj_npc_marker)
napsta.sprite_index = spr_napstablook_d_headphone
napsta.image_speed = 0.25
napsta.visible = true
napsta.depth = 1011
shyren = instance_create(70, 20, obj_npc_marker)
shyren.sprite_index = spr_shyren_overworld_sing
shyren.image_speed = 0.1
shyren.visible = true
shyren.depth = 1021
alarm[5] = 5
scr_loadendsong()
caster_stop(global.endsong[3])
caster_play(global.endsong[5], 1, 1)
global.inbattle = 0
if (global.osflavor == 1)
{
    var savedir = (((environment_get_variable("LOCALAPPDATA") + "\\") + game_project_name) + "\\")
    ossafe_ini_open("undertale.ini")
    var essay_path = ini_read_string("MTT", "Essay", "")
    var essay_num = ini_read_real("MTT", "EssayNo", 0)
    var essay_score = ini_read_real("MTT", "EssayScore", 0)
    ossafe_ini_close()
    if (essay_path != "")
    {
        if file_exists("FileManager.dll")
        {
            if file_exists_fmns(essay_path)
            {
                if (essay_score < 0)
                    essay = " [REDACTED]"
                else
                {
                    file_copy_fmns(essay_path, (savedir + "essay.txt"))
                    var file = ossafe_file_text_open_read((savedir + "essay.txt"))
                    essay = ossafe_file_text_read_string(file)
                    ossafe_file_text_close(file)
                }
            }
            else
                essay = " MY MY, EMBARRASSED ARE WE?#YOU MUST BE FUN AT PARTIES."
        }
        else if file_exists(essay_path)
        {
            if (essay_score < 0)
                essay = " [REDACTED]"
            else
            {
                file_copy(essay_path, "essay.txt")
                file = ossafe_file_text_open_read((savedir + "essay.txt"))
                essay = ossafe_file_text_read_string(file)
                ossafe_file_text_close(file)
            }
        }
        else
            essay = " MY MY, EMBARRASSED ARE WE?#YOU MUST BE FUN AT PARTIES."
    }
    else if (essay_num > 0)
        essay = " OH DEAR, I MISPLACED YOUR#ESSAY. I'LL MAKE SURE NOT#TO FORGET NEXT TIME."
    writer = instance_create(60, 5, obj_endessaywriter)
    writer.depth = (shyren.depth + 1)
    writer.essay = essay
}
