if (t == 0 && global.interact == 0)
{
    if (global.menuchoice[2] == 0)
        global.menuchoice[2] = 1
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.msg[0] = "%%%"
    with (obj_mainchara)
    {
        cutscene = true
        global.facing = 0
        if (scr_murderlv() < 1)
        {
            rsprite = spr_mainchara_call
            lsprite = spr_mainchara_call
            usprite = spr_mainchara_call
            dsprite = spr_mainchara_call
        }
    }
    if (room == room_fire_core_branch && global.plot < 185)
    {
        global.plot = 185
        global.flag[416] = 1
        global.msg[0] = scr_gettext("obj_phonecall_room_161")
        global.msg[1] = scr_gettext("obj_phonecall_room_162")
        global.msg[2] = scr_gettext("obj_phonecall_room_163")
        global.msg[3] = scr_gettext("obj_phonecall_room_164")
        global.msg[4] = scr_gettext("obj_phonecall_room_165")
        global.msg[3] = scr_gettext("obj_phonecall_room_166")
        global.msg[4] = scr_gettext("obj_phonecall_room_167")
        global.msg[5] = scr_gettext("obj_phonecall_room_168")
        global.msg[6] = scr_gettext("obj_phonecall_room_169")
        global.msg[7] = scr_gettext("obj_phonecall_room_170")
        global.msg[8] = scr_gettext("obj_phonecall_room_171")
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_core_roadblock)
    {
        global.flag[335] = 2
        global.msg[0] = "\\F0* Ring.../"
        global.msg[1] = "\\TS \\E6 \\F6 \\TA %"
        global.msg[2] = "* Finally^1! Something&  I recognize!/"
        global.msg[3] = "* That door should&  be the way&  out of here./"
        global.msg[4] = "* Just head to the right^1,&  flip two switches^1,&  and come back./"
        global.msg[5] = "\\E7* Easy peasy^1!&* Heh.../"
        global.msg[6] = "\\E8* If only it&  was that simple.../"
        global.msg[7] = scr_gettext("obj_phonecall_room_170")
        global.msg[8] = scr_gettext("obj_phonecall_room_171")
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_core_laserfun && global.plot < 183)
    {
        global.plot = 183
        obj_powerlaser_event.con = 10
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_core5 && global.flag[416] == 0 && x > 140)
    {
        global.flag[416] = 1
        global.msg[0] = scr_gettext("obj_phonecall_room_190")
        global.msg[1] = scr_gettext("obj_phonecall_room_191")
        global.msg[2] = scr_gettext("obj_phonecall_room_192")
        global.msg[3] = scr_gettext("obj_phonecall_room_193")
        global.msg[4] = scr_gettext("obj_phonecall_room_194")
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_core5 && global.plot < 182 && x < 140)
    {
        global.plot = 182
        global.msg[0] = scr_gettext("obj_phonecall_room_202")
        global.msg[1] = scr_gettext("obj_phonecall_room_203")
        global.msg[2] = scr_gettext("obj_phonecall_room_204")
        global.msg[3] = scr_gettext("obj_phonecall_room_205")
        global.msg[4] = scr_gettext("obj_phonecall_room_206")
        global.msg[5] = scr_gettext("obj_phonecall_room_207")
        global.msg[6] = scr_gettext("obj_phonecall_room_208")
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_core4 && global.plot < 180)
    {
        global.plot = 180
        global.msg[0] = scr_gettext("obj_phonecall_room_218")
        global.msg[1] = scr_gettext("obj_phonecall_room_219")
        global.msg[2] = scr_gettext("obj_phonecall_room_220")
        global.msg[3] = scr_gettext("obj_phonecall_room_221")
        global.msg[4] = scr_gettext("obj_phonecall_room_222")
        global.msg[5] = scr_gettext("obj_phonecall_room_223")
        global.msg[6] = scr_gettext("obj_phonecall_room_224")
        global.msg[7] = scr_gettext("obj_phonecall_room_225")
        global.msg[8] = scr_gettext("obj_phonecall_room_226")
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_core_controlroom && global.flag[162] == 0)
    {
        global.flag[162] = 1
        global.msg[0] = scr_gettext("obj_phonecall_room_218")
        global.msg[1] = scr_gettext("obj_phonecall_room_219")
        global.msg[2] = "\\E4* H-hey^1, that's&  not the&  ri-%"
        global.msg[3] = "\\E3* D-DON'T PRESS&  A-ANY OF&  THAT!!/"
        global.msg[4] = "\\E8* One wrong&  button pressed^1,&  and.../"
        global.msg[5] = "\\E5* Well^1, l-let's not&  find out./"
        global.msg[6] = scr_gettext("obj_phonecall_room_225")
        global.msg[7] = scr_gettext("obj_phonecall_room_226")
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_core2 && global.flag[415] == 0)
    {
        if ((global.debug == true || (global.flag[5] >= 51 && global.flag[5] <= 55)) && global.flag[367] == 0)
        {
            with (obj_rurusevent)
                con = 1
            donotcall = 1
        }
        else
        {
            global.msg[0] = scr_gettext("obj_phonecall_room_234")
            global.msg[1] = scr_gettext("obj_phonecall_room_235")
            global.msg[2] = scr_gettext("obj_phonecall_room_236")
            global.msg[3] = scr_gettext("obj_phonecall_room_237")
            global.msg[4] = scr_gettext("obj_phonecall_room_238")
            global.msg[5] = scr_gettext("obj_phonecall_room_239")
            global.msg[6] = scr_gettext("obj_phonecall_room_240")
            global.msg[7] = scr_gettext("obj_phonecall_room_241")
            if (global.flag[414] == 0)
            {
                global.msg[0] = scr_gettext("obj_phonecall_room_245")
                global.msg[1] = scr_gettext("obj_phonecall_room_246")
                global.msg[2] = scr_gettext("obj_phonecall_room_247")
                global.msg[3] = scr_gettext("obj_phonecall_room_248")
                global.msg[4] = scr_gettext("obj_phonecall_room_249")
                global.msg[5] = scr_gettext("obj_phonecall_room_250")
                global.msg[6] = scr_gettext("obj_phonecall_room_251")
                global.msg[7] = scr_gettext("obj_phonecall_room_252")
            }
            if (global.plot > 178)
            {
                global.msg[0] = scr_gettext("obj_phonecall_room_259")
                global.msg[1] = scr_gettext("obj_phonecall_room_260")
                global.msg[2] = scr_gettext("obj_phonecall_room_261")
                global.msg[3] = scr_gettext("obj_phonecall_room_262")
                global.msg[4] = scr_gettext("obj_phonecall_room_263")
                global.msg[5] = scr_gettext("obj_phonecall_room_264")
            }
            global.flag[415] = 1
            if (global.flag[367] == 1)
                donotcall = 1
        }
    }
    if (room == room_fire_core1)
    {
        if (global.plot < 177)
        {
            global.plot = 177
            global.msg[0] = scr_gettext("obj_phonecall_room_275")
            global.msg[1] = scr_gettext("obj_phonecall_room_276")
            global.msg[2] = scr_gettext("obj_phonecall_room_277")
            global.msg[3] = "* You're almost there^1,&  keep going!/"
            global.msg[4] = scr_gettext("obj_phonecall_room_279")
            global.msg[5] = scr_gettext("obj_phonecall_room_280")
        }
        else
        {
            global.msg[0] = scr_gettext("obj_phonecall_room_275")
            global.msg[1] = scr_gettext("obj_phonecall_room_276")
            global.msg[2] = "* See that elevator^1?&* That's how you're&  getting to the top./"
            global.msg[3] = scr_gettext("obj_phonecall_room_278")
            global.msg[4] = scr_gettext("obj_phonecall_room_279")
            global.msg[5] = scr_gettext("obj_phonecall_room_280")
        }
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_conveyorlaser)
    {
        if (global.flag[369] < 26)
        {
            global.flag[369] = 26
            global.msc = 837
            global.msg[0] = scr_gettext("obj_phonecall_room_290")
            if (global.flag[367] == 1)
                donotcall = 1
        }
        else
            donotcall = 1
    }
    if (room == room_fire_walkandbranch2)
    {
        if (global.plot < 163)
        {
            global.plot = 163
            global.msg[0] = scr_gettext("obj_phonecall_room_302")
            global.msg[1] = scr_gettext("obj_phonecall_room_303")
            global.msg[2] = scr_gettext("obj_phonecall_room_304")
            global.msg[3] = scr_gettext("obj_phonecall_room_305")
            global.msg[4] = scr_gettext("obj_phonecall_room_306")
            global.msg[5] = scr_gettext("obj_phonecall_room_307")
            global.msg[6] = scr_gettext("obj_phonecall_room_308")
            global.msg[7] = scr_gettext("obj_phonecall_room_309")
            global.msg[8] = scr_gettext("obj_phonecall_room_310")
            global.msg[9] = scr_gettext("obj_phonecall_room_311")
            global.msg[10] = scr_gettext("obj_phonecall_room_312")
            global.msg[11] = scr_gettext("obj_phonecall_room_313")
            global.msg[12] = scr_gettext("obj_phonecall_room_314")
            global.msg[13] = scr_gettext("obj_phonecall_room_315")
            global.msg[14] = scr_gettext("obj_phonecall_room_316")
            global.msg[15] = scr_gettext("obj_phonecall_room_317")
            global.msg[16] = scr_gettext("obj_phonecall_room_318")
            global.msg[17] = scr_gettext("obj_phonecall_room_319")
            global.msg[18] = scr_gettext("obj_phonecall_room_320")
            global.msg[19] = scr_gettext("obj_phonecall_room_321")
            if (global.flag[367] == 1)
                donotcall = 1
        }
        else
            donotcall = 1
    }
    if (room == room_fire_coreview2)
    {
        if (global.plot < 162)
        {
            global.plot = 162
            global.msc = 684
            if (global.flag[367] == 1)
                donotcall = 1
            else if (global.flag[17] == 1)
            {
                with (obj_speedrun_tracker)
                {
                    if (news_skip == 0)
                    {
                        if instance_exists(obj_doomtimer)
                            news_skip = 2
                        else
                            news_skip = 1
                    }
                }
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_rpuzzle)
    {
        if (global.plot < 143)
        {
            global.msc = 0
            global.plot = 143
            global.msg[0] = scr_gettext("obj_phonecall_room_353")
            global.msg[1] = scr_gettext("obj_phonecall_room_354")
            global.msg[2] = scr_gettext("obj_phonecall_room_355")
            global.msg[3] = scr_gettext("obj_phonecall_room_356")
            global.msg[4] = scr_gettext("obj_phonecall_room_357")
            global.msg[5] = scr_gettext("obj_phonecall_room_358")
            global.msg[6] = scr_gettext("obj_phonecall_room_359")
            if (global.flag[367] == 1)
                donotcall = 1
        }
        else
            donotcall = 1
    }
    if (room == room_fire_savepoint1 && global.plot < 137)
    {
        if (global.plot < 137)
        {
            global.msc = 0
            global.msg[0] = scr_gettext("obj_phonecall_room_372")
            global.msg[1] = scr_gettext("obj_phonecall_room_373")
            global.msg[2] = scr_gettext("obj_phonecall_room_374")
            global.msg[3] = scr_gettext("obj_phonecall_room_375")
            global.msg[4] = scr_gettext("obj_phonecall_room_376")
            global.msg[5] = scr_gettext("obj_phonecall_room_377")
            global.msg[6] = scr_gettext("obj_phonecall_room_378")
            global.msg[7] = scr_gettext("obj_phonecall_room_379")
            global.msg[8] = scr_gettext("obj_phonecall_room_380")
            global.msg[9] = scr_gettext("obj_phonecall_room_381")
            global.plot = 137
            if (global.flag[17] == 1)
            {
                with (obj_speedrun_tracker)
                    jetpack = 1
            }
        }
        else
            donotcall = 1
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_turn && global.plot < 133.5)
    {
        global.msg[0] = scr_gettext("obj_phonecall_room_397")
        global.msg[1] = scr_gettext("obj_phonecall_room_398")
        global.msg[2] = scr_gettext("obj_phonecall_room_399")
        global.msg[3] = scr_gettext("obj_phonecall_room_400")
        global.msg[4] = scr_gettext("obj_phonecall_room_401")
        global.msg[5] = scr_gettext("obj_phonecall_room_402")
        global.msg[6] = scr_gettext("obj_phonecall_room_403")
        global.msg[7] = scr_gettext("obj_phonecall_room_404")
        global.msg[8] = scr_gettext("obj_phonecall_room_405")
        if ((global.flag[374] + global.flag[375]) < 2)
        {
            with (obj_speedrun_tracker)
                east_west = 1
            num = 10
            for (i = 0; i < num; i++)
                global.msg[(i + 5)] = (("\\E" + string(((i % 2) + 1))) + ".../")
            global.msg[(num + 5)] = "\\E4* O-ok then.../"
            global.msg[(num + 6)] = scr_gettext("obj_phonecall_room_404")
            global.msg[(num + 7)] = scr_gettext("obj_phonecall_room_405")
        }
        global.plot = 133.5
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire8 && global.flag[373] == 0)
    {
        global.msg[0] = scr_gettext("obj_phonecall_room_411")
        global.msg[1] = scr_gettext("obj_phonecall_room_412")
        global.msg[2] = scr_gettext("obj_phonecall_room_413")
        global.msg[3] = scr_gettext("obj_phonecall_room_414")
        global.msg[4] = scr_gettext("obj_phonecall_room_415")
        global.msg[5] = scr_gettext("obj_phonecall_room_416")
        global.msg[6] = scr_gettext("obj_phonecall_room_417")
        global.msg[7] = scr_gettext("obj_phonecall_room_418")
        global.msg[8] = scr_gettext("obj_phonecall_room_419")
        if (global.flag[372] == 1)
        {
            global.msg[0] = scr_gettext("obj_phonecall_room_423")
            global.msg[1] = scr_gettext("obj_phonecall_room_424")
            global.msg[2] = scr_gettext("obj_phonecall_room_425")
            global.msg[3] = scr_gettext("obj_phonecall_room_426")
            global.msg[4] = scr_gettext("obj_phonecall_room_427")
            global.msg[5] = scr_gettext("obj_phonecall_room_428")
            global.msg[6] = scr_gettext("obj_phonecall_room_429")
        }
        global.flag[373] = 1
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire7 && global.plot < 132)
    {
        global.msg[0] = scr_gettext("obj_phonecall_room_464")
        global.msg[1] = scr_gettext("obj_phonecall_room_465")
        global.msg[2] = scr_gettext("obj_phonecall_room_466")
        global.msg[3] = scr_gettext("obj_phonecall_room_467")
        global.msg[4] = scr_gettext("obj_phonecall_room_468")
        global.msg[5] = scr_gettext("obj_phonecall_room_469")
        global.msg[6] = scr_gettext("obj_phonecall_room_470")
        global.msg[7] = scr_gettext("obj_phonecall_room_471")
        global.plot = 132
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_lasers1 && global.plot < 131)
    {
        global.msg[0] = scr_gettext("obj_phonecall_room_498")
        global.msg[1] = scr_gettext("obj_phonecall_room_499")
        global.msg[2] = scr_gettext("obj_phonecall_room_500")
        global.msg[3] = scr_gettext("obj_phonecall_room_501")
        global.msg[4] = scr_gettext("obj_phonecall_room_502")
        global.msg[5] = scr_gettext("obj_phonecall_room_503")
        global.msg[6] = scr_gettext("obj_phonecall_room_504")
        global.msg[7] = scr_gettext("obj_phonecall_room_505")
        global.msg[8] = scr_gettext("obj_phonecall_room_506")
        global.msg[9] = scr_gettext("obj_phonecall_room_507")
        global.msg[10] = scr_gettext("obj_phonecall_room_508")
        global.msg[11] = scr_gettext("obj_phonecall_room_509")
        if (global.plot < 130)
        {
            with (obj_speedrun_tracker)
            {
                if (global.flag[369] < 7)
                    six_nine = 2
                else
                    six_nine = 1
            }
        }
        global.plot = 131
        global.flag[462] = 0
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire6 && global.plot < 130)
    {
        global.msg[0] = scr_gettext("obj_phonecall_room_521")
        global.msg[1] = scr_gettext("obj_phonecall_room_522")
        global.msg[2] = scr_gettext("obj_phonecall_room_523")
        global.plot = 130
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_water5 && global.plot < 107)
    {
        global.plot = 107
        instance_create(40, 340, obj_stalkerflowey)
        global.msc = 553
        if (global.flag[67] == 1)
            donotcall = 1
    }
    if (room == room_water12 && global.flag[354] < 1)
    {
        global.flag[354] = 1
        instance_create(380, 40, obj_stalkerflowey)
        global.msc = 632
        if (global.flag[67] == 1)
            donotcall = 1
    }
    if (room == room_water_undynefinal3 && global.flag[354] < 2)
    {
        global.flag[354] = 2
        global.msc = 633
        if (global.flag[67] == 1)
            donotcall = 1
        if instance_exists(obj_undynea_chaser)
            obj_undynea_chaser.con = 20
    }
    if (room == room_water_trashzone2 && global.flag[493] == 10)
    {
        global.msg[0] = scr_gettext("obj_phonecall_room_569")
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("obj_phonecall_room_571")
        global.msg[3] = scr_gettext("obj_phonecall_room_572")
        global.msg[4] = scr_gettext("obj_phonecall_room_573")
        global.msg[5] = scr_gettext("obj_phonecall_room_574")
        global.msg[6] = scr_gettext("obj_phonecall_room_575")
        global.msg[7] = scr_gettext("obj_phonecall_room_576")
        global.msg[8] = scr_gettext("obj_phonecall_room_577")
        global.msg[9] = scr_gettext("obj_phonecall_room_578")
        global.msg[10] = scr_gettext("obj_phonecall_room_579")
        global.msg[11] = scr_gettext("obj_phonecall_room_580")
        global.msg[12] = scr_gettext("obj_phonecall_room_581")
        global.msg[13] = scr_gettext("obj_phonecall_room_582")
        global.msg[14] = scr_gettext("obj_phonecall_room_583")
        global.msg[15] = scr_gettext("obj_phonecall_room_584")
        global.msg[16] = scr_gettext("obj_phonecall_room_585")
        if (global.flag[67] == 1)
            donotcall = 1
        global.flag[492] = 0
        global.flag[493] = 11
    }
    if (room == room_fire10 && global.plot < 139)
    {
        global.msg[0] = scr_gettext("obj_phonecall_room_593")
        global.msg[1] = scr_gettext("obj_phonecall_room_594")
        global.msg[2] = scr_gettext("obj_phonecall_room_595")
        global.msg[3] = scr_gettext("obj_phonecall_room_596")
        global.msg[4] = scr_gettext("obj_phonecall_room_597")
        global.msg[5] = scr_gettext("obj_phonecall_room_598")
        global.msg[6] = scr_gettext("obj_phonecall_room_599")
        global.msg[7] = scr_gettext("obj_phonecall_room_600")
        global.msg[8] = scr_gettext("obj_phonecall_room_601")
        global.plot = 139
        if (global.flag[367] == 1)
            donotcall = 1
    }
    if (room == room_fire_finalelevator && global.flag[384] == 0)
    {
        var msg = 0
        caster_pause(global.currentsong)
        global.msg[msg++] = scr_gettext("obj_phonecall_room_569")
        global.msg[msg++] = "* (It's a voice you've&  never heard before...)/"
        global.msg[msg++] = "* Hey^1, uh^1, are you there?/"
        global.msg[msg++] = "* This is a message from&  Team BnP!/"
        global.msg[msg++] = "* How am I calling you&  from the inside&  of the CORE...?/"
        global.msg[msg++] = "* Well^1, how do you think&  Alphys does it?/"
        global.msg[msg++] = "* Anyway.../"
        global.msg[msg++] = "* I don't wanna waste too&  much of your time^1, but.../"
        global.msg[msg++] = "* Up ahead^1, you could&  come across some..^1.&  \"Glitches\"/"
        global.msg[msg++] = "* We're working on it^1,&  but as of now.../"
        global.msg[msg++] = "* Well^1, we didn't want to&  delay the update&  any longer./"
        global.msg[msg++] = "* And I'm sure you'll&  understand that^1, right?/"
        global.msg[msg++] = "* Well^1, uh^1, that's it&  for now^1, I guess./"
        global.msg[msg++] = "* Feel free to keep&  going^1, as there's still&  SOME stuff to look at./"
        global.msg[msg++] = "* But it won't be a&  completely bug free&  experience./"
        global.msg[msg++] = "* Alright^1!&* For real this time^1,&  that's everything I gotta say./"
        global.msg[msg++] = "* Hope you've enjoyed&  the mod so far!/"
        global.msg[msg++] = "* Stay tuned for future&  updates^1, okay?/"
        global.msg[msg++] = "* Later./"
        global.msg[msg++] = scr_gettext("obj_phonecall_room_600")
        global.msg[msg++] = scr_gettext("obj_phonecall_room_601")
        global.flag[384] = 1
        resume = 1
    }
    if (donotcall == 0)
        snd_play(snd_phone)
    if (donotcall == 0)
    {
        instance_create(0, 0, obj_dialoguer)
        global.interact = 1
    }
    t = 1
}
if (room == room_water5)
{
    if instance_exists(obj_townnpc_monsterkid1)
        obj_townnpc_monsterkid1.solvedpuzzle = 1
}
