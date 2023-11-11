day = current_weekday
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
obj_mainchara.callsprite = 1
dontplay = 0
noresponse = 0
tired = false
global.msg[0] = scr_gettext("scr_papcall_7")
global.msg[1] = scr_gettext("scr_papcall_8")
u = 0
if (global.flag[465] == 1)
    u = 1
switch room
{
    case room_tundra1:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_17")
        global.msg[3] = scr_gettext("scr_papcall_18")
        global.msg[4] = scr_gettext("scr_papcall_19")
        global.msg[5] = scr_gettext("scr_papcall_20")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_24")
            global.msg[3] = scr_gettext("scr_papcall_25")
        }
        break
    case 45:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_31")
        global.msg[3] = scr_gettext("scr_papcall_32")
        global.msg[4] = scr_gettext("scr_papcall_33")
        global.msg[5] = scr_gettext("scr_papcall_34")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_39")
            global.msg[3] = scr_gettext("scr_papcall_40")
        }
        break
    case 46:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_46")
        global.msg[3] = scr_gettext("scr_papcall_47")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_52")
        }
        break
    case 47:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_58")
        global.msg[3] = scr_gettext("scr_papcall_59")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_65")
        }
        break
    case 48:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_71")
        global.msg[3] = scr_gettext("scr_papcall_72")
        global.msg[4] = scr_gettext("scr_papcall_73")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_79")
        }
        break
    case 49:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_85")
        global.msg[3] = scr_gettext("scr_papcall_86")
        global.msg[4] = scr_gettext("scr_papcall_87")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_93")
        }
        break
    case 50:
        scr_papface(1, 1)
        global.msg[2] = scr_gettext("scr_papcall_100")
        global.msg[3] = scr_gettext("scr_papcall_101")
        global.msg[4] = scr_gettext("scr_papcall_102")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_108")
        }
        break
    case 51:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_114")
        global.msg[3] = scr_gettext("scr_papcall_115")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_121")
        }
        break
    case 52:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_127")
        global.msg[3] = scr_gettext("scr_papcall_128")
        if (global.flag[291] == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_133")
            global.msg[3] = scr_gettext("scr_papcall_134")
            global.msg[4] = scr_gettext("scr_papcall_135")
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_141")
        }
        break
    case 53:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_149")
        global.msg[3] = scr_gettext("scr_papcall_150")
        global.msg[4] = scr_gettext("scr_papcall_151")
        global.msg[5] = scr_gettext("scr_papcall_152")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_157")
            global.msg[3] = scr_gettext("scr_papcall_158")
        }
        break
    case 54:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_166")
        global.msg[3] = scr_gettext("scr_papcall_167")
        global.msg[4] = scr_gettext("scr_papcall_168")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_173")
            global.msg[3] = scr_gettext("scr_papcall_174")
            global.msg[4] = scr_gettext("scr_papcall_175")
        }
        break
    case 55:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_182")
        global.msg[3] = scr_gettext("scr_papcall_183")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_188")
        }
        break
    case 56:
        scr_papface(1, 2)
        global.msg[2] = scr_gettext("scr_papcall_195")
        global.msg[3] = scr_gettext("scr_papcall_196")
        if (global.flag[62] == 2)
        {
            global.msg[3] = scr_gettext("scr_papcall_199")
            global.msg[4] = scr_gettext("scr_papcall_200")
        }
        if (global.flag[62] == 1)
        {
            global.msg[3] = scr_gettext("scr_papcall_204")
            global.msg[4] = scr_gettext("scr_papcall_205")
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_211")
        }
        break
    case 57:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_218")
        global.msg[3] = scr_gettext("scr_papcall_219")
        global.msg[4] = scr_gettext("scr_papcall_220")
        global.msg[5] = scr_gettext("scr_papcall_221")
        global.msg[6] = scr_gettext("scr_papcall_222")
        global.msg[7] = scr_gettext("scr_papcall_223")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_228")
        }
        break
    case 58:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_234")
        global.msg[3] = scr_gettext("scr_papcall_235")
        global.msg[4] = scr_gettext("scr_papcall_236")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_241")
        }
        break
    case 59:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_248")
        global.msg[3] = scr_gettext("scr_papcall_249")
        global.msg[4] = scr_gettext("scr_papcall_250")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_255")
        }
        break
    case 60:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_262")
        global.msg[3] = scr_gettext("scr_papcall_263")
        global.msg[4] = scr_gettext("scr_papcall_264")
        global.msg[5] = scr_gettext("scr_papcall_265")
        global.msg[6] = scr_gettext("scr_papcall_266")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_271")
            global.msg[3] = scr_gettext("scr_papcall_272")
        }
        break
    case 61:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_278")
        global.msg[3] = scr_gettext("scr_papcall_279")
        global.msg[4] = scr_gettext("scr_papcall_280")
        global.msg[5] = scr_gettext("scr_papcall_281")
        global.msg[6] = scr_gettext("scr_papcall_282")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_287")
        }
        break
    case 62:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_293")
        global.msg[3] = scr_gettext("scr_papcall_294")
        global.msg[4] = scr_gettext("scr_papcall_295")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_300")
        }
        break
    case 63:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_306")
        global.msg[3] = scr_gettext("scr_papcall_307")
        global.msg[4] = scr_gettext("scr_papcall_308")
        global.msg[5] = scr_gettext("scr_papcall_309")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_314")
        }
        break
    case 64:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_321")
        global.msg[3] = scr_gettext("scr_papcall_322")
        global.msg[4] = scr_gettext("scr_papcall_323")
        global.msg[5] = scr_gettext("scr_papcall_324")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_329")
        }
        break
    case 65:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_336")
        global.msg[3] = scr_gettext("scr_papcall_337")
        global.msg[4] = scr_gettext("scr_papcall_338")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_343")
        }
        break
    case 66:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_349")
        global.msg[3] = scr_gettext("scr_papcall_350")
        global.msg[4] = scr_gettext("scr_papcall_351")
        global.msg[5] = scr_gettext("scr_papcall_352")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_357")
        }
        break
    case 67:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_363")
        global.msg[3] = scr_gettext("scr_papcall_364")
        global.msg[4] = scr_gettext("scr_papcall_365")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_370")
        }
        break
    case 68:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_376")
        global.msg[3] = scr_gettext("scr_papcall_377")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_382")
        }
        if instance_exists(obj_papyrus_room)
            obj_papyrus_room.callsprite = 1
        break
    case 69:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_389")
        global.msg[3] = scr_gettext("scr_papcall_390")
        if (u == 1)
        {
            global.msg[2] = scr_gettext("scr_papcall_394")
            global.msg[3] = scr_gettext("scr_papcall_395")
            scr_undface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_397")
            global.msg[6] = scr_gettext("scr_papcall_398")
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_400")
            global.msg[9] = scr_gettext("scr_papcall_401")
            scr_undface(10, 0)
            global.msg[11] = scr_gettext("scr_papcall_403")
            global.msg[12] = scr_gettext("scr_papcall_404")
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_410")
        }
        break
    case 71:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_416")
        global.msg[3] = scr_gettext("scr_papcall_417")
        global.msg[4] = scr_gettext("scr_papcall_418")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_423")
            global.msg[3] = scr_gettext("scr_papcall_424")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_430")
            global.msg[3] = scr_gettext("scr_papcall_431")
            global.msg[4] = scr_gettext("scr_papcall_432")
            global.msg[5] = scr_gettext("scr_papcall_433")
            global.msg[6] = scr_gettext("scr_papcall_434")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_439")
            }
        }
        break
    case 73:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_448")
        global.msg[3] = scr_gettext("scr_papcall_449")
        global.msg[4] = scr_gettext("scr_papcall_450")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_455")
        }
        if (u == 1)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_461")
            scr_undface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_463")
            global.msg[5] = scr_gettext("scr_papcall_464")
            global.msg[6] = scr_gettext("scr_papcall_465")
            scr_papface(7, 5)
            global.msg[8] = scr_gettext("scr_papcall_467")
            if (global.flag[462] >= 1)
            {
                scr_papface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_472")
                scr_undface(3, 7)
                global.msg[4] = scr_gettext("scr_papcall_474")
                global.msg[5] = scr_gettext("scr_papcall_475")
                global.msg[6] = scr_gettext("scr_papcall_476")
            }
        }
        break
    case 74:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_487")
        global.msg[3] = scr_gettext("scr_papcall_488")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_493")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_499")
            global.msg[3] = scr_gettext("scr_papcall_500")
            global.msg[4] = scr_gettext("scr_papcall_501")
            global.msg[5] = scr_gettext("scr_papcall_502")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_507")
            }
        }
        break
    case 77:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_516")
        global.msg[3] = scr_gettext("scr_papcall_517")
        global.msg[4] = scr_gettext("scr_papcall_518")
        global.msg[5] = scr_gettext("scr_papcall_519")
        global.msg[6] = scr_gettext("scr_papcall_520")
        global.msg[7] = scr_gettext("scr_papcall_521")
        global.msg[8] = scr_gettext("scr_papcall_522")
        global.msg[9] = scr_gettext("scr_papcall_523")
        global.msg[10] = scr_gettext("scr_papcall_524")
        global.msg[11] = scr_gettext("scr_papcall_525")
        global.msg[12] = scr_gettext("scr_papcall_526")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_531")
        }
        if (global.flag[283] == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_537")
            global.msg[3] = scr_gettext("scr_papcall_538")
            global.msg[4] = scr_gettext("scr_papcall_539")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_544")
            }
        }
        break
    case 76:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_554")
        global.msg[3] = scr_gettext("scr_papcall_555")
        global.msg[4] = scr_gettext("scr_papcall_556")
        global.msg[5] = scr_gettext("scr_papcall_557")
        global.msg[6] = scr_gettext("scr_papcall_558")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_563")
        }
        break
    case 81:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_572")
        global.msg[3] = scr_gettext("scr_papcall_573")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_578")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_584")
            scr_papface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_586")
            global.msg[5] = scr_gettext("scr_papcall_587")
            global.msg[6] = scr_gettext("scr_papcall_588")
            scr_undface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_590")
            scr_papface(9, 0)
            global.msg[10] = scr_gettext("scr_papcall_592")
            scr_undface(11, 6)
            global.msg[12] = scr_gettext("scr_papcall_594")
            scr_papface(13, 5)
            global.msg[14] = scr_gettext("scr_papcall_596")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_601")
            }
        }
        break
    case 82:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_610")
        global.msg[3] = scr_gettext("scr_papcall_611")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_616")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_622")
            scr_papface(3, 0)
            global.msg[4] = scr_gettext("scr_papcall_624")
            scr_undface(5, 9)
            global.msg[6] = scr_gettext("scr_papcall_626")
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_628")
            scr_undface(9, 6)
            global.msg[10] = scr_gettext("scr_papcall_630")
            if (global.flag[462] >= 1)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_635")
                scr_undface(3, 2)
                global.msg[4] = scr_gettext("scr_papcall_637")
                scr_papface(5, 0)
                global.msg[6] = scr_gettext("scr_papcall_639")
                global.msg[7] = scr_gettext("scr_papcall_640")
                scr_undface(8, 6)
                global.msg[9] = scr_gettext("scr_papcall_642")
            }
        }
        break
    case 83:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_660")
        global.msg[3] = scr_gettext("scr_papcall_661")
        global.msg[4] = scr_gettext("scr_papcall_662")
        global.msg[5] = scr_gettext("scr_papcall_663")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_668")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_674")
            global.msg[3] = scr_gettext("scr_papcall_675")
            global.msg[4] = scr_gettext("scr_papcall_676")
            global.msg[5] = scr_gettext("scr_papcall_677")
            global.msg[6] = scr_gettext("scr_papcall_678")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_683")
                global.msg[3] = scr_gettext("scr_papcall_684")
            }
        }
        break
    case 84:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_693")
        global.msg[3] = scr_gettext("scr_papcall_694")
        global.msg[4] = scr_gettext("scr_papcall_695")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_700")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_706")
            global.msg[3] = scr_gettext("scr_papcall_707")
            global.msg[4] = scr_gettext("scr_papcall_708")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_714")
                global.msg[3] = scr_gettext("scr_papcall_715")
            }
        }
        if (global.plot < 106)
        {
            global.msg[0] = scr_gettext("scr_papcall_722")
            global.msg[1] = scr_gettext("scr_papcall_723")
        }
        break
    case 85:
        scr_papface(1, 5)
        global.msg[2] = scr_gettext("scr_papcall_731")
        global.msg[3] = scr_gettext("scr_papcall_732")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_737")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_743")
            global.msg[3] = scr_gettext("scr_papcall_744")
            global.msg[4] = scr_gettext("scr_papcall_745")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 6)
                global.msg[2] = scr_gettext("scr_papcall_750")
                global.msg[3] = scr_gettext("scr_papcall_751")
            }
        }
        if (global.plot < 110)
        {
            global.msg[0] = scr_gettext("scr_papcall_757")
            global.msg[1] = scr_gettext("scr_papcall_758")
        }
        break
    case 86:
        scr_papface(1, 5)
        global.msg[2] = scr_gettext("scr_papcall_766")
        global.msg[3] = scr_gettext("scr_papcall_767")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_772")
            global.msg[3] = scr_gettext("scr_papcall_773")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_779")
            global.msg[3] = scr_gettext("scr_papcall_780")
            global.msg[4] = scr_gettext("scr_papcall_781")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_786")
            }
        }
        if (global.plot < 106)
        {
            global.msg[0] = scr_gettext("scr_papcall_792")
            global.msg[1] = scr_gettext("scr_papcall_793")
        }
        break
    case 87:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_801")
        global.msg[3] = scr_gettext("scr_papcall_802")
        global.msg[4] = scr_gettext("scr_papcall_803")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_808")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_814")
            global.msg[3] = scr_gettext("scr_papcall_815")
            global.msg[4] = scr_gettext("scr_papcall_816")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 6)
                global.msg[2] = scr_gettext("scr_papcall_821")
            }
        }
        break
    case 88:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_830")
        global.msg[3] = scr_gettext("scr_papcall_831")
        global.msg[4] = scr_gettext("scr_papcall_832")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_837")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_843")
            global.msg[3] = scr_gettext("scr_papcall_844")
            global.msg[4] = scr_gettext("scr_papcall_845")
            global.msg[5] = scr_gettext("scr_papcall_846")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_851")
            }
        }
        break
    case 89:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_861")
        if (u == 1)
        {
            scr_undface(1, 9)
            global.msg[2] = scr_gettext("scr_papcall_866")
        }
        break
    case 90:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_876")
        global.msg[3] = scr_gettext("scr_papcall_877")
        global.msg[4] = scr_gettext("scr_papcall_878")
        global.msg[5] = scr_gettext("scr_papcall_879")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_885")
        }
        if (u == 1)
        {
            scr_undface(1, 7)
            global.msg[2] = scr_gettext("scr_papcall_891")
            global.msg[3] = scr_gettext("scr_papcall_892")
            global.msg[4] = scr_gettext("scr_papcall_893")
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_895")
            global.msg[7] = scr_gettext("scr_papcall_896")
            scr_undface(8, 1)
            global.msg[9] = scr_gettext("scr_papcall_898")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_903")
                global.msg[3] = scr_gettext("scr_papcall_904")
            }
        }
        break
    case 91:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_915")
        global.msg[3] = scr_gettext("scr_papcall_916")
        global.msg[4] = scr_gettext("scr_papcall_917")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_922")
        }
        if (u == 1)
        {
            scr_undface(1, 7)
            global.msg[2] = scr_gettext("scr_papcall_928")
            global.msg[3] = scr_gettext("scr_papcall_929")
            global.msg[4] = scr_gettext("scr_papcall_930")
            global.msg[5] = scr_gettext("scr_papcall_931")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_936")
            }
        }
        if (global.plot < 110 || (global.flag[5] >= 90 && obj_mainchara.x > 580))
        {
            global.msg[0] = scr_gettext("scr_papcall_942")
            global.msg[1] = scr_gettext("scr_papcall_943")
        }
        break
    case 92:
        scr_papface(1, 2)
        global.msg[2] = scr_gettext("scr_papcall_950")
        global.msg[3] = scr_gettext("scr_papcall_951")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_956")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_962")
            global.msg[3] = scr_gettext("scr_papcall_963")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_968")
            }
        }
        if (global.plot < 110)
        {
            global.msg[0] = scr_gettext("scr_papcall_974")
            global.msg[1] = scr_gettext("scr_papcall_975")
        }
        break
    case 93:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_982")
        global.msg[3] = scr_gettext("scr_papcall_983")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_988")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_994")
            global.msg[3] = scr_gettext("scr_papcall_995")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1000")
            }
        }
        if (global.plot < 110)
        {
            global.msg[0] = scr_gettext("scr_papcall_1006")
            global.msg[1] = scr_gettext("scr_papcall_1007")
        }
        break
    case 94:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1014")
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1019")
        }
        break
    case 95:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1029")
        global.msg[3] = scr_gettext("scr_papcall_1030")
        global.msg[4] = scr_gettext("scr_papcall_1031")
        if instance_exists(obj_sans_room)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1036")
            global.msg[3] = scr_gettext("scr_papcall_1037")
            global.msg[4] = scr_gettext("scr_papcall_1038")
            global.msg[5] = scr_gettext("scr_papcall_1039")
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1046")
        }
        if (u == 1)
        {
            scr_undface(1, 9)
            global.msg[2] = scr_gettext("scr_papcall_1052")
            global.msg[3] = scr_gettext("scr_papcall_1053")
            global.msg[4] = scr_gettext("scr_papcall_1054")
            global.msg[5] = scr_gettext("scr_papcall_1055")
            global.msg[6] = scr_gettext("scr_papcall_1056")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1062")
            }
        }
        break
    case 96:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1071")
        global.msg[3] = scr_gettext("scr_papcall_1072")
        scr_sansface(4, 1)
        global.msg[5] = scr_gettext("scr_papcall_1074")
        scr_papface(6, 1)
        global.msg[7] = scr_gettext("scr_papcall_1076")
        if (global.flag[462] >= 1)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_1081")
            scr_sansface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_1083")
            scr_papface(5, 4)
            global.msg[6] = scr_gettext("scr_papcall_1085")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1097")
            global.msg[3] = scr_gettext("scr_papcall_1098")
            global.msg[4] = scr_gettext("scr_papcall_1099")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1104")
            }
        }
        break
    case 98:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1113")
        global.msg[3] = scr_gettext("scr_papcall_1114")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1120")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1126")
            global.msg[3] = scr_gettext("scr_papcall_1127")
            global.msg[4] = scr_gettext("scr_papcall_1128")
            global.msg[5] = scr_gettext("scr_papcall_1129")
            global.msg[6] = scr_gettext("scr_papcall_1130")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1136")
                global.msg[3] = scr_gettext("scr_papcall_1137")
            }
        }
        break
    case 99:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1146")
        global.msg[3] = scr_gettext("scr_papcall_1147")
        global.msg[4] = scr_gettext("scr_papcall_1148")
        global.msg[5] = scr_gettext("scr_papcall_1149")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1155")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1161")
            global.msg[3] = scr_gettext("scr_papcall_1162")
            global.msg[4] = scr_gettext("scr_papcall_1163")
            global.msg[5] = scr_gettext("scr_papcall_1164")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1170")
                global.msg[3] = scr_gettext("scr_papcall_1171")
            }
        }
        break
    case 100:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1180")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1186")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1192")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1198")
            }
        }
        break
    case 101:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1206")
        global.msg[3] = scr_gettext("scr_papcall_1207")
        global.msg[4] = scr_gettext("scr_papcall_1208")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1214")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1220")
            global.msg[3] = scr_gettext("scr_papcall_1221")
            global.msg[4] = scr_gettext("scr_papcall_1222")
            global.msg[5] = scr_gettext("scr_papcall_1223")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1229")
            }
        }
        break
    case 102:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1239")
        global.msg[3] = scr_gettext("scr_papcall_1240")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1246")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1252")
            global.msg[3] = scr_gettext("scr_papcall_1253")
            global.msg[4] = scr_gettext("scr_papcall_1254")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1259")
            }
        }
        break
    case 103:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1269")
        global.msg[3] = scr_gettext("scr_papcall_1270")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1276")
            global.msg[3] = scr_gettext("scr_papcall_1277")
            global.msg[4] = scr_gettext("scr_papcall_1278")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1291")
            global.msg[3] = scr_gettext("scr_papcall_1292")
            global.msg[4] = scr_gettext("scr_papcall_1293")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1298")
            }
        }
        break
    case 104:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1308")
        if (global.flag[86] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1313")
            global.msg[3] = scr_gettext("scr_papcall_1314")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1320")
            global.msg[3] = scr_gettext("scr_papcall_1321")
            if (global.flag[86] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1326")
                global.msg[3] = scr_gettext("scr_papcall_1327")
            }
        }
        break
    case 105:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1336")
        global.msg[3] = scr_gettext("scr_papcall_1337")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1342")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1348")
            global.msg[3] = scr_gettext("scr_papcall_1349")
            global.msg[4] = scr_gettext("scr_papcall_1350")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1355")
            }
        }
        break
    case 106:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1365")
        global.msg[3] = scr_gettext("scr_papcall_1366")
        if instance_exists(obj_mkid_actor)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1372")
            global.msg[3] = scr_gettext("scr_papcall_1373")
            global.msg[4] = scr_gettext("scr_papcall_1374")
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1380")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1386")
            global.msg[3] = scr_gettext("scr_papcall_1387")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1392")
            }
        }
        break
    case 107:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1402")
        global.msg[3] = scr_gettext("scr_papcall_1403")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1409")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1415")
            global.msg[3] = scr_gettext("scr_papcall_1416")
            global.msg[4] = scr_gettext("scr_papcall_1417")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1422")
            }
        }
        break
    case 108:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1431")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1436")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1442")
            global.msg[3] = scr_gettext("scr_papcall_1443")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 7)
                global.msg[2] = scr_gettext("scr_papcall_1448")
            }
        }
        break
    case 109:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1458")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1463")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1469")
            global.msg[3] = scr_gettext("scr_papcall_1470")
            global.msg[4] = scr_gettext("scr_papcall_1471")
            global.msg[5] = scr_gettext("scr_papcall_1472")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_1477")
            }
        }
        break
    case 113:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1488")
        global.msg[3] = scr_gettext("scr_papcall_1489")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1494")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1500")
            global.msg[3] = scr_gettext("scr_papcall_1501")
            global.msg[4] = scr_gettext("scr_papcall_1502")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1507")
            }
        }
        if (global.plot < 116)
        {
            global.msg[0] = scr_gettext("scr_papcall_1513")
            global.msg[1] = scr_gettext("scr_papcall_1514")
        }
        break
    case 114:
        scr_papface(1, 2)
        global.msg[2] = scr_gettext("scr_papcall_1522")
        global.msg[3] = scr_gettext("scr_papcall_1523")
        global.msg[4] = scr_gettext("scr_papcall_1524")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1529")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1535")
            global.msg[3] = scr_gettext("scr_papcall_1536")
            global.msg[4] = scr_gettext("scr_papcall_1537")
            global.msg[5] = scr_gettext("scr_papcall_1538")
            global.msg[6] = scr_gettext("scr_papcall_1539")
            global.msg[7] = scr_gettext("scr_papcall_1540")
            global.msg[8] = scr_gettext("scr_papcall_1541")
            global.msg[9] = scr_gettext("scr_papcall_1542")
            global.msg[10] = scr_gettext("scr_papcall_1543")
            global.msg[11] = scr_gettext("scr_papcall_1544")
            global.msg[12] = scr_gettext("scr_papcall_1545")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1550")
            }
        }
        if (global.plot < 116)
        {
            global.msg[0] = scr_gettext("scr_papcall_1557")
            global.msg[1] = scr_gettext("scr_papcall_1558")
        }
        break
    case 115:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1566")
        global.msg[3] = scr_gettext("scr_papcall_1567")
        global.msg[4] = scr_gettext("scr_papcall_1568")
        global.msg[5] = scr_gettext("scr_papcall_1569")
        global.msg[6] = scr_gettext("scr_papcall_1570")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1575")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1581")
            global.msg[3] = scr_gettext("scr_papcall_1582")
            global.msg[4] = scr_gettext("scr_papcall_1583")
            global.msg[5] = scr_gettext("scr_papcall_1584")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1590")
            }
        }
        if (global.plot < 116)
        {
            global.msg[0] = scr_gettext("scr_papcall_1596")
            global.msg[1] = scr_gettext("scr_papcall_1597")
        }
        break
    case 116:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1604")
        global.msg[3] = scr_gettext("scr_papcall_1605")
        global.msg[4] = scr_gettext("scr_papcall_1606")
        global.msg[5] = scr_gettext("scr_papcall_1607")
        global.msg[6] = scr_gettext("scr_papcall_1608")
        global.msg[7] = scr_gettext("scr_papcall_1609")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1614")
        }
        if (global.flag[176] == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = "\\E3LEMONS^1, YOU SAY...?/"
            global.msg[3] = "\\E1WAIT A SECOND^1.&DID SANS PUT&YOU UP TO THIS?/"
            global.msg[4] = "\\E0GOOD!!!^1!&I LOVE LEMONS!/"
            global.msg[5] = "THE RIPE&AND RICH&YELLOW COLOR.../"
            global.msg[6] = "IT REMINDS ME&OF MY BESTEST&FRIEND!/"
            global.msg[7] = "FLOWERY!/%%"
            global.flag[176] = 2
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1620")
            global.msg[3] = scr_gettext("scr_papcall_1621")
            scr_undface(4, 1)
            global.msg[5] = scr_gettext("scr_papcall_1623")
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("scr_papcall_1625")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1632")
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_1634")
            }
        }
        break
    case 117:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1641")
        global.msg[3] = scr_gettext("scr_papcall_1642")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1647")
            global.msg[3] = scr_gettext("scr_papcall_1648")
        }
        if instance_exists(obj_papyrus_room)
        {
            global.msg[2] = scr_gettext("scr_papcall_1653")
            global.msg[3] = scr_gettext("scr_papcall_1654")
        }
        if (u == 1)
        {
            if (global.flag[389] < 5)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1662")
                global.msg[3] = scr_gettext("scr_papcall_1663")
                global.msg[4] = scr_gettext("scr_papcall_1664")
                scr_undface(5, 1)
                global.msg[6] = scr_gettext("scr_papcall_1666")
                global.msg[7] = scr_gettext("scr_papcall_1667")
                scr_papface(8, 0)
                global.msg[9] = scr_gettext("scr_papcall_1669")
                scr_undface(10, 9)
                global.msg[11] = scr_gettext("scr_papcall_1671")
                scr_papface(12, 0)
                global.msg[13] = scr_gettext("scr_papcall_1673")
                global.msg[14] = scr_gettext("scr_papcall_1674")
                if (global.flag[462] > 0)
                {
                    scr_papface(1, 3)
                    global.msg[2] = scr_gettext("scr_papcall_1680")
                    scr_undface(3, 9)
                    global.msg[4] = scr_gettext("scr_papcall_1682")
                    scr_papface(5, 0)
                    global.msg[6] = scr_gettext("scr_papcall_1684")
                    global.msg[7] = scr_gettext("scr_papcall_1685")
                    scr_undface(8, 6)
                    global.msg[9] = scr_gettext("scr_papcall_1687")
                }
            }
            else
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1694")
                global.msg[3] = scr_gettext("scr_papcall_1695")
                global.msg[4] = scr_gettext("scr_papcall_1696")
                if (global.flag[462] > 0)
                {
                    scr_undface(1, 0)
                    global.msg[2] = scr_gettext("scr_papcall_1701")
                    global.msg[3] = scr_gettext("scr_papcall_1702")
                }
            }
        }
        break
    case 119:
        scr_papface(1, 4)
        global.msg[2] = scr_gettext("scr_papcall_1714")
        global.msg[3] = scr_gettext("scr_papcall_1715")
        global.msg[4] = scr_gettext("scr_papcall_1716")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1721")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1727")
            global.msg[3] = scr_gettext("scr_papcall_1728")
            global.msg[4] = scr_gettext("scr_papcall_1729")
            global.msg[5] = scr_gettext("scr_papcall_1730")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1736")
            }
        }
        break
    case 120:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1745")
        global.msg[3] = scr_gettext("scr_papcall_1746")
        global.msg[4] = scr_gettext("scr_papcall_1747")
        global.msg[5] = scr_gettext("scr_papcall_1748")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1754")
        }
        if (u == 1)
        {
            scr_undface(1, 6)
            global.msg[2] = scr_gettext("scr_papcall_1760")
            global.msg[3] = scr_gettext("scr_papcall_1761")
            global.msg[4] = scr_gettext("scr_papcall_1762")
            global.msg[5] = scr_gettext("scr_papcall_1763")
            global.msg[6] = scr_gettext("scr_papcall_1764")
            global.msg[7] = scr_gettext("scr_papcall_1765")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1771")
                global.msg[3] = scr_gettext("scr_papcall_1772")
            }
        }
        break
    case 121:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1781")
        global.msg[3] = scr_gettext("scr_papcall_1782")
        global.msg[4] = scr_gettext("scr_papcall_1783")
        global.msg[5] = scr_gettext("scr_papcall_1784")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1791")
            global.msg[3] = scr_gettext("scr_papcall_1792")
            global.msg[4] = scr_gettext("scr_papcall_1793")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1799")
            global.msg[3] = scr_gettext("scr_papcall_1800")
            global.msg[4] = scr_gettext("scr_papcall_1801")
            global.msg[5] = scr_gettext("scr_papcall_1802")
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("scr_papcall_1804")
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_1806")
            scr_papface(10, 0)
            global.msg[11] = scr_gettext("scr_papcall_1808")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1815")
            }
        }
        break
    case 122:
        scr_papface(1, 2)
        global.msg[2] = scr_gettext("scr_papcall_1825")
        global.msg[3] = scr_gettext("scr_papcall_1826")
        global.msg[4] = scr_gettext("scr_papcall_1827")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1832")
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1838")
            global.msg[3] = scr_gettext("scr_papcall_1839")
            global.msg[4] = scr_gettext("scr_papcall_1840")
            global.msg[5] = scr_gettext("scr_papcall_1841")
            global.msg[6] = scr_gettext("scr_papcall_1842")
            global.msg[7] = scr_gettext("scr_papcall_1843")
            global.msg[8] = scr_gettext("scr_papcall_1844")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1850")
            }
        }
        break
    case 124:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1859")
        global.msg[3] = scr_gettext("scr_papcall_1860")
        global.msg[4] = scr_gettext("scr_papcall_1861")
        global.msg[5] = scr_gettext("scr_papcall_1862")
        global.msg[6] = scr_gettext("scr_papcall_1863")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1868")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1874")
            global.msg[3] = scr_gettext("scr_papcall_1875")
            global.msg[4] = scr_gettext("scr_papcall_1876")
            global.msg[5] = scr_gettext("scr_papcall_1877")
            global.msg[6] = scr_gettext("scr_papcall_1878")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1883")
            }
        }
        break
    case 125:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1892")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1897")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1903")
            global.msg[3] = scr_gettext("scr_papcall_1904")
            global.msg[4] = scr_gettext("scr_papcall_1905")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1910")
            }
        }
        break
    case 126:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1919")
        global.msg[3] = scr_gettext("scr_papcall_1920")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 5)
            global.msg[2] = scr_gettext("scr_papcall_1925")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1931")
            global.msg[3] = scr_gettext("scr_papcall_1932")
            global.msg[4] = scr_gettext("scr_papcall_1933")
            global.msg[5] = scr_gettext("scr_papcall_1934")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1939")
            }
        }
        break
    case 127:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1948")
        global.msg[3] = scr_gettext("scr_papcall_1949")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1954")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1960")
            global.msg[3] = scr_gettext("scr_papcall_1961")
            global.msg[4] = scr_gettext("scr_papcall_1962")
            global.msg[5] = scr_gettext("scr_papcall_1963")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1968")
            }
        }
        break
    case 129:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1977")
        global.msg[3] = scr_gettext("scr_papcall_1978")
        global.msg[4] = scr_gettext("scr_papcall_1979")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1984")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1990")
            global.msg[3] = scr_gettext("scr_papcall_1991")
            global.msg[4] = scr_gettext("scr_papcall_1992")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1997")
            }
        }
        break
    case 130:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2007")
        global.msg[3] = scr_gettext("scr_papcall_2008")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2013")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2019")
            global.msg[3] = scr_gettext("scr_papcall_2020")
            global.msg[4] = scr_gettext("scr_papcall_2021")
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_2023")
            scr_undface(7, 1)
            global.msg[8] = scr_gettext("scr_papcall_2025")
            scr_papface(9, 3)
            global.msg[10] = scr_gettext("scr_papcall_2027")
            global.msg[11] = scr_gettext("scr_papcall_2028")
            scr_undface(12, 6)
            global.msg[13] = scr_gettext("scr_papcall_2030")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2035")
                scr_undface(3, 2)
                global.msg[4] = scr_gettext("scr_papcall_2037")
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case 131:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2051")
        global.msg[3] = scr_gettext("scr_papcall_2052")
        if (u == 1)
        {
            scr_undface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2058")
            global.msg[3] = scr_gettext("scr_papcall_2059")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2064")
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case 132:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2078")
        global.msg[3] = scr_gettext("scr_papcall_2079")
        global.msg[4] = scr_gettext("scr_papcall_2080")
        global.msg[5] = scr_gettext("scr_papcall_2081")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2088")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2094")
            global.msg[3] = scr_gettext("scr_papcall_2095")
            if (global.flag[98] == 1)
            {
                global.msg[3] = scr_gettext("scr_papcall_2098")
                global.msg[4] = scr_gettext("scr_papcall_2099")
                global.msg[5] = scr_gettext("scr_papcall_2100")
                global.msg[6] = scr_gettext("scr_papcall_2101")
            }
            if (global.flag[98] == 2)
            {
                global.msg[3] = scr_gettext("scr_papcall_2105")
                global.msg[4] = scr_gettext("scr_papcall_2106")
                global.msg[5] = scr_gettext("scr_papcall_2107")
                global.msg[6] = scr_gettext("scr_papcall_2108")
            }
            if (global.flag[98] == 0)
            {
                global.msg[3] = scr_gettext("scr_papcall_2112")
                global.msg[4] = scr_gettext("scr_papcall_2113")
                global.msg[5] = scr_gettext("scr_papcall_2114")
                global.msg[6] = scr_gettext("scr_papcall_2115")
                global.msg[7] = scr_gettext("scr_papcall_2116")
            }
            if (global.flag[462] > 0)
            {
                scr_undface(7, 1)
                global.msg[2] = scr_gettext("scr_papcall_2122")
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case 133:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2136")
        global.msg[3] = scr_gettext("scr_papcall_2137")
        global.msg[4] = scr_gettext("scr_papcall_2138")
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2144")
            global.msg[3] = scr_gettext("scr_papcall_2145")
            scr_undface(4, 2)
            global.msg[5] = scr_gettext("scr_papcall_2147")
            scr_papface(6, 5)
            global.msg[7] = scr_gettext("scr_papcall_2149")
            scr_undface(8, 2)
            global.msg[9] = scr_gettext("scr_papcall_2151")
            global.msg[10] = scr_gettext("scr_papcall_2152")
            scr_papface(11, 5)
            global.msg[12] = scr_gettext("scr_papcall_2154")
            global.msg[13] = scr_gettext("scr_papcall_2155")
            global.msg[14] = scr_gettext("scr_papcall_2156")
            scr_undface(15, 9)
            global.msg[16] = scr_gettext("scr_papcall_2158")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_2163")
                scr_undface(3, 4)
                global.msg[4] = scr_gettext("scr_papcall_2165")
                scr_papface(5, 0)
                global.msg[6] = scr_gettext("scr_papcall_2167")
                scr_undface(7, 9)
                global.msg[8] = scr_gettext("scr_papcall_2169")
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case 134:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2185")
        global.msg[3] = scr_gettext("scr_papcall_2186")
        global.msg[4] = scr_gettext("scr_papcall_2187")
        if (global.flag[462] > 0)
            global.msg[2] = scr_gettext("scr_papcall_2191")
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2198")
            global.msg[3] = scr_gettext("scr_papcall_2199")
            global.msg[4] = scr_gettext("scr_papcall_2200")
            global.msg[5] = scr_gettext("scr_papcall_2201")
            global.msg[6] = scr_gettext("scr_papcall_2202")
            global.msg[7] = scr_gettext("scr_papcall_2203")
            global.msg[8] = scr_gettext("scr_papcall_2204")
            scr_papface(9, 4)
            global.msg[10] = scr_gettext("scr_papcall_2206")
            scr_undface(11, 6)
            global.msg[12] = scr_gettext("scr_papcall_2208")
            scr_papface(13, 0)
            global.msg[14] = scr_gettext("scr_papcall_2210")
            scr_undface(15, 9)
            global.msg[16] = scr_gettext("scr_papcall_2212")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2217")
                global.msg[3] = scr_gettext("scr_papcall_2218")
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case 136:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2234")
        global.msg[3] = scr_gettext("scr_papcall_2235")
        global.msg[4] = scr_gettext("scr_papcall_2236")
        global.msg[5] = scr_gettext("scr_papcall_2237")
        if (global.flag[462] > 0)
            global.msg[2] = scr_gettext("scr_papcall_2241")
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2248")
            global.msg[3] = scr_gettext("scr_papcall_2249")
            scr_papface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_2251")
            scr_undface(6, 2)
            global.msg[7] = scr_gettext("scr_papcall_2253")
            scr_papface(8, 0)
            global.msg[9] = scr_gettext("scr_papcall_2255")
            scr_undface(10, 2)
            global.msg[11] = scr_gettext("scr_papcall_2257")
            scr_papface(12, 4)
            global.msg[13] = scr_gettext("scr_papcall_2259")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2265")
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_2267")
                scr_undface(5, 2)
                global.msg[6] = scr_gettext("scr_papcall_2269")
                scr_papface(7, 7)
                global.msg[8] = scr_gettext("scr_papcall_2271")
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case 137:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2285")
        global.msg[3] = scr_gettext("scr_papcall_2286")
        scr_sansface(4, 2)
        global.msg[5] = scr_gettext("scr_papcall_2288")
        scr_papface(6, 0)
        global.msg[7] = scr_gettext("scr_papcall_2290")
        if (global.flag[462] > 0)
            global.msg[2] = scr_gettext("scr_papcall_2295")
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2302")
            global.msg[3] = scr_gettext("scr_papcall_2303")
            scr_papface(4, 3)
            global.msg[5] = scr_gettext("scr_papcall_2305")
            global.msg[6] = scr_gettext("scr_papcall_2306")
            global.msg[7] = scr_gettext("scr_papcall_2307")
            scr_undface(8, 1)
            global.msg[9] = scr_gettext("scr_papcall_2309")
            global.msg[10] = scr_gettext("scr_papcall_2310")
            scr_papface(11, 7)
            global.msg[12] = scr_gettext("scr_papcall_2312")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 4)
                global.msg[2] = scr_gettext("scr_papcall_2319")
                scr_papface(3, 3)
                global.msg[4] = scr_gettext("scr_papcall_2321")
                scr_undface(5, 7)
                global.msg[6] = scr_gettext("scr_papcall_2323")
                global.msg[7] = scr_gettext("scr_papcall_2324")
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case 138:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2339")
        global.msg[3] = scr_gettext("scr_papcall_2340")
        if (global.flag[462] > 0)
        {
            global.msg[2] = scr_gettext("scr_papcall_2345")
            global.msg[3] = scr_gettext("scr_papcall_2346")
            global.msg[4] = scr_gettext("scr_papcall_2347")
        }
        if (u == 1)
        {
            scr_undface(1, 6)
            global.msg[2] = scr_gettext("scr_papcall_2354")
            global.msg[3] = scr_gettext("scr_papcall_2355")
            global.msg[4] = scr_gettext("scr_papcall_2356")
            global.msg[5] = scr_gettext("scr_papcall_2357")
            global.msg[6] = scr_gettext("scr_papcall_2358")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2363")
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case 141:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2377")
        global.msg[3] = scr_gettext("scr_papcall_2378")
        global.msg[4] = scr_gettext("scr_papcall_2379")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2384")
            global.msg[3] = scr_gettext("scr_papcall_2385")
            global.msg[4] = scr_gettext("scr_papcall_2386")
            global.msg[5] = scr_gettext("scr_papcall_2387")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2393")
            global.msg[3] = scr_gettext("scr_papcall_2394")
            global.msg[4] = scr_gettext("scr_papcall_2395")
            global.msg[5] = scr_gettext("scr_papcall_2396")
            global.msg[6] = scr_gettext("scr_papcall_2397")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2402")
            }
        }
        if (global.plot <= 125)
            global.msg[0] = scr_gettext("scr_papcall_2408")
        break
    case 142:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2416")
        global.msg[3] = scr_gettext("scr_papcall_2417")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2422")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2428")
            global.msg[3] = scr_gettext("scr_papcall_2429")
            global.msg[4] = scr_gettext("scr_papcall_2430")
            global.msg[5] = scr_gettext("scr_papcall_2431")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2436")
            }
        }
        break
    case 143:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2445")
        global.msg[3] = scr_gettext("scr_papcall_2446")
        global.msg[4] = scr_gettext("scr_papcall_2447")
        global.msg[5] = scr_gettext("scr_papcall_2448")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2453")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2459")
            scr_undface(3, 2)
            global.msg[4] = scr_gettext("scr_papcall_2461")
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_2463")
            scr_undface(7, 6)
            global.msg[8] = scr_gettext("scr_papcall_2465")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2470")
            }
        }
        break
    case 140:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2479")
        global.msg[3] = scr_gettext("scr_papcall_2480")
        global.msg[4] = scr_gettext("scr_papcall_2481")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2486")
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2492")
            scr_undface(3, 2)
            global.msg[4] = scr_gettext("scr_papcall_2494")
            scr_papface(5, 5)
            global.msg[6] = scr_gettext("scr_papcall_2496")
            scr_undface(7, 6)
            global.msg[8] = scr_gettext("scr_papcall_2498")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2503")
            }
        }
        break
    case 144:
        scr_papface(1, 5)
        global.msg[2] = scr_gettext("scr_papcall_2512")
        global.msg[3] = scr_gettext("scr_papcall_2513")
        global.msg[4] = scr_gettext("scr_papcall_2514")
        global.msg[5] = scr_gettext("scr_papcall_2515")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2520")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2526")
            global.msg[3] = scr_gettext("scr_papcall_2527")
            scr_papface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_2529")
            scr_undface(6, 6)
            global.msg[7] = scr_gettext("scr_papcall_2531")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 5)
                global.msg[2] = scr_gettext("scr_papcall_2536")
            }
        }
        break
    case 145:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2546")
        global.msg[3] = scr_gettext("scr_papcall_2547")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2552")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2558")
            global.msg[3] = scr_gettext("scr_papcall_2559")
            global.msg[4] = scr_gettext("scr_papcall_2560")
            global.msg[5] = scr_gettext("scr_papcall_2561")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2566")
            }
        }
        break
    case 147:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2576")
        global.msg[3] = scr_gettext("scr_papcall_2577")
        global.msg[4] = scr_gettext("scr_papcall_2578")
        global.msg[5] = scr_gettext("scr_papcall_2579")
        global.msg[6] = scr_gettext("scr_papcall_2580")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2585")
        }
        if (u == 1 && global.plot >= 131)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2591")
            global.msg[3] = scr_gettext("scr_papcall_2592")
            scr_papface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_2594")
            global.msg[6] = scr_gettext("scr_papcall_2595")
            global.msg[7] = scr_gettext("scr_papcall_2596")
            scr_undface(8, 2)
            global.msg[9] = scr_gettext("scr_papcall_2598")
            global.msg[10] = scr_gettext("scr_papcall_2599")
            scr_papface(11, 0)
            global.msg[12] = scr_gettext("scr_papcall_2601")
            if (global.flag[470] == 1)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2607")
            }
            if (global.flag[462] >= 1)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2614")
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_2616")
                global.msg[5] = scr_gettext("scr_papcall_2617")
            }
            global.flag[470] = 1
        }
        break
    case 149:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2637")
        global.msg[3] = scr_gettext("scr_papcall_2638")
        global.msg[4] = scr_gettext("scr_papcall_2639")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2645")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2651")
            global.msg[3] = scr_gettext("scr_papcall_2652")
            global.msg[4] = scr_gettext("scr_papcall_2653")
            global.msg[5] = scr_gettext("scr_papcall_2654")
            global.msg[6] = scr_gettext("scr_papcall_2655")
            global.msg[7] = scr_gettext("scr_papcall_2656")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2661")
            }
        }
        break
    case 151:
        scr_papface(1, 1)
        global.msg[2] = scr_gettext("scr_papcall_2671")
        global.msg[3] = scr_gettext("scr_papcall_2672")
        scr_sansface(4, 0)
        global.msg[5] = scr_gettext("scr_papcall_2674")
        global.msg[6] = scr_gettext("scr_papcall_2675")
        scr_papface(7, 4)
        global.msg[8] = scr_gettext("scr_papcall_2677")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2682")
            scr_sansface(3, 0)
            global.msg[4] = scr_gettext("scr_papcall_2684")
            scr_papface(5, 4)
            global.msg[6] = scr_gettext("scr_papcall_2686")
        }
        break
    case 153:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2697")
        global.msg[3] = scr_gettext("scr_papcall_2698")
        global.msg[4] = scr_gettext("scr_papcall_2699")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 5)
            global.msg[2] = scr_gettext("scr_papcall_2704")
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2710")
            scr_undface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_2712")
            scr_papface(5, 5)
            global.msg[6] = scr_gettext("scr_papcall_2714")
            scr_undface(7, 4)
            global.msg[8] = scr_gettext("scr_papcall_2716")
            scr_papface(9, 3)
            global.msg[10] = scr_gettext("scr_papcall_2718")
            scr_undface(11, 6)
            global.msg[12] = scr_gettext("scr_papcall_2720")
            scr_papface(13, 0)
            global.msg[14] = scr_gettext("scr_papcall_2722")
            scr_undface(15, 9)
            global.msg[16] = scr_gettext("scr_papcall_2724")
            scr_papface(17, 0)
            global.msg[18] = scr_gettext("scr_papcall_2726")
            global.msg[19] = scr_gettext("scr_papcall_2727")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2732")
            }
        }
        break
    case 158:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2742")
        global.msg[3] = scr_gettext("scr_papcall_2743")
        global.msg[4] = scr_gettext("scr_papcall_2744")
        global.msg[5] = scr_gettext("scr_papcall_2745")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2750")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2756")
            scr_undface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_2758")
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_2760")
            scr_undface(7, 2)
            global.msg[8] = scr_gettext("scr_papcall_2762")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2767")
            }
        }
        if (instance_exists(obj_sans_room) == 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2774")
            global.msg[3] = scr_gettext("scr_papcall_2775")
            global.msg[4] = scr_gettext("scr_papcall_2776")
            global.msg[5] = scr_gettext("scr_papcall_2777")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_2782")
            }
        }
        break
    case 162:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2796")
        global.msg[3] = scr_gettext("scr_papcall_2797")
        global.msg[4] = scr_gettext("scr_papcall_2798")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_2803")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2809")
            scr_undface(3, 2)
            global.msg[4] = scr_gettext("scr_papcall_2811")
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_2813")
            scr_undface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_2815")
            global.msg[9] = scr_gettext("scr_papcall_2816")
            global.msg[10] = scr_gettext("scr_papcall_2817")
            scr_papface(11, 5)
            global.msg[12] = scr_gettext("scr_papcall_2819")
            scr_undface(13, 6)
            global.msg[14] = scr_gettext("scr_papcall_2821")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 6)
                global.msg[2] = scr_gettext("scr_papcall_2826")
                scr_papface(3, 5)
                global.msg[4] = scr_gettext("scr_papcall_2828")
            }
        }
        break
    case 163:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2836")
        global.msg[3] = scr_gettext("scr_papcall_2837")
        global.msg[4] = scr_gettext("scr_papcall_2838")
        global.msg[5] = scr_gettext("scr_papcall_2839")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2844")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2850")
            global.msg[3] = scr_gettext("scr_papcall_2851")
            scr_undface(4, 2)
            global.msg[5] = scr_gettext("scr_papcall_2853")
            scr_papface(6, 3)
            global.msg[7] = scr_gettext("scr_papcall_2855")
            global.msg[8] = scr_gettext("scr_papcall_2856")
            global.msg[9] = scr_gettext("scr_papcall_2857")
            global.msg[10] = scr_gettext("scr_papcall_2858")
            global.msg[11] = scr_gettext("scr_papcall_2859")
            global.msg[12] = scr_gettext("scr_papcall_2860")
            scr_undface(13, 1)
            global.msg[14] = scr_gettext("scr_papcall_2862")
            scr_papface(15, 4)
            global.msg[16] = scr_gettext("scr_papcall_2864")
            global.msg[17] = scr_gettext("scr_papcall_2865")
            scr_undface(18, 2)
            global.msg[19] = scr_gettext("scr_papcall_2867")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2872")
                global.msg[3] = scr_gettext("scr_papcall_2873")
            }
        }
        break
    case 165:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2883")
        global.msg[3] = scr_gettext("scr_papcall_2884")
        global.msg[4] = scr_gettext("scr_papcall_2885")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2890")
        }
        if (u == 1)
        {
            if (day != 2 || day != 4)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_2896")
                global.msg[3] = scr_gettext("scr_papcall_2897")
                global.msg[4] = scr_gettext("scr_papcall_2898")
                global.msg[5] = scr_gettext("scr_papcall_2899")
                if (global.flag[462] > 0)
                {
                    scr_undface(1, 9)
                    global.msg[2] = scr_gettext("scr_papcall_2904")
                }
            }
            else
            {
                scr_undface(1, 0)
                global.msg[2] = "* Careful^1, the Royal&  Guard patrols that&  area./"
                global.msg[3] = "\\E4* I think it's RG03&  and RG04 today.../"
                global.msg[4] = "\\E0* It's funny^1, didn't think&  the bug would request to&  be with the cat girl./"
                global.msg[5] = "* I guess that's just&  how platonic work&  mates work!/%%"
                if (global.flag[462] > 0)
                {
                    scr_undface(1, 9)
                    global.msg[2] = "* I guess that's just&  how platonic work&  mates work!/%%"
                }
            }
        }
        break
    case 166:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2912")
        global.msg[3] = scr_gettext("scr_papcall_2913")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2918")
        }
        if (u == 1)
        {
            scr_undface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_2924")
            global.msg[3] = scr_gettext("scr_papcall_2925")
            global.msg[4] = scr_gettext("scr_papcall_2926")
            global.msg[5] = scr_gettext("scr_papcall_2927")
            global.msg[6] = scr_gettext("scr_papcall_2928")
            global.msg[7] = scr_gettext("scr_papcall_2929")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2934")
            }
        }
        if (global.plot <= 160)
            global.msg[0] = scr_gettext("scr_papcall_2940")
        break
    case 167:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2948")
        global.msg[3] = scr_gettext("scr_papcall_2949")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 6)
            global.msg[2] = scr_gettext("scr_papcall_2954")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2960")
            scr_undface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_2962")
            global.msg[5] = scr_gettext("scr_papcall_2963")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 4)
                global.msg[2] = scr_gettext("scr_papcall_2968")
            }
        }
        break
    case 170:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2980")
        global.msg[3] = scr_gettext("scr_papcall_2981")
        global.msg[4] = scr_gettext("scr_papcall_2982")
        global.msg[5] = scr_gettext("scr_papcall_2983")
        global.msg[6] = scr_gettext("scr_papcall_2984")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_2989")
        }
        break
    case 171:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2997")
        global.msg[3] = scr_gettext("scr_papcall_2998")
        global.msg[4] = scr_gettext("scr_papcall_2999")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3004")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3010")
            scr_undface(3, 0)
            global.msg[4] = scr_gettext("scr_papcall_3012")
            global.msg[5] = scr_gettext("scr_papcall_3013")
            global.msg[6] = scr_gettext("scr_papcall_3014")
            scr_papface(7, 5)
            global.msg[8] = scr_gettext("scr_papcall_3016")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 5)
                global.msg[2] = scr_gettext("scr_papcall_3021")
            }
        }
        break
    case 172:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3030")
        global.msg[3] = scr_gettext("scr_papcall_3031")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3036")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3042")
            scr_undface(3, 2)
            global.msg[4] = scr_gettext("scr_papcall_3044")
            scr_papface(5, 5)
            global.msg[6] = scr_gettext("scr_papcall_3046")
            global.msg[7] = scr_gettext("scr_papcall_3047")
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_3049")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 5)
                global.msg[2] = scr_gettext("scr_papcall_3054")
            }
        }
        break
    case 164:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3063")
        global.msg[3] = scr_gettext("scr_papcall_3064")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3069")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_3075")
            scr_papface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_3077")
            scr_undface(5, 4)
            global.msg[6] = scr_gettext("scr_papcall_3079")
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_3081")
            scr_undface(9, 2)
            global.msg[10] = scr_gettext("scr_papcall_3083")
            scr_sansface(11, 1)
            global.msg[12] = scr_gettext("scr_papcall_3085")
            scr_papface(13, 4)
            global.msg[14] = scr_gettext("scr_papcall_3087")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3092")
            }
        }
        break
    case 179:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3102")
        global.msg[3] = scr_gettext("scr_papcall_3103")
        global.msg[4] = scr_gettext("scr_papcall_3104")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3109")
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3115")
            scr_undface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_3117")
            global.msg[5] = scr_gettext("scr_papcall_3118")
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("scr_papcall_3120")
            global.msg[8] = scr_gettext("scr_papcall_3121")
            scr_undface(9, 6)
            global.msg[10] = scr_gettext("scr_papcall_3123")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3128")
            }
        }
        if (global.plot <= 166)
            global.msg[0] = scr_gettext("scr_papcall_3135")
        break
    case 181:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3144")
        global.msg[3] = scr_gettext("scr_papcall_3145")
        global.msg[4] = scr_gettext("scr_papcall_3146")
        global.msg[5] = scr_gettext("scr_papcall_3147")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3152")
        }
        if (u == 1)
        {
            if (global.flag[402] == 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_3160")
                global.msg[3] = scr_gettext("scr_papcall_3161")
                global.msg[4] = scr_gettext("scr_papcall_3162")
                global.msg[5] = scr_gettext("scr_papcall_3163")
            }
            else
            {
                scr_undface(1, 4)
                global.msg[2] = scr_gettext("scr_papcall_3169")
                global.msg[3] = scr_gettext("scr_papcall_3170")
                global.msg[4] = scr_gettext("scr_papcall_3171")
                global.msg[5] = scr_gettext("scr_papcall_3172")
                global.msg[6] = scr_gettext("scr_papcall_3173")
            }
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3179")
                global.msg[3] = scr_gettext("scr_papcall_3180")
            }
        }
        break
    case 183:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3187")
        global.msg[3] = scr_gettext("scr_papcall_3188")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3194")
        }
        if (u == 1)
        {
            scr_undface(1, 6)
            global.msg[2] = scr_gettext("scr_papcall_3200")
            scr_papface(3, 0)
            global.msg[4] = scr_gettext("scr_papcall_3202")
            scr_undface(5, 9)
            global.msg[6] = scr_gettext("scr_papcall_3204")
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_3206")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_3211")
                scr_papface(3, 2)
                global.msg[4] = scr_gettext("scr_papcall_3213")
                global.msg[5] = scr_gettext("scr_papcall_3214")
            }
        }
        break
    case 184:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3224")
        global.msg[3] = scr_gettext("scr_papcall_3225")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3231")
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_3237")
            global.msg[3] = scr_gettext("scr_papcall_3238")
            scr_papface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_3240")
            global.msg[5] = scr_gettext("scr_papcall_3241")
            scr_undface(6, 9)
            global.msg[7] = scr_gettext("scr_papcall_3243")
            global.msg[8] = scr_gettext("scr_papcall_3244")
            global.msg[9] = scr_gettext("scr_papcall_3245")
            global.msg[10] = scr_gettext("scr_papcall_3246")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3251")
            }
        }
        break
    case 185:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3261")
        global.msg[3] = scr_gettext("scr_papcall_3262")
        global.msg[4] = scr_gettext("scr_papcall_3263")
        global.msg[5] = scr_gettext("scr_papcall_3264")
        global.msg[6] = scr_gettext("scr_papcall_3265")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 7)
            global.msg[2] = scr_gettext("scr_papcall_3270")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3276")
            scr_undface(3, 9)
            global.msg[4] = scr_gettext("scr_papcall_3278")
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_3280")
            scr_undface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_3282")
            scr_papface(9, 3)
            global.msg[10] = scr_gettext("scr_papcall_3284")
            scr_undface(11, 1)
            global.msg[12] = scr_gettext("scr_papcall_3286")
            scr_papface(13, 3)
            global.msg[14] = scr_gettext("scr_papcall_3288")
            scr_undface(15, 2)
            global.msg[16] = scr_gettext("scr_papcall_3290")
            scr_papface(17, 5)
            global.msg[18] = scr_gettext("scr_papcall_3292")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 4)
                global.msg[2] = scr_gettext("scr_papcall_3297")
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_3299")
                scr_undface(5, 4)
                global.msg[6] = scr_gettext("scr_papcall_3301")
                scr_papface(7, 4)
                global.msg[8] = scr_gettext("scr_papcall_3303")
                scr_undface(9, 9)
                global.msg[10] = scr_gettext("scr_papcall_3305")
                scr_papface(11, 0)
                global.msg[12] = scr_gettext("scr_papcall_3307")
                global.msg[13] = scr_gettext("scr_papcall_3308")
                scr_undface(14, 6)
                global.msg[15] = scr_gettext("scr_papcall_3310")
                scr_papface(16, 4)
                global.msg[17] = scr_gettext("scr_papcall_3312")
            }
        }
        break
    case 186:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3320")
        global.msg[3] = scr_gettext("scr_papcall_3321")
        global.msg[4] = scr_gettext("scr_papcall_3322")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3327")
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3333")
            scr_undface(3, 6)
            global.msg[4] = scr_gettext("scr_papcall_3335")
            global.msg[5] = scr_gettext("scr_papcall_3336")
            scr_papface(6, 3)
            global.msg[7] = scr_gettext("scr_papcall_3338")
            scr_undface(8, 2)
            global.msg[9] = scr_gettext("scr_papcall_3340")
            scr_papface(10, 5)
            global.msg[11] = scr_gettext("scr_papcall_3342")
            scr_undface(12, 9)
            global.msg[13] = scr_gettext("scr_papcall_3344")
            scr_papface(14, 7)
            global.msg[15] = scr_gettext("scr_papcall_3346")
            scr_undface(16, 2)
            global.msg[17] = scr_gettext("scr_papcall_3348")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 5)
                global.msg[2] = scr_gettext("scr_papcall_3353")
                scr_undface(3, 9)
                global.msg[4] = scr_gettext("scr_papcall_3355")
                global.msg[5] = scr_gettext("scr_papcall_3356")
            }
        }
        break
    case 214:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3364")
        global.msg[3] = scr_gettext("scr_papcall_3365")
        global.msg[4] = scr_gettext("scr_papcall_3366")
        global.msg[5] = scr_gettext("scr_papcall_3367")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3372")
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3378")
            global.msg[3] = scr_gettext("scr_papcall_3379")
            scr_undface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_3381")
            scr_papface(6, 3)
            global.msg[7] = scr_gettext("scr_papcall_3383")
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_3385")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3390")
                scr_undface(3, 9)
                global.msg[4] = scr_gettext("scr_papcall_3392")
            }
        }
        break
    case 156:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3401")
        global.msg[3] = scr_gettext("scr_papcall_3402")
        global.msg[4] = scr_gettext("scr_papcall_3403")
        global.msg[5] = scr_gettext("scr_papcall_3404")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3409")
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3415")
            global.msg[3] = scr_gettext("scr_papcall_3416")
            scr_undface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_3418")
            scr_papface(6, 3)
            global.msg[7] = scr_gettext("scr_papcall_3420")
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_3422")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3427")
            }
        }
        if instance_exists(obj_gaster_follower_a)
            global.msg[1] = scr_gettext("scr_papcall_3434")
        break
    case 157:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3441")
        global.msg[3] = scr_gettext("scr_papcall_3442")
        global.msg[4] = scr_gettext("scr_papcall_3443")
        global.msg[5] = scr_gettext("scr_papcall_3444")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3449")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3455")
            global.msg[3] = scr_gettext("scr_papcall_3456")
            scr_undface(4, 1)
            global.msg[5] = scr_gettext("scr_papcall_3458")
            global.msg[6] = scr_gettext("scr_papcall_3459")
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_3461")
            global.msg[9] = scr_gettext("scr_papcall_3462")
            scr_sansface(10, 2)
            global.msg[11] = scr_gettext("scr_papcall_3464")
            scr_papface(12, 1)
            global.msg[13] = scr_gettext("scr_papcall_3466")
            if (global.flag[462] > 0)
            {
                scr_sansface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_3471")
                scr_papface(3, 5)
                global.msg[4] = scr_gettext("scr_papcall_3473")
            }
        }
        break
    case 168:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3482")
        global.msg[3] = scr_gettext("scr_papcall_3483")
        global.msg[4] = scr_gettext("scr_papcall_3484")
        global.msg[5] = scr_gettext("scr_papcall_3485")
        global.msg[6] = scr_gettext("scr_papcall_3486")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3491")
            global.msg[3] = scr_gettext("scr_papcall_3492")
        }
        if (u == 1)
        {
            scr_undface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_3499")
            global.msg[3] = scr_gettext("scr_papcall_3500")
            scr_papface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_3502")
            global.msg[6] = scr_gettext("scr_papcall_3503")
            scr_undface(7, 1)
            global.msg[8] = scr_gettext("scr_papcall_3505")
            scr_papface(9, 3)
            global.msg[10] = scr_gettext("scr_papcall_3507")
            global.msg[11] = scr_gettext("scr_papcall_3508")
            global.msg[12] = scr_gettext("scr_papcall_3509")
            scr_undface(13, 6)
            global.msg[14] = scr_gettext("scr_papcall_3511")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3516")
                global.msg[3] = scr_gettext("scr_papcall_3517")
                global.msg[4] = scr_gettext("scr_papcall_3518")
                scr_undface(5, 1)
                global.msg[6] = scr_gettext("scr_papcall_3520")
                scr_papface(7, 2)
                global.msg[8] = scr_gettext("scr_papcall_3522")
                global.msg[9] = scr_gettext("scr_papcall_3523")
                scr_undface(10, 2)
                global.msg[11] = scr_gettext("scr_papcall_3525")
            }
        }
        if instance_exists(obj_gaster_follower_c)
            global.msg[1] = scr_gettext("scr_papcall_3533")
        break
    case 169:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3540")
        global.msg[3] = scr_gettext("scr_papcall_3541")
        global.msg[4] = scr_gettext("scr_papcall_3542")
        global.msg[5] = scr_gettext("scr_papcall_3543")
        global.msg[6] = scr_gettext("scr_papcall_3544")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3549")
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3555")
            global.msg[3] = scr_gettext("scr_papcall_3556")
            global.msg[4] = scr_gettext("scr_papcall_3557")
            scr_undface(5, 2)
            global.msg[6] = scr_gettext("scr_papcall_3559")
            global.msg[7] = scr_gettext("scr_papcall_3560")
            scr_papface(8, 3)
            global.msg[9] = scr_gettext("scr_papcall_3562")
            scr_undface(10, 9)
            global.msg[11] = scr_gettext("scr_papcall_3564")
            scr_papface(12, 0)
            global.msg[13] = scr_gettext("scr_papcall_3566")
            scr_undface(14, 6)
            global.msg[15] = scr_gettext("scr_papcall_3568")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3573")
                global.msg[3] = scr_gettext("scr_papcall_3574")
            }
        }
        if instance_exists(obj_gaster_follower_b)
            global.msg[1] = scr_gettext("scr_papcall_3582")
        break
    case 187:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3589")
        global.msg[3] = scr_gettext("scr_papcall_3590")
        global.msg[4] = scr_gettext("scr_papcall_3591")
        global.msg[5] = scr_gettext("scr_papcall_3592")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3597")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3603")
            global.msg[3] = scr_gettext("scr_papcall_3604")
            scr_undface(4, 9)
            global.msg[5] = scr_gettext("scr_papcall_3606")
            global.msg[6] = scr_gettext("scr_papcall_3607")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3612")
                global.msg[3] = scr_gettext("scr_papcall_3613")
                scr_undface(4, 2)
                global.msg[5] = scr_gettext("scr_papcall_3615")
            }
        }
        break
    case 159:
        scr_papface(1, 9)
        global.msg[2] = scr_gettext("scr_papcall_3625")
        global.msg[3] = scr_gettext("scr_papcall_3626")
        global.msg[4] = scr_gettext("scr_papcall_3627")
        global.msg[5] = scr_gettext("scr_papcall_3628")
        global.msg[6] = scr_gettext("scr_papcall_3629")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 9)
            global.msg[2] = scr_gettext("scr_papcall_3634")
            global.msg[3] = scr_gettext("scr_papcall_3635")
        }
        if (u == 1)
        {
            scr_undface(1, 9)
            global.msg[2] = scr_gettext("scr_papcall_3641")
            scr_papface(3, 9)
            global.msg[4] = scr_gettext("scr_papcall_3643")
            global.msg[5] = scr_gettext("scr_papcall_3644")
            global.msg[6] = scr_gettext("scr_papcall_3645")
            scr_undface(7, 2)
            global.msg[8] = scr_gettext("scr_papcall_3647")
            scr_papface(9, 9)
            global.msg[10] = scr_gettext("scr_papcall_3649")
            global.msg[11] = scr_gettext("scr_papcall_3650")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 6)
                global.msg[2] = scr_gettext("scr_papcall_3655")
                global.msg[3] = scr_gettext("scr_papcall_3656")
                scr_papface(4, 9)
                global.msg[5] = scr_gettext("scr_papcall_3658")
                global.msg[6] = scr_gettext("scr_papcall_3659")
                scr_undface(7, 9)
                global.msg[8] = scr_gettext("scr_papcall_3661")
            }
        }
        break
    case 161:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3671")
        global.msg[3] = scr_gettext("scr_papcall_3672")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3677")
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3683")
            scr_undface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_3685")
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_3687")
            scr_undface(7, 9)
            global.msg[8] = scr_gettext("scr_papcall_3689")
            scr_papface(9, 5)
            global.msg[10] = scr_gettext("scr_papcall_3691")
            scr_undface(11, 6)
            global.msg[12] = scr_gettext("scr_papcall_3693")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_3700")
            }
        }
        break
    case 180:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3710")
        if (global.flag[278] == 1)
        {
            global.msg[3] = scr_gettext("scr_papcall_3713")
            global.msg[4] = scr_gettext("scr_papcall_3714")
            global.msg[5] = scr_gettext("scr_papcall_3715")
        }
        else
        {
            global.msg[3] = scr_gettext("scr_papcall_3719")
            global.msg[4] = scr_gettext("scr_papcall_3720")
            global.msg[5] = scr_gettext("scr_papcall_3721")
            global.msg[6] = scr_gettext("scr_papcall_3722")
            global.msg[7] = scr_gettext("scr_papcall_3723")
            global.msg[8] = scr_gettext("scr_papcall_3724")
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3730")
            if (global.flag[278] == 1)
                global.msg[2] = scr_gettext("scr_papcall_3731")
        }
        break
    case 188:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3738")
        global.msg[3] = scr_gettext("scr_papcall_3739")
        global.msg[4] = scr_gettext("scr_papcall_3740")
        global.msg[5] = scr_gettext("scr_papcall_3741")
        global.msg[6] = scr_gettext("scr_papcall_3742")
        global.msg[7] = scr_gettext("scr_papcall_3743")
        global.msg[8] = scr_gettext("scr_papcall_3744")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3749")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3755")
            scr_undface(3, 4)
            global.msg[4] = scr_gettext("scr_papcall_3757")
            global.msg[5] = scr_gettext("scr_papcall_3758")
            scr_papface(6, 1)
            global.msg[7] = scr_gettext("scr_papcall_3760")
            global.msg[8] = scr_gettext("scr_papcall_3761")
            scr_undface(9, 7)
            global.msg[10] = scr_gettext("scr_papcall_3763")
            global.msg[11] = scr_gettext("scr_papcall_3764")
            global.msg[12] = scr_gettext("scr_papcall_3765")
            scr_papface(13, 0)
            global.msg[14] = scr_gettext("scr_papcall_3767")
            scr_undface(15, 9)
            global.msg[16] = scr_gettext("scr_papcall_3769")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_3775")
            }
        }
        break
    case 178:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3785")
        global.msg[3] = scr_gettext("scr_papcall_3786")
        global.msg[4] = scr_gettext("scr_papcall_3787")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3792")
            global.msg[3] = scr_gettext("scr_papcall_3793")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3799")
            global.msg[3] = scr_gettext("scr_papcall_3800")
            scr_undface(4, 1)
            global.msg[5] = scr_gettext("scr_papcall_3802")
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("scr_papcall_3804")
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_3806")
            scr_papface(10, 0)
            global.msg[11] = scr_gettext("scr_papcall_3808")
            scr_undface(12, 6)
            global.msg[13] = scr_gettext("scr_papcall_3810")
            scr_papface(14, 5)
            global.msg[15] = scr_gettext("scr_papcall_3812")
            scr_undface(16, 6)
            global.msg[17] = scr_gettext("scr_papcall_3814")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_3820")
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_3822")
                scr_undface(5, 1)
                global.msg[6] = scr_gettext("scr_papcall_3824")
                scr_papface(7, 2)
                global.msg[8] = scr_gettext("scr_papcall_3826")
            }
        }
        break
    case 176:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3836")
        global.msg[3] = scr_gettext("scr_papcall_3837")
        global.msg[4] = scr_gettext("scr_papcall_3838")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3844")
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3850")
            scr_undface(3, 9)
            global.msg[4] = scr_gettext("scr_papcall_3852")
            scr_papface(5, 0)
            global.msg[6] = scr_gettext("scr_papcall_3854")
            scr_undface(7, 2)
            global.msg[8] = scr_gettext("scr_papcall_3856")
            global.msg[9] = scr_gettext("scr_papcall_3857")
            scr_papface(10, 3)
            global.msg[11] = scr_gettext("scr_papcall_3859")
            scr_undface(12, 6)
            global.msg[13] = scr_gettext("scr_papcall_3861")
            scr_papface(14, 0)
            global.msg[15] = scr_gettext("scr_papcall_3863")
            scr_undface(16, 1)
            global.msg[17] = scr_gettext("scr_papcall_3865")
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_3872")
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_3874")
                global.msg[5] = scr_gettext("scr_papcall_3875")
            }
        }
        if (global.plot < 165)
            global.msg[1] = scr_gettext("scr_papcall_3880")
        break
    case 177:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3887")
        global.msg[3] = scr_gettext("scr_papcall_3888")
        global.msg[4] = scr_gettext("scr_papcall_3889")
        global.msg[5] = scr_gettext("scr_papcall_3890")
        global.msg[6] = scr_gettext("scr_papcall_3891")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3897")
        }
        if (u == 1)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_3903")
            scr_undface(3, 9)
            global.msg[4] = scr_gettext("scr_papcall_3905")
            scr_sansface(5, 2)
            global.msg[6] = scr_gettext("scr_papcall_3907")
            scr_papface(7, 1)
            global.msg[8] = scr_gettext("scr_papcall_3909")
            global.msg[9] = scr_gettext("scr_papcall_3910")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3918")
                global.msg[3] = scr_gettext("scr_papcall_3919")
            }
        }
        if (global.plot < 165)
            global.msg[1] = scr_gettext("scr_papcall_3924")
        break
    case 139:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3931")
        scr_sansface(3, 1)
        global.msg[4] = scr_gettext("scr_papcall_3933")
        scr_papface(5, 3)
        global.msg[6] = scr_gettext("scr_papcall_3935")
        scr_sansface(7, 1)
        global.msg[8] = scr_gettext("scr_papcall_3937")
        scr_papface(9, 3)
        global.msg[10] = scr_gettext("scr_papcall_3939")
        global.msg[11] = scr_gettext("scr_papcall_3940")
        scr_sansface(12, 1)
        global.msg[13] = scr_gettext("scr_papcall_3942")
        global.msg[14] = scr_gettext("scr_papcall_3943")
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3948")
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3956")
            global.msg[3] = scr_gettext("scr_papcall_3957")
            scr_papface(4, 3)
            global.msg[5] = scr_gettext("scr_papcall_3959")
            global.msg[6] = scr_gettext("scr_papcall_3960")
            scr_undface(7, 1)
            global.msg[8] = scr_gettext("scr_papcall_3962")
            global.msg[9] = scr_gettext("scr_papcall_3963")
            scr_papface(10, 0)
            global.msg[11] = scr_gettext("scr_papcall_3965")
            scr_undface(12, 6)
            global.msg[13] = scr_gettext("scr_papcall_3967")
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3972")
                global.msg[3] = scr_gettext("scr_papcall_3973")
                scr_undface(4, 2)
                global.msg[5] = scr_gettext("scr_papcall_3975")
                scr_papface(6, 5)
                global.msg[7] = scr_gettext("scr_papcall_3977")
                global.msg[8] = scr_gettext("scr_papcall_3978")
                global.msg[9] = scr_gettext("scr_papcall_3979")
                scr_undface(10, 9)
                global.msg[11] = scr_gettext("scr_papcall_3981")
                scr_papface(12, 0)
                global.msg[13] = scr_gettext("scr_papcall_3983")
                scr_undface(14, 2)
                global.msg[15] = scr_gettext("scr_papcall_3985")
            }
            if instance_exists(obj_royal_rabbitbounce)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_3993")
                global.msg[3] = scr_gettext("scr_papcall_3994")
                global.msg[4] = scr_gettext("scr_papcall_3995")
                global.msg[5] = scr_gettext("scr_papcall_3996")
                global.msg[6] = scr_gettext("scr_papcall_3997")
                global.msg[7] = scr_gettext("scr_papcall_3998")
                global.msg[8] = scr_gettext("scr_papcall_3999")
                global.msg[9] = scr_gettext("scr_papcall_4000")
                global.msg[10] = scr_gettext("scr_papcall_4001")
                global.msg[11] = scr_gettext("scr_papcall_4002")
                global.msg[12] = scr_gettext("scr_papcall_4003")
                global.msg[13] = scr_gettext("scr_papcall_4004")
                global.msg[14] = scr_gettext("scr_papcall_4005")
                global.msg[15] = scr_gettext("scr_papcall_4006")
                global.msg[16] = scr_gettext("scr_papcall_4007")
                global.flag[401] = 1
                if (global.flag[462] > 0)
                {
                    scr_undface(1, 2)
                    global.msg[2] = scr_gettext("scr_papcall_4013")
                }
            }
            if (global.flag[350] == 1)
                global.msg[1] = scr_gettext("scr_papcall_4019")
        }
        break
    case 346:
        scr_papface(1, 0)
        global.msg[2] = "YOU'RE HEADING&TOWARDS THE&TEEN HANGOUT SPOT!/"
        global.msg[3] = "I GUESS WE&HAVE SOMETHING IN&COMMON./"
        global.msg[4] = "WE BOTH LIKE&TO SPEND TIME.../"
        global.msg[5] = "STANDING IN THE&MIDDLE OF&THE FOREST!/"
        global.msg[6] = "NYEH HEH HEH!/%%"
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = "THOUGH^1, NOW&THAT I THINK&ABOUT IT.../"
            global.msg[3] = "\\E0THEY AREN'T&SKELETONS^1, SO&THEY'LL GET COLD!/"
            global.msg[4] = "NOT PAPYRUS^1!&I LOVE THE&FREEZING COLD!/"
            global.msg[5] = "I HEAR IT'S&GOOD FOR&YOUR BONES./"
            global.msg[6] = "YOU SHOULD TRY&IT SOME TIME!/%%"
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = "YOU'RE HEADING&TOWARDS THE&TEEN HANGOUT SPOT!/"
            scr_undface(3, 0)
            global.msg[4] = "* Don't they just&  stand around and&  beat each other up?/"
            global.msg[5] = "* That doesn't sound&  like a fun&  place to hang out./"
            scr_papface(6, 2)
            global.msg[7] = "WHAT ARE YOU&TALKING ABOUT...?/"
            global.msg[8] = "WE DO THAT&ALL THE TIME!/"
            scr_undface(9, 9)
            global.msg[10] = "* YEAH^1, BUT..!/"
            global.msg[11] = "* Actually^1, YEAH!&* YOU'RE RIGHT!!!/"
            global.msg[12] = "* That sounds like&  a ton of fun!!!/%%"
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = "* Having fun yet^1?&* I know I am!!!/"
                scr_papface(3, 5)
                global.msg[4] = "UNDYNE^1, PLEASE PUT&THE SKELETON ON&THE FLOOR./%%"
            }
        }
        break
    case 347:
        scr_papface(1, 0)
        global.msg[2] = "I THINK THAT'S&WHERE THE TWIN&CHILLDRAKES PATROL./"
        global.msg[3] = "THEY'RE GUARDING&THE LOCAL TEEN&HANGOUT SPOT./"
        global.msg[4] = "I'D BE CAREFUL&IF I WERE YOU./"
        global.msg[5] = "\\E1THEY DON'T HAVE&ANY SENSE OF&FASHION^1. NONE!/"
        global.msg[6] = "\\E3THEY TOLD ME&THAT MY BATTLE&BODY LOOKED.../"
        global.msg[7] = "\"CHILDISH.^1\"&\\E0THEY'RE PROBABLY&JUST JEALOUS./"
        global.msg[8] = "THAT'S WHAT SANS&TOLD ME^1, ANYWAY!!/%%"
        if (global.flag[462] == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = "ARE THEY NOT&LETTING YOU&THROUGH?/"
            global.msg[3] = "HMM..^2.&AH^1, I'VE GOT&AN IDEA!/"
            global.msg[4] = "YOU CAN'T WEAR&STUFF PICKED UP&OFF OF THE GROUND./"
            global.msg[5] = "MAYBE YOU SHOULD&TRY BUYING SOME&BETTER CLOTHES!/%%"
        }
        if (global.flag[462] > 1)
        {
            scr_papface(1, 0)
            global.msg[2] = "WELL^1?&DID IT WORK?/%%"
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = "* Those two..^1.&* \\E0I think they're&  just bodyguards?/"
            global.msg[3] = "* I don't ever&  see them help&  out the others./"
            global.msg[4] = "\\E9* Maybe they just like&  standing around and&  guarding the place?/"
            scr_papface(5, 2)
            global.msg[6] = "MONSTERS AFTER&MY OWN HEART./"
            global.msg[7] = "\\E0THEY ENJOY THE&CRAFT LIKE&A HOBBY!!/"
            scr_undface(8, 9)
            global.msg[9] = "* Well^1, probably&  not as much as&  you do^1, Papyrus./%%"
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = "* Having trouble&  getting past them?/"
                global.msg[3] = "* Maybe trying to&  get in while wearing&  dusty clothes.../"
                global.msg[4] = "* ...wasn't the best idea./"
                global.msg[5] = "\\E6* Hey^1, maybe Papyrus&  and I could help you!/"
                scr_papface(6, 9)
                global.msg[7] = "SORRY^1, HUMAN^1!&THESE LOOKS ARE&PAPYRUS EXCLUSIVE!!/"
                scr_undface(8, 0)
                global.msg[9] = "* Guess not^1, then./%%"
            }
        }
        break
    case 348:
        scr_papface(1, 0)
        global.msg[2] = "THAT'S THE LAKE^1!&\\E3OR^1, ONE OF&THEM^1, ANYWAY./"
        global.msg[3] = "\\E0DON'T WORRY&ABOUT STEPPING ON&THE ICE./"
        global.msg[4] = "NOBODY'S FALLEN&THROUGH IN&ABOUT.../"
        global.msg[5] = "\\E5UHHHH...^1.&YOU'LL PROBABLY&BE FINE./%%"
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = "ARE YOU STILL&STANDING ON&SOLID GROUND?/"
            global.msg[3] = "\\E3I DON'T THINK&UNDYNE WOULD.../"
            global.msg[4] = "\\E5WELL^1, I'D NEVER&GET INTO THE&GUARD IF.../"
            global.msg[5] = "\\E0PLEASE BE CAREFUL./%%"
        }
        if (u == 1)
        {
            scr_undface(1, 9)
            global.msg[2] = "* Oh^1, are you&  going ice fishing?/"
            global.msg[3] = "* Just be careful&  not to fall&  through!/"
            scr_papface(4, 3)
            global.msg[5] = "HMMMM..^1.&GOING FISHING..^1.&FISH....^1./"
            global.msg[6] = "AREN'T YOU A&FISH TOO^1, UNDYNE?/"
            scr_undface(7, 9)
            global.msg[8] = "* Yeah^1.&* Well^1, kind of^1.&* What about it?/"
            scr_papface(9, 3)
            global.msg[10] = "NEVERMIND./%%"
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = "* Well^1, did you&  catch anything?/"
                scr_sansface(3, 0)
                global.msg[4] = "* if you keep any^1,&  i'll help fry 'em./"
                scr_papface(5, 5)
                global.msg[6] = "AM I THE ONLY&ONE WHO THINKS&THIS IS WEIRD?/%%"
            }
        }
        break
    case 351:
        scr_papface(1, 0)
        global.msg[2] = "AH^1, THAT MUST&BE WHERE THE&LOCAL TEENS HANG!!/"
        global.msg[3] = "\\E3I'M NOT SURE&IF YOU SHOULD&BE OVER THERE.../"
        global.msg[4] = "\\E4THEY HATE PUZZLES!^1!&\\E2ALL TOO OFTEN I'LL &CHECK ON ONE.../"
        global.msg[5] = "\\E4AND FIND IT&COMPLETELY RUINED!&HOW RUDE./"
        global.msg[6] = "\\E0LITTLE DO THEY&KNOW^1, THAT MAKES&ROOM FOR MORE!/"
        global.msg[7] = "THERE'S A BRIGHT&SIDE TO EVERYTHING^1.&EVEN VANDALISM./%%"
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = "NOTE^1: PAPYRUS DOES&NOT CONDONE&VANDALISM./"
            global.msg[3] = "\\E0PAPYRUS DOES^1,&HOWEVER^1, CONDONE&SOLVING PUZZLES!/%%"
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = "AH^1, THAT MUST&BE WHERE THE&LOCAL TEENS HANG!!/"
            global.msg[3] = "\\E3I'M NOT SURE&IF YOU SHOULD&BE OVER THERE.../"
            scr_undface(4, 0)
            global.msg[5] = "* Yeah^1, they're quite&  the trouble makers./"
            global.msg[6] = "*\\E4 They terrorize&  the Nice Cream Guy&  and steal his stuff./"
            global.msg[7] = "* I can't count how&  many times I've come&  to rescue him.../"
            global.msg[8] = "\\E0* I guess I can't&  get too mad&  at them./"
            global.msg[9] = "\\E9* The stuff I&  did at that age&  was WAY WORSE!!!/"
            global.msg[10] = "\\E5* Doesn't make it&  any less&  illegal^1, though./%%"
            if (global.flag[462] == 1)
            {
                scr_undface(1, 1)
                global.msg[2] = "* I don't even know&  why they do it!/"
                global.msg[3] = "\\E2* Don't they know&  he gives out&  FREE SAMPLES???/"
                scr_sansface(4, 0)
                global.msg[5] = "* he does^1?&* \\E1man^1, i'd better&  step up my game./"
                scr_undface(6, 2)
                global.msg[7] = "* Sans^1, if I have to bust&  another illegal baking&  operation.../"
                scr_sansface(8, 0)
                global.msg[9] = "* nah^1, don't worry&  about it./"
                global.msg[10] = "* i've moved onto&  more appealing&  business tactics./"
                scr_papface(11, 3)
                global.msg[12] = "DO YOU MIND&SHARING WHAT&YOU'RE SELLING?/"
                scr_sansface(13, 2)
                global.msg[14] = "* yep./"
                scr_papface(15, 1)
                global.msg[16] = "TYPICAL^1./%%"
            }
            if (global.flag[462] == 2)
            {
                scr_sansface(1, 0)
                global.msg[2] = "* say^1, kid^1, would&  you like to&  buy one?/"
                scr_papface(3, 1)
                global.msg[4] = "SANS^1, GIVE ME&BACK MY PHONE!!!!/"
                scr_sansface(5, 1)
                global.msg[6] = "* oops^1, looks like&  i gotta go./"
                global.msg[7] = "\\E2* pleasure doin'&  business with you./%%"
            }
            if (global.flag[462] > 2)
                global.msg[1] = scr_gettext("scr_papcall_4034")
        }
        break
    default:
        global.msg[0] = scr_gettext("scr_papcall_4026")
}

if (noresponse == 1)
{
    global.msg[0] = scr_gettext("scr_papcall_4033")
    global.msg[1] = scr_gettext("scr_papcall_4034")
}
if (tired == true)
{
    scr_papface(1, 0)
    global.msg[2] = scr_gettext("scr_papcall_4040")
}
if (dontplay == 0)
    snd_play(snd_phone)
global.flag[462] += 1
