myinteract = 3
global.msc = 0
global.typer = 37
global.facechoice = 5
global.faceemotion = 0
if (global.flag[7] == 0)
{
    global.msg[0] = scr_gettext("obj_undyne_friendc_76")
    global.msg[1] = scr_gettext("obj_undyne_friendc_77")
    global.msg[2] = scr_gettext("obj_undyne_friendc_78")
    scr_papface(3, 0)
    global.msg[4] = scr_gettext("obj_undyne_friendc_80")
    scr_undface(5, 9)
    global.msg[6] = scr_gettext("obj_undyne_friendc_82")
    scr_papface(7, 3)
    global.msg[8] = scr_gettext("obj_undyne_friendc_84")
    scr_undface(9, 2)
    global.msg[10] = scr_gettext("obj_undyne_friendc_86")
    scr_papface(11, 0)
    global.msg[12] = scr_gettext("obj_undyne_friendc_88")
    if (talkedto > 0)
    {
        global.msg[0] = scr_gettext("obj_undyne_friendc_92")
        global.msg[1] = scr_gettext("obj_undyne_friendc_93")
        scr_papface(2, 0)
        global.msg[3] = scr_gettext("obj_undyne_friendc_95")
        scr_undface(4, 9)
        global.msg[5] = scr_gettext("obj_undyne_friendc_97")
        scr_papface(6, 0)
        global.msg[7] = scr_gettext("obj_undyne_friendc_99")
        scr_undface(8, 2)
        global.msg[9] = scr_gettext("obj_undyne_friendc_101")
        scr_papface(10, 3)
        global.msg[11] = scr_gettext("obj_undyne_friendc_103")
        global.msg[12] = scr_gettext("obj_undyne_friendc_104")
    }
    if (global.flag[493] == 9)
    {
        global.faceemotion = 1
        global.msg[0] = scr_gettext("obj_undyne_friendc_112")
        global.msg[1] = scr_gettext("obj_undyne_friendc_113")
        scr_itemcheck(56)
        scr_storagecheck(56)
        if (haveit == false && haveit2 == 0 && (global.flag[494] == 1 || global.flag[494] == 2))
        {
            scr_itemget(57)
            if (noroom == 1)
            {
                global.faceemotion = 1
                global.msg[0] = scr_gettext("obj_undyne_friendc_121")
                global.msg[1] = scr_gettext("obj_undyne_friendc_122")
            }
            else
            {
                global.faceemotion = 1
                global.msg[0] = scr_gettext("obj_undyne_friendc_127")
                global.msg[1] = scr_gettext("obj_undyne_friendc_128")
                global.msg[2] = scr_gettext("obj_undyne_friendc_129")
                global.msg[3] = scr_gettext("obj_undyne_friendc_130")
                global.msg[4] = scr_gettext("obj_undyne_friendc_131")
                global.msg[5] = scr_gettext("obj_undyne_friendc_132")
                global.msg[6] = scr_gettext("obj_undyne_friendc_133")
                global.msg[7] = scr_gettext("obj_undyne_friendc_134")
                global.msg[8] = scr_gettext("obj_undyne_friendc_135")
                global.msg[9] = scr_gettext("obj_undyne_friendc_136")
                global.flag[494] = 3
            }
        }
        else if ((haveit || haveit2) && global.flag[494] == 3)
        {
            scr_itemremove(56)
            var index = -1
            var box = -1
            for (i = 0; i < 11; i++)
            {
                if (global.flag[(300 + i)] == 56)
                {
                    index = i
                    box = 300
                }
                else if (global.flag[(312 + i)] == 56)
                {
                    index = i
                    box = 312
                }
            }
            if (index > -1)
                scr_storageshift(index, 0, box)
            global.flag[349] = 1
            global.faceemotion = 3
            global.msg[0] = "* This is why we&  can't have nice things./%%"
        }
    }
    if (global.flag[493] == 8)
    {
        scr_itemget(56)
        if (noroom == 1)
        {
            global.faceemotion = 9
            global.msg[0] = scr_gettext("obj_undyne_friendc_149")
            global.msg[1] = scr_gettext("obj_undyne_friendc_150")
        }
        else
        {
            global.faceemotion = 9
            global.msg[0] = scr_gettext("obj_undyne_friendc_155")
            global.msg[1] = scr_gettext("obj_undyne_friendc_156")
            global.msg[2] = scr_gettext("obj_undyne_friendc_157")
            global.msg[3] = scr_gettext("obj_undyne_friendc_158")
            global.msg[4] = scr_gettext("obj_undyne_friendc_159")
            global.msg[5] = scr_gettext("obj_undyne_friendc_160")
            global.msg[6] = scr_gettext("obj_undyne_friendc_161")
            global.msg[7] = scr_gettext("obj_undyne_friendc_162")
            global.msg[8] = scr_gettext("obj_undyne_friendc_163")
            global.msg[9] = scr_gettext("obj_undyne_friendc_164")
            global.msg[10] = scr_gettext("obj_undyne_friendc_165")
            scr_undface(11, 9)
            global.msg[12] = scr_gettext("obj_undyne_friendc_167")
            global.msg[13] = scr_gettext("obj_undyne_friendc_168")
            global.msg[14] = scr_gettext("obj_undyne_friendc_169")
            global.flag[493] = 9
            global.flag[8] = 1
        }
    }
}
if (global.flag[7] == 1)
{
    if (global.flag[193] == 0)
        global.msc = 806
    if (global.flag[193] == 1)
    {
        global.msg[0] = scr_gettext("obj_undyne_friendc_187")
        global.msg[1] = scr_gettext("obj_undyne_friendc_188")
        global.msg[2] = scr_gettext("obj_undyne_friendc_189")
        global.msg[3] = scr_gettext("obj_undyne_friendc_190")
        scr_alface(4, 5)
        global.msg[5] = scr_gettext("obj_undyne_friendc_192")
        scr_undface(6, 6)
        global.msg[7] = scr_gettext("obj_undyne_friendc_194")
    }
    if (global.flag[193] >= 2)
    {
        global.msg[0] = scr_gettext("obj_undyne_friendc_199")
        global.msg[1] = scr_gettext("obj_undyne_friendc_200")
        if (global.flag[194] == 0)
            global.flag[194] = 1
    }
    global.flag[193] += 1
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
