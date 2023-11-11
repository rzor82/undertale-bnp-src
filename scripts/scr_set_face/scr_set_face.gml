var modifier = (global.inbattle ? 2 : 1)
if (global.facechoice != 1)
{
    with (obj_torbody)
        instance_destroy()
}
var name = "???"
ossafe_ini_open("undertale.ini")
var g = ini_read_real("Flowey", "Met1", 0)
var truename = ini_read_real("Flowey", "truename", 0)
var IK = ini_read_real("Flowey", "IK", 0)
var NK = ini_read_real("Flowey", "NK", 0)
ossafe_ini_close()
x = (xstart - 40)
y = (ystart + 24)
does_face_blink = 0
anim_speed = 0.25
switch global.facechoice
{
    case 0:
        instance_destroy(obj_face)
        visible = false
        return;
    case 1:
        name = "Toriel"
        x = (xstart - (40 * modifier))
        y = (ystart + 23)
        does_face_blink = 1
        if (!instance_exists(obj_torbody))
        {
            var body = instance_create(0, 0, obj_torbody)
            body.face = id
        }
        switch global.faceemotion
        {
            case 99:
                instance_create(x, y, obj_face_torglasses)
                global.faceemotion = 0
            case 0:
            default:
                sprite_index = (should_blink ? spr_face_torielhappyblink : spr_face_torielhappytalk)
                break
            case 1:
                sprite_index = (should_blink ? spr_face_torielblinkside : spr_face_torieltalkside)
                break
            case 2:
                sprite_index = (should_blink ? spr_face_torielblink : spr_face_torieltalk)
                break
            case 3:
                sprite_index = spr_face_torielwhat
                break
            case 4:
                sprite_index = spr_face_torielwhatside
                break
            case 5:
                sprite_index = (should_blink ? spr_face_torielrevenge : spr_face_torielrevengetalk)
                break
            case 6:
                sprite_index = (should_blink ? spr_face_torielcoldblink : spr_face_torielcold)
                break
            case 7:
                sprite_index = (should_blink ? spr_face_torielmadblink : spr_face_torielmad)
                break
            case 8:
                sprite_index = spr_face_torielembarrassed
                break
            case 9:
                sprite_index = spr_face_toriel_goawayasgore
                break
        }

        break
    case 2:
        name = "Flowey"
        x = (xstart - (36 * modifier))
        y = (ystart + 25)
        anim_speed = 0.2
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_floweynice
                if (g <= 1 && IK == 0 && NK == 0 && truename == 0 && room == room_area1_meetflowey)
                    sprite_index = spr_floweynice_facade
                break
            case 1:
                sprite_index = spr_floweynicesideum
                break
            case 2:
                sprite_index = spr_floweysassy
                break
            case 3:
                sprite_index = spr_floweypissed
                break
            case 4:
                sprite_index = spr_floweyevil
                break
            case 5:
                sprite_index = spr_floweygrin
                break
            case 6:
                sprite_index = spr_floweywink
                if (g <= 1 && IK == 0 && NK == 0 && truename == 0 && room == room_area1_meetflowey)
                    sprite_index = spr_floweywink_facade
                if (room == room_ruinsexit)
                    sprite_index = spr_floweytoriel
                break
            case 7:
                sprite_index = spr_floweyniceside
                if (room == room_ruinsexit)
                    sprite_index = spr_floweytoriel2
                break
            case 8:
                sprite_index = spr_floweyplain
                break
            case 9:
                sprite_index = spr_floweyside
                break
            case "A":
                sprite_index = spr_floweydepressed1
                break
            case "B":
                sprite_index = spr_floweydepressed2
                break
            case "C":
                sprite_index = spr_floweydepressed3
                break
            case "D":
                sprite_index = spr_floweykiddingme
                break
            case "E":
                sprite_index = spr_floweyclearlyyoudontownanairfryer
                break
            case "F":
                sprite_index = spr_floweyweirdo
                if (g <= 1 && IK == 0 && NK == 0 && truename == 0 && room == room_area1_meetflowey)
                    sprite_index = spr_floweyweirdo_facade
                break
            case "G":
                sprite_index = spr_floweyweirdoside
                if (g <= 1 && IK == 0 && NK == 0 && truename == 0 && room == room_area1_meetflowey)
                    sprite_index = spr_floweyweirdoside_facade
                break
            case "H":
                sprite_index = spr_floweywhathuh
                break
            case "I":
                sprite_index = spr_floweyevil2
                break
            case "J":
                sprite_index = spr_floweyevil3
                break
            case "K":
                sprite_index = spr_floweydoteyes
                break
            case "L":
                sprite_index = spr_floweymusnote
                break
            case "M":
                sprite_index = spr_floweyshout
                break
            case "N":
                sprite_index = spr_flowey_asrielface
                break
            case "O":
                sprite_index = spr_floweyangryshowteeth
                break
            case "P":
                sprite_index = spr_floweyangryshowteethalt
                break
            case "Q":
                sprite_index = spr_floweygoodytwoshoes
                break
            case "R":
                sprite_index = spr_floweytoriel
                break
            case "S":
                sprite_index = spr_floweytoriel2
                break
            default:
                sprite_index = spr_floweynice
                break
        }

        break
    case 3:
        if (name != "Sans")
            name = "Sans"
        x = (xstart - (40 * modifier))
        y = (ystart + 28)
        anim_speed = 0.2
        var visor = (room == room_tundra8 || room == room_fire_hotdog)
        switch global.faceemotion
        {
            case 0:
                sprite_index = (visor ? spr_face_sans_visor : spr_face_sans)
                break
            case 1:
                sprite_index = (visor ? spr_face_sanschuckle_visor : spr_face_sanschuckle)
                break
            case 2:
                sprite_index = (visor ? spr_face_sanswink_visor : spr_face_sanswink)
                break
            case 3:
                sprite_index = (visor ? spr_face_sansblink_visor : spr_face_sansblink)
                break
            case 4:
                sprite_index = (visor ? spr_face_sansnoeyes_visor : spr_face_sansnoeyes)
                break
            case 5:
                sprite_index = (visor ? spr_face_sanschuckle2_visor : spr_face_sanschuckle2)
                break
            case 6:
                sprite_index = (visor ? spr_face_sansbedroomeyes_visor : spr_face_sansbedroomeyes)
                break
            case 7:
                sprite_index = (visor ? spr_face_sanswhatdude_visor : spr_face_sanswhatdude)
                break
            case 8:
                sprite_index = (visor ? spr_face_sanswhatdude_noeyes_visor : spr_face_sanswhatdude_noeyes)
                break
            case 9:
                sprite_index = (visor ? spr_face_sansdont_visor : spr_face_sansdont)
                break
        }

        break
    case 4:
        name = "Papyrus"
        x = (xstart - (40 * modifier))
        if (global.language == "ja" && instance_exists(OBJ_WRITER))
            x = (OBJ_WRITER.writingxend + 34)
        y = (ystart + 22)
        if (global.language == "ja")
            image_xscale = -1
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_face_papyrus
                break
            case 1:
                sprite_index = spr_face_papyrusmad
                break
            case 2:
                sprite_index = spr_face_papyruslaugh
                break
            case 3:
                sprite_index = spr_face_papyrusside
                break
            case 4:
                sprite_index = spr_face_papyrusevil
                break
            case 5:
                sprite_index = spr_face_papyrussweat
                break
            case 6:
                sprite_index = spr_face_papyrusdejected
                break
            case 7:
                sprite_index = spr_face_papyruswacky
                break
            case 8:
                sprite_index = spr_face_papyruscry
                break
            case 9:
                sprite_index = spr_face_papyruscool
                break
            case "A":
                sprite_index = spr_face_papyrus_blush
                break
            case "B":
                sprite_index = spr_face_papyrus_mysterious
                break
            case "C":
                sprite_index = spr_face_papyrus_nyeh
                break
            case "D":
                sprite_index = spr_face_papyrus_sly
                break
            case "E":
                sprite_index = spr_face_papyrus_unbelievable
                break
        }

        break
    case 5:
        name = "Undyne"
        x = (xstart - (40 * modifier))
        y = (ystart + 18)
        var undyne_faces = []
        undyne_faces[0] = spr_face_undyne0
        undyne_faces[1] = spr_face_undyne1
        undyne_faces[2] = spr_face_undyne2
        undyne_faces[3] = spr_face_undyne3
        undyne_faces[4] = spr_face_undyne4
        undyne_faces[5] = spr_face_undyne5
        undyne_faces[6] = spr_face_undyne6
        undyne_faces[7] = spr_face_undyne7
        undyne_faces[8] = spr_face_undyne8
        undyne_faces[9] = spr_face_undyne9
        sprite_index = undyne_faces[global.faceemotion]
        if (global.faceemotion == 1 && global.flag[390] == 2)
            sprite_index = spr_face_undyne1_3
        if (global.faceemotion == 2 && global.flag[20] == 9)
            sprite_index = spr_face_undyne2_2
        if (global.faceemotion == 9 && global.flag[390] == 1)
            sprite_index = spr_face_undyne9_2
        if (global.faceemotion == 9 && global.flag[390] == 2)
            sprite_index = spr_face_undyne9_3
        if (global.faceemotion == 0 && global.flag[349] == 0)
            sprite_index = spr_face_undyne0_armored
        if (global.faceemotion == 1 && global.flag[349] == 0)
            sprite_index = spr_face_undyne1_armored
        if (global.faceemotion == 2 && global.flag[349] == 0)
            sprite_index = spr_face_undyne2_armored
        if (global.faceemotion == 3 && global.flag[349] == 0)
            sprite_index = spr_face_undyne3_armored
        if (global.faceemotion == 4 && global.flag[349] == 0)
            sprite_index = spr_face_undyne4_armored
        if (global.faceemotion == 5 && global.flag[349] == 0)
            sprite_index = spr_face_undyne5_armored
        if (global.faceemotion == 6 && global.flag[349] == 0)
            sprite_index = spr_face_undyne6_armored
        if (global.faceemotion == 7 && global.flag[349] == 0)
            sprite_index = spr_face_undyne7_armored
        if (global.faceemotion == 9 && global.flag[349] == 0)
            sprite_index = spr_face_undyne9_armored
        break
    case 6:
        name = "Alphys"
        x = (xstart - (40 * modifier))
        y = (ystart + 21)
        var alphys_faces = []
        alphys_faces[0] = spr_alphysface_0
        alphys_faces[1] = spr_alphysface_1
        alphys_faces[2] = spr_alphysface_2
        alphys_faces[3] = spr_alphysface_3
        alphys_faces[4] = spr_alphysface_4
        alphys_faces[5] = spr_alphysface_5
        alphys_faces[6] = spr_alphysface_6
        alphys_faces[7] = spr_alphysface_7
        alphys_faces[8] = spr_alphysface_8
        alphys_faces[9] = spr_alphysface_9
        alphys_faces[10] = spr_alphysface_10
        alphys_faces[11] = spr_alphysface_11
        alphys_faces[12] = spr_alphysface_12
        alphys_faces[13] = spr_alphysface_13
        alphys_faces[14] = spr_alphysface_14
        alphys_faces[15] = spr_alphysface_15
        alphys_faces[16] = spr_alphysface_16
        alphys_faces[17] = spr_alphysface_17
        alphys_faces[18] = spr_alphysface_18
        alphys_faces[19] = spr_alphysface_19
        alphys_faces[20] = spr_alphysface_20
        alphys_faces[21] = spr_alphysface_21
        alphys_faces[22] = spr_alphysface_22
        alphys_faces[23] = spr_alphysface_23
        alphys_faces[24] = spr_alphysface_24
        alphys_faces[25] = spr_alphysface_25
        if (global.flag[430] == 0)
            sprite_index = alphys_faces[global.faceemotion]
        if (global.flag[430] == 1)
            sprite_index = alphys_faces[(global.faceemotion + 10)]
        if (global.flag[430] == 2)
            sprite_index = alphys_faces[(global.faceemotion + 15)]
        if (global.flag[430] == 3)
        {
            sprite_index = alphys_faces[global.faceemotion]
            if (global.faceemotion == 7)
                sprite_index = alphys_faces[24]
            if (global.faceemotion == 0)
                sprite_index = alphys_faces[25]
        }
        if (global.flag[7] == 1)
        {
            sprite_index = alphys_faces[global.faceemotion]
            if (global.faceemotion == 1)
                sprite_index = spr_alphysface_laugh
            if (global.faceemotion == 2)
                sprite_index = spr_alphysface_smarmy
            if (global.faceemotion == 8)
                sprite_index = spr_alphysface_2
            if (global.faceemotion == 9)
                sprite_index = alphys_faces[24]
        }
        if (global.flag[430] == 4)
        {
            image_index = global.faceemotion
            sprite_index = spr_alphysface_new
        }
        if (global.flag[430] == 5)
        {
            switch global.faceemotion
            {
                case 0:
                    sprite_index = spr_alphysface_0
                    break
                case 1:
                    sprite_index = spr_alphysface_1
                    break
                case 2:
                    sprite_index = spr_alphysface_2
                    break
                case 3:
                    sprite_index = spr_alphysface_3
                    break
                case 4:
                    sprite_index = spr_alphysface_4
                    break
                case 5:
                    sprite_index = spr_alphysface_5
                    break
                case 6:
                    sprite_index = spr_alphysface_6
                    break
                case 7:
                    sprite_index = spr_alphysface_7
                    break
                case 8:
                    sprite_index = spr_alphysface_8
                    break
                case 9:
                    sprite_index = spr_alphysface_9
                    break
                case "A":
                    sprite_index = spr_alphysface_10
                    break
                case "B":
                    sprite_index = spr_alphysface_11
                    break
                case "C":
                    sprite_index = spr_alphysface_12
                    break
                case "D":
                    sprite_index = spr_alphysface_13
                    break
                case "E":
                    sprite_index = spr_alphysface_14
                    break
                case "F":
                    sprite_index = spr_alphysface_15
                    break
                case "G":
                    sprite_index = spr_alphysface_16
                    break
                case "H":
                    sprite_index = spr_alphysface_17
                    break
                case "I":
                    sprite_index = spr_alphysface_18
                    break
                case "J":
                    sprite_index = spr_alphysface_19
                    break
                case "K":
                    sprite_index = spr_alphysface_20
                    break
                case "L":
                    sprite_index = spr_alphysface_21
                    break
                case "M":
                    sprite_index = spr_alphysface_22
                    break
                case "N":
                    sprite_index = spr_alphysface_23
                    break
                case "O":
                    sprite_index = spr_alphysface_24
                    break
                case "P":
                    sprite_index = spr_alphysface_25
                    break
                case "Q":
                    sprite_index = spr_alphysface_laugh
                    break
                case "R":
                    sprite_index = spr_alphysface_new
                    image_index = 0
                    break
                case "S":
                    sprite_index = spr_alphysface_new
                    image_index = 1
                    break
                case "T":
                    sprite_index = spr_alphysface_new
                    image_index = 2
                    break
                case "U":
                    sprite_index = spr_alphysface_new
                    image_index = 3
                    break
                case "V":
                    sprite_index = spr_alphysface_new
                    image_index = 4
                    break
                case "W":
                    sprite_index = spr_alphysface_new
                    image_index = 5
                    break
                case "X":
                    sprite_index = spr_alphysface_smarmy
                    image_index = 5
                    break
                case "Y":
                    sprite_index = spr_alphysface_hearteyes
                    image_index = 5
                    break
                default:
                    sprite_index = spr_alphysface_0
                    break
            }

        }
        break
    case 7:
        name = "Asgore"
        x = (xstart - (41 * modifier))
        y = (ystart + 18)
        var asgore_faces = []
        asgore_faces[0] = spr_asgore_face0
        asgore_faces[1] = spr_asgore_face1
        asgore_faces[2] = spr_asgore_face2
        asgore_faces[3] = spr_asgore_face3
        asgore_faces[4] = spr_asgore_face4
        asgore_faces[5] = spr_asgore_face5
        if (global.faceemotion < 6)
            sprite_index = asgore_faces[global.faceemotion]
        break
    case 9:
        name = "Asriel"
        x = (xstart - (33 * modifier))
        y = (ystart + 25)
        var asriel_faces = []
        asriel_faces[0] = spr_face_asriel0
        asriel_faces[1] = spr_face_asriel1
        asriel_faces[2] = spr_face_asriel2
        asriel_faces[3] = spr_face_asriel3
        asriel_faces[4] = spr_face_asriel4
        asriel_faces[5] = spr_face_asriel5
        asriel_faces[6] = spr_face_asriel6
        asriel_faces[7] = spr_face_asriel7
        asriel_faces[8] = spr_face_asriel8
        asriel_faces[9] = spr_face_asriel9
        sprite_index = asriel_faces[global.faceemotion]
        break
    case "A":
        name = "Monster Kid"
        x = (xstart - (38 * modifier))
        y = (ystart + 18)
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_face_mkid
                break
            case 1:
                sprite_index = spr_face_mkid_mad
                break
            case 2:
                sprite_index = spr_face_mkid_nyeh
                break
            case 3:
                sprite_index = spr_face_mkid_side
                break
            case 4:
                sprite_index = spr_face_mkid_dejected
                break
            case 5:
                sprite_index = spr_face_mkid_concern
                break
            case 6:
                sprite_index = spr_face_mkid_sideoh
                break
            case 7:
                sprite_index = spr_face_mkid_madish
                break
            case 8:
                sprite_index = spr_face_mkid_starstruck
                break
            case 9:
                sprite_index = spr_face_mkid_oh
                break
            default:
                sprite_index = spr_face_mkid
                break
        }

        break
    case "B":
        name = "Napstablook"
        x = (xstart - (42 * modifier))
        y = (ystart + 24)
        visor = room == room_water_farm
        switch global.faceemotion
        {
            case 0:
            default:
                sprite_index = (visor ? spr_face_napsta_visor : spr_face_napsta)
                break
            case 1:
                sprite_index = (visor ? spr_face_napsta_smile_visor : spr_face_napsta_smile)
                break
            case 2:
                sprite_index = (visor ? spr_face_napsta_visor : spr_face_napsta_headphone)
                break
            case 3:
                sprite_index = (visor ? spr_face_napsta_smile_visor : spr_face_napsta_smile_headphone)
                break
        }

        break
    case "C":
        name = "Undyne (Armor)"
        sprite_index = spr_face_armordyne
        break
    case "D":
        name = "Mettaton"
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_face_mettaton
                break
            case 1:
                sprite_index = spr_face_mettaton_2
                break
            case 2:
                sprite_index = spr_face_mettaton_clap
                break
            case 3:
                sprite_index = spr_face_mettaton_evillaugh
                break
            case 4:
                sprite_index = spr_face_mettaton_no1
                break
            case 5:
                sprite_index = spr_face_mettaton_chainsaw
                break
            case 6:
                sprite_index = spr_face_mettaton_dress
                break
            case 7:
                sprite_index = spr_face_mettaton_behind2
                break
            case 8:
                sprite_index = spr_face_mettaton_boss
                break
            case 9:
                sprite_index = spr_face_mettaton_behind
                break
            default:
                sprite_index = spr_face_mettaton
                break
        }

        break
    case "E":
        name = "Mettaton (News)"
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_face_mettaton_news
                break
            case 1:
                sprite_index = spr_face_mettaton_news_hands
                break
            case 2:
                sprite_index = spr_face_mettaton_news_oh
                break
            case 3:
                sprite_index = spr_face_mettaton_news_evillaugh
                break
            case 4:
                sprite_index = spr_face_mettaton_news_no1
                break
            case 5:
                sprite_index = spr_face_mettaton_news_panic
                break
            case 6:
                sprite_index = spr_face_mettaton_news_raisehand
                break
            default:
                sprite_index = spr_face_mettaton_news
                break
        }

        break
    case 8:
        name = "Mettaton (EX)"
        x = (xstart - (45 * modifier))
        y = (ystart + 17)
        sprite_index = spr_mettface_dialogue
        image_index = global.faceemotion
        break
    case "X":
        name = "Rouxls"
        x = (xstart - 38)
        y = (ystart + 20)
        switch global.faceemotion
        {
            case 0:
                sprite_index = spr_face_rurus
                break
            case 1:
                sprite_index = spr_face_rurus_shocked1
                break
            case 2:
                sprite_index = spr_face_rurus_mouthopen
                break
            case 3:
                sprite_index = spr_face_rurus_wink
                break
            case 4:
                sprite_index = spr_face_rurus_eyesclosed
                break
            case 5:
                sprite_index = spr_face_rurus_shocked2
                break
            case 6:
                sprite_index = spr_face_rurus_shocked2_side
                break
            default:
                sprite_index = spr_face_rurus
                break
        }

        break
    case "p":
        name = "Prunsel"
        x = (xstart - (44 * modifier))
        y = (ystart + 16)
        sprite_index = spr_prunsel
        break
    default:
        instance_destroy(obj_face)
        visible = false
        break
}

if (global.facechoice == "D" || global.facechoice == "E")
{
    x += 7
    y -= 2
}
