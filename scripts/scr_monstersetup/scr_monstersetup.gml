myself = 0
if (argument0 == undefined || argument0 == 0)
{
    if (global.monster[1] == true)
    {
        myself = 2
        global.monster[2] = true
    }
    if (global.monster[0] == true && myself != 2)
    {
        myself = 1
        global.monster[1] = true
    }
    if (global.monster[0] == false)
    {
        myself = 0
        global.monster[0] = true
    }
}
else
{
    global.monstertype[0] = argument0
    myself = 0
}
switch global.monstertype[myself]
{
    case 1:
        global.monstername[myself] = scr_gettext("monstername_1")
        global.monstermaxhp[myself] = 23
        global.monsterhp[myself] = 23
        global.monsteratk[myself] = 4
        global.monsterdef[myself] = 1
        global.xpreward[myself] = 2
        global.goldreward[myself] = 2
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 2:
        global.monstername[myself] = scr_gettext("monstername_2")
        global.monstermaxhp[myself] = 15
        global.monsterhp[myself] = 15
        global.monsteratk[myself] = 0
        global.monsterdef[myself] = -5
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 3:
        global.monstername[myself] = scr_gettext("monstername_3")
        global.monstermaxhp[myself] = 20
        global.monsterhp[myself] = 20
        global.monsteratk[myself] = 4
        global.monsterdef[myself] = 1
        global.xpreward[myself] = 10
        global.goldreward[myself] = 20
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 4:
        global.monstername[myself] = scr_gettext("monstername_4")
        global.monstermaxhp[myself] = 30
        global.monsterhp[myself] = 30
        global.monsteratk[myself] = 4
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 3
        global.goldreward[myself] = 2
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 5:
        global.monstername[myself] = scr_gettext("monstername_5")
        global.monstermaxhp[myself] = 10
        global.monsterhp[myself] = 10
        global.monsteratk[myself] = 4
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 2
        global.goldreward[myself] = 2
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 6:
        global.monstername[myself] = scr_gettext("monstername_6")
        global.monstermaxhp[myself] = 50
        global.monsterhp[myself] = 50
        global.monsteratk[myself] = 4
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 3
        global.goldreward[myself] = 3
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 7:
        global.monstername[myself] = scr_gettext("monstername_7")
        global.monstermaxhp[myself] = 40
        global.monsterhp[myself] = 40
        global.monsteratk[myself] = 5
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 5
        global.goldreward[myself] = 4
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 8:
        global.monstername[myself] = scr_gettext("monstername_8")
        global.monstermaxhp[myself] = 72
        global.monsterhp[myself] = 72
        global.monsteratk[myself] = 5
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 6
        global.goldreward[myself] = 1
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 9:
        global.monstername[myself] = scr_gettext("monstername_9")
        global.monstermaxhp[myself] = 50
        global.monsterhp[myself] = 50
        global.monsteratk[myself] = 5
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 7
        global.goldreward[myself] = 5
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 10:
        global.monstername[myself] = scr_gettext("monstername_10")
        global.monstermaxhp[myself] = 440
        global.monsterhp[myself] = 440
        global.monsteratk[myself] = 6
        if (global.flag[6] == 1)
            global.monsteratk[myself] = 8
        global.monsterdef[myself] = 1
        if (scr_murderlv() >= 1)
            global.monsterdef[myself] = -9999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 11:
        global.monstername[myself] = scr_gettext("monstername_11")
        global.monstermaxhp[myself] = 88
        global.monsterhp[myself] = 88
        global.monsteratk[myself] = 5
        global.monsterdef[myself] = 4
        global.xpreward[myself] = -1
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 12:
        global.monstername[myself] = scr_gettext("monstername_12")
        global.monstermaxhp[myself] = 50
        global.monsterhp[myself] = 50
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 3
        global.goldreward[myself] = 3
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 13:
        global.monstername[myself] = scr_gettext("monstername_13")
        global.monstermaxhp[myself] = 70
        global.monsterhp[myself] = 70
        global.monsteratk[myself] = 6
        global.monsterdef[myself] = 1
        global.xpreward[myself] = 30
        global.goldreward[myself] = 20
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 14:
        global.monstername[myself] = scr_gettext("monstername_14")
        global.monstermaxhp[myself] = 60
        global.monsterhp[myself] = 60
        global.monsteratk[myself] = 6
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 18
        global.goldreward[myself] = 15
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 15:
        global.monstername[myself] = scr_gettext("monstername_15")
        global.monstermaxhp[myself] = 108
        global.monsterhp[myself] = 108
        global.monsteratk[myself] = 6
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 30
        global.goldreward[myself] = 25
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 16:
        global.monstername[myself] = scr_gettext("monstername_16")
        global.monstermaxhp[myself] = 108
        global.monsterhp[myself] = 108
        global.monsteratk[myself] = 6
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 30
        global.goldreward[myself] = 25
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 17:
        global.monstername[myself] = scr_gettext("monstername_17")
        global.monstermaxhp[myself] = 105
        global.monsterhp[myself] = 105
        global.monsteratk[myself] = 6
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 80
        global.goldreward[myself] = 60
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 18:
        global.monstername[myself] = scr_gettext("monstername_18")
        if (global.flag[57] == 2)
            global.monstername[myself] = scr_gettext("monstername_18b")
        global.monstermaxhp[myself] = 74
        global.monsterhp[myself] = 74
        global.monsteratk[myself] = 6
        global.monsterdef[myself] = 2
        global.xpreward[myself] = 22
        global.goldreward[myself] = 18
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 19:
        global.monstername[myself] = scr_gettext("monstername_19")
        global.monstermaxhp[myself] = 48
        global.monsterhp[myself] = 48
        global.monsteratk[myself] = 6
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 17
        global.goldreward[myself] = 17
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 20:
        global.monstername[myself] = scr_gettext("monstername_20")
        global.monstermaxhp[myself] = 48
        global.monsterhp[myself] = 48
        global.monsteratk[myself] = 0
        global.monsterdef[myself] = -100
        global.xpreward[myself] = 25
        global.goldreward[myself] = 40
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 21:
        global.monstername[myself] = scr_gettext("monstername_21")
        global.monstermaxhp[myself] = 80
        global.monsterhp[myself] = 80
        global.monsteratk[myself] = 1
        global.monsterdef[myself] = 8
        global.xpreward[myself] = 1
        global.goldreward[myself] = 55
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 22:
        global.monstername[myself] = scr_gettext("monstername_22")
        global.monstermaxhp[myself] = 114
        global.monsterhp[myself] = 114
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 3
        global.xpreward[myself] = 35
        global.goldreward[myself] = 30
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 23:
        global.monstername[myself] = scr_gettext("monstername_23")
        global.monstermaxhp[myself] = 98
        global.monsterhp[myself] = 98
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 2
        global.xpreward[myself] = 52
        global.goldreward[myself] = 25
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 24:
        global.monstername[myself] = scr_gettext("monstername_24")
        global.monstermaxhp[myself] = 5
        global.monsterhp[myself] = 5
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = -20
        global.xpreward[myself] = 40
        global.goldreward[myself] = 50
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 25:
        global.monstername[myself] = scr_gettext("monstername_25")
        global.monstermaxhp[myself] = 680
        global.monsterhp[myself] = 680
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 2
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 26:
        global.monstername[myself] = scr_gettext("monstername_26")
        global.monstermaxhp[myself] = 70
        global.monsterhp[myself] = 70
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 46
        global.goldreward[myself] = 30
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 28:
        global.monstername[myself] = scr_gettext("monstername_28")
        global.monstermaxhp[myself] = 70
        global.monsterhp[myself] = 70
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 1
        global.xpreward[myself] = 52
        global.goldreward[myself] = 25
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 29:
        global.monstername[myself] = scr_gettext("monstername_29")
        global.monstermaxhp[myself] = 66
        global.monsterhp[myself] = 66
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 2
        global.xpreward[myself] = 52
        global.goldreward[myself] = 25
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 30:
        global.monstername[myself] = scr_gettext("monstername_30")
        global.monstermaxhp[myself] = 98
        global.monsterhp[myself] = 98
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 2
        global.xpreward[myself] = 52
        global.goldreward[myself] = 20
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 31:
        global.monstername[myself] = scr_gettext("monstername_31")
        global.monstermaxhp[myself] = 200
        global.monsterhp[myself] = 200
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = -40
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 32:
        global.monstername[myself] = scr_gettext("monstername_32")
        global.monstermaxhp[myself] = 1500
        global.monsterhp[myself] = 1500
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 33:
        global.monstername[myself] = scr_gettext("monstername_33")
        global.monstermaxhp[myself] = 9999
        global.monsterhp[myself] = 9999
        global.monsteratk[myself] = 10
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 34:
        global.monstername[myself] = scr_gettext("monstername_34")
        global.monstermaxhp[myself] = 150
        global.monsterhp[myself] = 150
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 110
        global.goldreward[myself] = 60
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 35:
        global.monstername[myself] = scr_gettext("monstername_35")
        global.monstermaxhp[myself] = 150
        global.monsterhp[myself] = 150
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 110
        global.goldreward[myself] = 60
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 36:
        global.monstername[myself] = scr_gettext("monstername_36")
        global.monstermaxhp[myself] = 80
        global.monsterhp[myself] = 80
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 6
        global.xpreward[myself] = 95
        global.goldreward[myself] = 45
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 37:
        global.monstername[myself] = scr_gettext("monstername_37")
        global.monstermaxhp[myself] = 20
        global.monsterhp[myself] = 20
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = -10
        global.xpreward[myself] = 70
        global.goldreward[myself] = 50
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 38:
        global.monstername[myself] = scr_gettext("monstername_38")
        global.monstermaxhp[myself] = 110
        global.monsterhp[myself] = 110
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 1
        global.xpreward[myself] = 80
        global.goldreward[myself] = 40
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 39:
        global.monstername[myself] = scr_gettext("monstername_39")
        global.monstermaxhp[myself] = 1250
        global.monsterhp[myself] = 1250
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 300
        global.goldreward[myself] = global.flag[59]
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 40:
        global.monstername[myself] = scr_gettext("monstername_40")
        global.monstermaxhp[myself] = 9999
        global.monsterhp[myself] = 9999
        global.monsteratk[myself] = 10
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 41:
        global.monstername[myself] = scr_gettext("monstername_41")
        global.monstermaxhp[myself] = 1500
        global.monsterhp[myself] = 1500
        global.monsteratk[myself] = 10
        global.monsterdef[myself] = 10
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 42:
        global.monstername[myself] = scr_gettext("monstername_42")
        global.monstermaxhp[myself] = 190
        global.monsterhp[myself] = 190
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = -1
        global.xpreward[myself] = 150
        global.goldreward[myself] = 120
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 43:
        global.monstername[myself] = scr_gettext("monstername_43")
        global.monstermaxhp[myself] = 230
        global.monsterhp[myself] = 230
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 2
        global.xpreward[myself] = 180
        global.goldreward[myself] = 150
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 44:
        global.monstername[myself] = scr_gettext("monstername_44")
        global.monstermaxhp[myself] = 100
        global.monsterhp[myself] = 100
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 120
        global.goldreward[myself] = 80
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 45:
        global.monstername[myself] = scr_gettext("monstername_45")
        global.monstermaxhp[myself] = 120
        global.monsterhp[myself] = 120
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = -2
        global.xpreward[myself] = 130
        global.goldreward[myself] = 85
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 46:
        global.monstername[myself] = scr_gettext("monstername_46")
        global.monstermaxhp[myself] = 95
        global.monsterhp[myself] = 95
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = -3
        global.xpreward[myself] = 110
        global.goldreward[myself] = 80
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 47:
        global.monstername[myself] = scr_gettext("monstername_47")
        global.monstermaxhp[myself] = 99
        global.monsterhp[myself] = 99
        global.monsteratk[myself] = 1
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 48:
        global.monstername[myself] = scr_gettext("monstername_48")
        global.monstermaxhp[myself] = 100
        global.monsterhp[myself] = 100
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 110
        global.goldreward[myself] = 60
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 49:
        global.monstername[myself] = scr_gettext("monstername_49")
        global.monstermaxhp[myself] = 100
        global.monsterhp[myself] = 100
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 4
        global.xpreward[myself] = 110
        global.goldreward[myself] = 60
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 50:
        global.monstername[myself] = scr_gettext("monstername_50")
        global.monstermaxhp[myself] = 9999
        global.monsterhp[myself] = 9999
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 51:
        global.monstername[myself] = scr_gettext("monstername_51")
        global.monstermaxhp[myself] = 1600
        global.monsterhp[myself] = 1600
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 1
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 52:
        global.monstername[myself] = scr_gettext("monstername_52")
        global.monstermaxhp[myself] = 3500
        global.monsterhp[myself] = 3500
        global.monsteratk[myself] = 10
        global.monsterdef[myself] = -30
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 53:
        global.monstername[myself] = scr_gettext("monstername_53")
        global.monstermaxhp[myself] = 100
        global.monsterhp[myself] = 100
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 9999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 54:
        global.monstername[myself] = scr_gettext("monstername_54")
        global.monstermaxhp[myself] = 100
        global.monsterhp[myself] = 100
        global.monsteratk[myself] = 9
        global.monsterdef[myself] = 9999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 55:
        global.monstername[myself] = scr_gettext("monstername_55")
        global.monstermaxhp[myself] = 400
        global.monsterhp[myself] = 400
        global.monsteratk[myself] = 0
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 56:
        global.monstername[myself] = scr_gettext("monstername_56")
        global.monstermaxhp[myself] = 100
        global.monsterhp[myself] = 100
        global.monsteratk[myself] = 9
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 57:
        global.monstername[myself] = scr_gettext("monstername_57")
        global.monstermaxhp[myself] = 100
        global.monsterhp[myself] = 100
        global.monsteratk[myself] = 9
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 58:
        global.monstername[myself] = scr_gettext("monstername_58")
        global.monstermaxhp[myself] = 999
        global.monsterhp[myself] = 999
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 59:
        global.monstername[myself] = scr_gettext("monstername_59")
        global.monstermaxhp[myself] = 999
        global.monsterhp[myself] = 999
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 60:
        global.monstername[myself] = scr_gettext("monstername_60")
        global.monstermaxhp[myself] = 999
        global.monsterhp[myself] = 999
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 61:
        global.monstername[myself] = scr_gettext("monstername_61")
        global.monstermaxhp[myself] = 999
        global.monsterhp[myself] = 999
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 62:
        global.monstername[myself] = scr_gettext("monstername_62")
        global.monstermaxhp[myself] = 999
        global.monsterhp[myself] = 999
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 63:
        global.monstername[myself] = scr_gettext("monstername_63")
        global.monstermaxhp[myself] = 999
        global.monsterhp[myself] = 999
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 64:
        global.monstername[myself] = scr_gettext("monstername_64")
        global.monstermaxhp[myself] = 10
        global.monsterhp[myself] = 10
        global.monsteratk[myself] = 1
        global.monsterdef[myself] = -900
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 65:
        global.monstername[myself] = scr_gettext("monstername_65")
        global.monstermaxhp[myself] = 23000
        global.monsterhp[myself] = 23000
        global.monsteratk[myself] = 12
        global.monsterdef[myself] = 5
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 66:
        global.monstername[myself] = scr_gettext("monstername_66")
        global.monstermaxhp[myself] = 5
        global.monsterhp[myself] = 5
        global.monsteratk[myself] = 0
        global.monsterdef[myself] = -5
        global.xpreward[myself] = 200
        global.goldreward[myself] = 100
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 67:
        global.monstername[myself] = scr_gettext("monstername_67")
        global.monstermaxhp[myself] = 30000
        global.monsterhp[myself] = 30000
        global.monsteratk[myself] = 10
        global.monsterdef[myself] = -40000
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 68:
        global.monstername[myself] = scr_gettext("monstername_68")
        global.monstermaxhp[myself] = 1
        global.monsterhp[myself] = 1
        global.monsteratk[myself] = 1
        global.monsterdef[myself] = 1
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 69:
        global.monstername[myself] = "Unknown"
        global.monstermaxhp[myself] = (400 + (global.lv * 30))
        global.monsterhp[myself] = (400 + (global.lv * 30))
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = -10
        global.xpreward[myself] = 150
        global.goldreward[myself] = 150
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 70:
        global.monstername[myself] = scr_gettext("monstername_70")
        global.monstermaxhp[myself] = 32
        global.monsterhp[myself] = 32
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 2
        global.xpreward[myself] = 4
        global.goldreward[myself] = 2
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 71:
        global.monstername[myself] = scr_gettext("monstername_71")
        global.monstermaxhp[myself] = 50
        global.monsterhp[myself] = 50
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 2
        global.xpreward[myself] = 8
        global.goldreward[myself] = 6
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 72:
        global.monstername[myself] = scr_gettext("monstername_72")
        global.monstermaxhp[myself] = 20
        global.monsterhp[myself] = 20
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 3
        global.goldreward[myself] = 4
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 73:
        global.monstername[myself] = scr_gettext("monstername_73")
        global.monstermaxhp[myself] = 45
        global.monsterhp[myself] = 45
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = 3
        global.xpreward[myself] = 5
        global.goldreward[myself] = 4
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 74:
        global.monstername[myself] = scr_gettext("monstername_74")
        global.monstermaxhp[myself] = 52
        global.monsterhp[myself] = 52
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = -4
        global.xpreward[myself] = 5
        global.goldreward[myself] = 3
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 75:
        global.monstername[myself] = scr_gettext("monstername_75")
        global.monstermaxhp[myself] = 72
        global.monsterhp[myself] = 72
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = -2
        global.xpreward[myself] = 8
        global.goldreward[myself] = 2
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 76:
        global.monstername[myself] = scr_gettext("monstername_76")
        global.monstermaxhp[myself] = 220
        global.monsterhp[myself] = 220
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = -20
        global.xpreward[myself] = 100
        global.goldreward[myself] = 140
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 77:
        global.monstername[myself] = scr_gettext("monstername_77")
        global.monstermaxhp[myself] = 700
        global.monsterhp[myself] = 700
        global.monsteratk[myself] = 9
        global.monsterdef[myself] = 0
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 78:
        global.monstername[myself] = "Hitch"
        global.monstermaxhp[myself] = 195
        global.monsterhp[myself] = 195
        global.monsteratk[myself] = 7
        global.monsterdef[myself] = -1
        global.xpreward[myself] = 15
        global.goldreward[myself] = 85
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 79:
        global.monstername[myself] = "Portabie"
        global.monstermaxhp[myself] = 120
        global.monsterhp[myself] = 120
        global.monsteratk[myself] = 3
        global.monsterdef[myself] = -2
        global.xpreward[myself] = 10
        global.goldreward[myself] = 5
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 80:
        global.monstername[myself] = scr_gettext("monstername_80")
        global.monstermaxhp[myself] = 1100
        global.monsterhp[myself] = 1100
        global.monsteratk[myself] = 9
        global.monsterdef[myself] = -6
        global.xpreward[myself] = 1
        global.goldreward[myself] = 300
        global.itemrewardid = 1
        global.itemrewardchance = 50
        break
    case 81:
        global.monstername[myself] = scr_gettext("monstername_81")
        global.monstermaxhp[myself] = 100
        global.monsterhp[myself] = 100
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 99:
        global.monstername[myself] = scr_gettext("monstername_99")
        global.monstermaxhp[myself] = 9999
        global.monsterhp[myself] = 9999
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 9999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 100:
        global.monstername[myself] = scr_gettext("monstername_100")
        global.monstermaxhp[myself] = 9999
        global.monsterhp[myself] = 9999
        global.monsteratk[myself] = 8
        global.monsterdef[myself] = 9999
        global.xpreward[myself] = 0
        global.goldreward[myself] = 0
        global.itemrewardid = 0
        global.itemrewardchance = 0
        break
    case 666:
    default:
        global.monstername[myself] = scr_gettext("monstername_666")
        global.monstermaxhp[myself] = 666666
        global.monsterhp[myself] = 666666
        global.monsteratk[myself] = 66666
        global.monsterdef[myself] = 66666
        global.xpreward[myself] = -6666
        global.goldreward[myself] = -6666
        global.itemrewardid = 666
        global.itemrewardchance = 666
        break
}

