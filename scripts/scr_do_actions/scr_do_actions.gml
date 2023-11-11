var temp_array;
global.mnfight = 0
global.currentprocessing++
spared = 1
if (global.currentprocessing == 0)
{
    if (global.hp <= 0)
        global.currentprocessing++
}
if (global.currentprocessing >= global.partycount || scr_monstersum() == 0)
{
    global.currentprocessing = -1
    global.myfight = 0
    global.mnfight = 1
    for (var i = 0; i < global.partycount; i++)
    {
        myfight_buffer[i] = 0
        mercyuse_buffer[i] = 0
        for (var j = 0; j < 11; j++)
            temp_array[j] = 0
        bmenucoord_buffer[i] = temp_array
        bmenuno_buffer[i] = 0
        mytarget_buffer[i] = 0
        talked_buffer[i] = -1
        whatiheard1_buffer[i] = -1
        whatiheard2_buffer[i] = -1
        whatiheard3_buffer[i] = -1
        en_buffer[i] = 0
    }
}
else
{
    obj_heart.x = -400
    global.myfight = obj_battlecontroller.myfight_buffer[global.currentprocessing]
    if (global.myfight == 999999)
    {
        commentwhydidblaizenumberthese = "lol skip them"
        scr_do_actions()
        return;
    }
    global.mercyuse = obj_battlecontroller.mercyuse_buffer[global.currentprocessing]
    global.bmenucoord = scr_array_clone(obj_battlecontroller.bmenucoord_buffer[global.currentprocessing])
    global.bmenuno = obj_battlecontroller.bmenuno_buffer[global.currentprocessing]
    global.mytarget = obj_battlecontroller.mytarget_buffer[global.currentprocessing]
    if (!global.monster[global.mytarget])
    {
        comment1 = "They might not be alive..."
        comment2 = "We tried to fight... so retarget to an enemy who's alive."
        if (global.bmenuno == 1 || global.myfight == 1 || global.mercyuse == 2)
        {
            global.mytarget = 0
            comment3 = "attempt to target the first one"
            while (!global.monster[global.mytarget])
            {
                global.mytarget++
                comment4 = "loop through them"
                if (global.mytarget >= 3)
                {
                    comment5 = "whoops, we went too far... let's just quit, because you shouldn't be in this situation"
                    global.myfight = 0
                    global.mnfight = 1
                    global.currentprocessing = -1
                    return;
                }
            }
        }
        else
        {
            scr_do_actions()
            return;
        }
    }
    global.mntrg = global.monsterinstance[global.mytarget]
    global.talked = obj_battlecontroller.talked_buffer[global.currentprocessing]
    global.heard = 0
    losthponasidenotewhydowenotuseanysortofcasing = 0
    if global.monster[0]
    {
        var instance0 = global.monsterinstance[0]
        instance0.whatiheard = obj_battlecontroller.whatiheard1_buffer[global.currentprocessing]
    }
    if global.monster[1]
    {
        var instance1 = global.monsterinstance[1]
        instance1.whatiheard = obj_battlecontroller.whatiheard2_buffer[global.currentprocessing]
    }
    if global.monster[2]
    {
        var instance2 = global.monsterinstance[2]
        instance2.whatiheard = obj_battlecontroller.whatiheard3_buffer[global.currentprocessing]
    }
    if (global.bmenuno == 1 || global.myfight == 1)
    {
        with (OBJ_WRITER)
            halt = 3
        with (OBJ_INSTAWRITER)
            halt = 3
        with (obj_target)
            instance_destroy()
        with (obj_shoetargettest)
            instance_destroy()
        with (obj_targetchoice)
            instance_destroy()
        with (obj_targetchoicefist)
            instance_destroy()
        script_execute(scr_attack)
        control_clear(0)
    }
    else if (global.myfight == 5)
    {
        with (OBJ_WRITER)
            halt = 3
        with (OBJ_INSTAWRITER)
            halt = 3
        control_clear(0)
    }
    if (global.bmenuno >= 3 && global.bmenuno < 4)
    {
        itempos = (global.bmenucoord[3] + ((global.bmenuno - 3) * 8))
        thisitemid = global.item[itempos]
        script_execute(scr_itemuseb, itempos, thisitemid)
        global.myfight = 4
        global.talked = 91
    }
    if (global.bmenuno == 4)
    {
        if (spared == 1)
            spared = 2
    }
}
