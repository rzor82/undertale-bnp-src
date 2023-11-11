if (global.mnfight == 3)
    attacked = 0
if (alarm[5] > 0)
{
    if (global.monster[0] == true)
    {
        if (global.monsterinstance[0].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[0].alarm[5]
    }
    if (global.monster[1] == true)
    {
        if (global.monsterinstance[1].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[1].alarm[5]
    }
    if (global.monster[2] == true)
    {
        if (global.monsterinstance[2].alarm[5] > alarm[5])
            alarm[5] = global.monsterinstance[2].alarm[5]
    }
}
if (global.mnfight == 1)
{
    if (talked == false)
    {
        alarm[5] = 320
        alarm[6] = 2
        talked = true
        global.heard = 0
    }
}
if (control_check_pressed(0) && talkify == 0)
{
    if (alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
        alarm[5] = 2
}
if (talkify == 1 && instance_exists(OBJ_WRITER) == 0)
{
    alarm[5] = -2
    with (blconwd)
        instance_destroy()
    with (blcon)
        instance_destroy()
    talkify = 0
    talked = false
    whatiheard = -1
    global.mnfight = 2
}
if (global.hurtanim[myself] == 1)
{
    shudder = 16
    alarm[3] = global.damagetimer
    global.hurtanim[myself] = 3
}
if (global.hurtanim[myself] == 2)
{
    global.monsterhp[myself] -= takedamage
    with (dmgwriter)
        alarm[2] = 15
    if (global.monsterhp[myself] >= 1)
    {
        mypart1 = instance_create(x, y, part1)
        global.hurtanim[myself] = 0
        image_index = 0
        global.myfight = 0
        global.mnfight = 1
        scr_process_soon()
    }
    else
    {
        global.myfight = 0
        global.mnfight = 99
        killed = 1
        event_user(3)
    }
}
if (global.hurtanim[myself] == 5)
{
    global.damage = 0
    instance_create(((x + (sprite_width / 2)) - 48), (y - 24), obj_dmgwriter)
    with (obj_dmgwriter)
        alarm[2] = 30
    global.myfight = 0
    global.mnfight = 1
    scr_process_soon()
    global.hurtanim[myself] = 0
}
if (global.mnfight == 2)
{
    if (attacked == 0)
    {
        global.turntimer = 4
        global.firingrate = 15
        if (truefight == 0 && mycommand >= 0)
        {
            global.turntimer = 140
            if (murder == 1)
                global.turntimer = 2
            global.border = 5
            bz = round(random(20))
            gen = instance_create((global.idealborder[1] + 10), (global.idealborder[3] - (20 + bz)), blt_sizebone)
            with (gen)
                hspeed = -3
            bz = round(random(20))
            gen = instance_create((global.idealborder[1] + 90), (global.idealborder[3] - (20 + bz)), blt_sizebone)
            with (gen)
                hspeed = -3
            bz = round(random(20))
            gen = instance_create((global.idealborder[1] + 170), (global.idealborder[3] - (20 + bz)), blt_sizebone)
            with (gen)
                hspeed = -3
        }
        if (truefight == 1)
            obj_heart.sprite_index = spr_heartblue
        if (truefight == 1 && fighto == 15)
        {
            dontcancel = 4
            obj_heart.movement = 2
            obj_heart.vspeed = -1
            obj_heart.jumpstage = 2
            global.turntimer = 1300
            global.border = 5
            k = (global.idealborder[1] + 1900)
            gen = instance_create((global.idealborder[0] - 10), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[1] + 160), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 210), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[0] - 360), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[1] + 360), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[0] - 540), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen.osc = -4
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 540), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -4
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[0] - 640), (global.idealborder[3] - 50), blt_topbone)
            gen.hspeed = 4
            gen.osc = -4
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 640), (global.idealborder[3] - 50), blt_topbone)
            gen.hspeed = -4
            gen.osc = -4
            gen.oscmin = -1
            gen.oscmax = 60
            gen.hspeed = -4
            gen = instance_create((global.idealborder[0] - 740), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen.osc = -2
            gen.oscmin = -1
            gen.oscmax = 40
            gen = instance_create((global.idealborder[1] + 740), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -2
            gen.oscmin = -1
            gen.oscmax = 40
            gen.hspeed = -4
            gen = instance_create((global.idealborder[0] - 890), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen.osc = -2
            gen.oscmin = -1
            gen.oscmax = 40
            gen = instance_create((global.idealborder[1] + 890), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -2
            gen.oscmin = -1
            gen.oscmax = 40
            gen = instance_create((global.idealborder[1] + 1090), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -1
            gen.oscmin = -1
            gen.oscmax = 30
            gen = instance_create((global.idealborder[1] + 1120), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -1
            gen.oscmin = -1
            gen.oscmax = 30
            gen = instance_create((global.idealborder[1] + 1150), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -1
            gen.oscmin = -1
            gen.oscmax = 30
            gen = instance_create((global.idealborder[0] - 1340), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen.osc = -1
            gen.oscmin = -1
            gen.oscmax = 30
            gen = instance_create((global.idealborder[0] - 1370), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen.osc = -1
            gen.oscmin = -1
            gen.oscmax = 30
            gen = instance_create((global.idealborder[0] - 1400), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen.osc = -1
            gen.oscmin = -1
            gen.oscmax = 30
            gen = instance_create((global.idealborder[1] + 2000), (global.idealborder[3] - 40), blt_scootdog)
            gen.hspeed = -5
            gen = instance_create((global.idealborder[1] + 2240), (global.idealborder[3] - 60), blt_scootdog)
            gen.hspeed = -5
            gen.sprite_index = scr_getsprite(spr_cbone)
            gen = instance_create((global.idealborder[1] + 2280), (global.idealborder[3] - 60), blt_scootdog)
            gen.hspeed = -5
            gen.sprite_index = scr_getsprite(spr_oolbone)
            gen = instance_create((global.idealborder[1] + 2500), (global.idealborder[3] - 60), blt_scootdog)
            gen.hspeed = -5
            gen.sprite_index = scr_getsprite(spr_dbone)
            gen = instance_create((global.idealborder[1] + 2540), (global.idealborder[3] - 60), blt_scootdog)
            gen.hspeed = -5
            gen.sprite_index = scr_getsprite(spr_udebone)
            gen = instance_create((global.idealborder[1] + 2220), (global.idealborder[3] - 60), blt_scootdog)
            gen.hspeed = -4
            gen.sprite_index = spr_skatebone
            gen = instance_create((k + 10), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 70), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 130), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 190), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 250), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 310), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 370), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 430), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 490), (global.idealborder[3] - 60), blt_coolbus)
            gen.hspeed = -3
            gen = instance_create((k + 550), (global.idealborder[3] - 240), blt_superbone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 970), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -1
            fighto = 16
        }
        if (truefight == 1 && fighto == 14 && xfight > 3)
        {
            obj_heart.movement = 2
            obj_heart.vspeed = -1
            obj_heart.jumpstage = 2
            fighto = 15
            xfight = 0
            dontcancel = 1
            global.border = 50
            toby = instance_create(global.idealborder[1], (global.idealborder[3] - 40), blt_tobydogbone)
            alarm[7] = 80
        }
        if (truefight == 1 && fighto == 14)
        {
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            xfight += 1
            if (mycommand < 20)
            {
                global.turntimer = 210
                global.border = 5
                gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 30), blt_sizebone)
                gen.hspeed = 4
                gen = instance_create((global.idealborder[0] - 90), (global.idealborder[3] - 40), blt_sizebone)
                gen.hspeed = 4
                gen = instance_create((global.idealborder[0] - 120), (global.idealborder[3] - 50), blt_sizebone)
                gen.hspeed = 4
                gen = instance_create((global.idealborder[0] - 150), (global.idealborder[3] - 60), blt_sizebone)
                gen.hspeed = 4
                gen = instance_create((global.idealborder[0] - 180), (global.idealborder[3] - 50), blt_sizebone)
                gen.hspeed = 4
                gen = instance_create((global.idealborder[0] - 210), (global.idealborder[3] - 40), blt_sizebone)
                gen.hspeed = 4
                gen = instance_create((global.idealborder[0] - 240), (global.idealborder[3] - 30), blt_sizebone)
                gen.hspeed = 4
                gen = instance_create((global.idealborder[1] + 680), (global.idealborder[3] - 30), blt_sizebone)
                gen.hspeed = -6.4
                gen = instance_create((global.idealborder[1] + 720), (global.idealborder[3] - 40), blt_sizebone)
                gen.hspeed = -6.4
                gen = instance_create((global.idealborder[1] + 760), (global.idealborder[3] - 50), blt_sizebone)
                gen.hspeed = -6.4
                gen = instance_create((global.idealborder[1] + 800), (global.idealborder[3] - 60), blt_sizebone)
                gen.hspeed = -6.4
                gen = instance_create((global.idealborder[1] + 840), (global.idealborder[3] - 50), blt_sizebone)
                gen.hspeed = -6.4
                gen = instance_create((global.idealborder[1] + 880), (global.idealborder[3] - 40), blt_sizebone)
                gen.hspeed = -6.4
                gen = instance_create((global.idealborder[1] + 920), (global.idealborder[3] - 30), blt_sizebone)
                gen.hspeed = -6.4
            }
            if (mycommand >= 20 && mycommand < 40)
            {
                global.turntimer = 200
                global.border = 5
                gen = instance_create((global.idealborder[1] + 10), (global.idealborder[3] - 80), blt_sizebone)
                gen.hspeed = -5
                gen.blue = 1
                gen = instance_create((global.idealborder[1] + 90), (global.idealborder[3] - 20), blt_sizebone)
                gen.hspeed = -5
                gen.blue = 0
                gen = instance_create((global.idealborder[1] + 170), (global.idealborder[3] - 80), blt_sizebone)
                gen.hspeed = -5
                gen.blue = 1
                gen = instance_create((global.idealborder[1] + 250), (global.idealborder[3] - 20), blt_sizebone)
                gen.hspeed = -5
                gen.blue = 0
                gen = instance_create((global.idealborder[1] + 330), (global.idealborder[3] - 80), blt_sizebone)
                gen.hspeed = -5
                gen.blue = 1
                gen = instance_create((global.idealborder[1] + 410), (global.idealborder[3] - 20), blt_sizebone)
                gen.hspeed = -5
                gen.blue = 0
                gen = instance_create((global.idealborder[1] + 490), (global.idealborder[3] - 80), blt_sizebone)
                gen.hspeed = -5
                gen.blue = 1
                gen = instance_create((global.idealborder[1] + 570), (global.idealborder[3] - 20), blt_sizebone)
                gen.hspeed = -5
                gen.blue = 0
                gen = instance_create((global.idealborder[1] + 1150), (global.idealborder[3] - 80), blt_sizebone)
                gen.hspeed = -8
                gen.blue = 1
                gen = instance_create((global.idealborder[1] + 1230), (global.idealborder[3] - 20), blt_sizebone)
                gen.hspeed = -8
                gen.blue = 0
            }
            if (mycommand >= 40)
                fighto = (floor(random(11)) + 2)
        }
        if (truefight == 1 && fighto == 13)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 220
            global.border = 5
            gen = instance_create((global.idealborder[1] + 20), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 60), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 100), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 240), (global.idealborder[3] - 10), blt_topbone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 270), (global.idealborder[3] - 10), blt_topbone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 300), (global.idealborder[3] - 10), blt_topbone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 460), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 460), (global.idealborder[3] - 40), blt_topbone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 40
            gen = instance_create((global.idealborder[1] + 580), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 580), (global.idealborder[3] - 60), blt_topbone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 40
        }
        if (truefight == 1 && fighto == 12)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 200
            global.border = 5
            gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 87), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 114), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 141), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 168), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 195), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 222), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[1] + 600), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -6.4
            gen = instance_create((global.idealborder[1] + 640), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = -6.4
            gen = instance_create((global.idealborder[1] + 680), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = -6.4
            gen = instance_create((global.idealborder[1] + 720), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -6.4
            gen = instance_create((global.idealborder[1] + 760), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = -6.4
            gen = instance_create((global.idealborder[1] + 800), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = -6.4
            gen = instance_create((global.idealborder[1] + 840), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -6.4
        }
        if (truefight == 1 && fighto == 11)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 250
            global.border = 5
            gen = instance_create((global.idealborder[1] + 60), (global.idealborder[3] - 80), blt_sizebone)
            gen.hspeed = -4.5
            gen.blue = 1
            gen = instance_create((global.idealborder[1] + 140), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4.5
            gen.blue = 0
            gen = instance_create((global.idealborder[1] + 220), (global.idealborder[3] - 80), blt_sizebone)
            gen.hspeed = -4.5
            gen.blue = 1
            gen = instance_create((global.idealborder[1] + 300), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4.5
            gen.blue = 0
            gen = instance_create((global.idealborder[1] + 380), (global.idealborder[3] - 80), blt_sizebone)
            gen.hspeed = -4.5
            gen.blue = 1
            gen = instance_create((global.idealborder[1] + 460), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4.5
            gen.blue = 0
            gen = instance_create((global.idealborder[1] + 540), (global.idealborder[3] - 80), blt_sizebone)
            gen.hspeed = -4.5
            gen.blue = 1
            gen = instance_create((global.idealborder[1] + 620), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4.5
            gen.blue = 0
            gen = instance_create((global.idealborder[1] + 1250), (global.idealborder[3] - 80), blt_sizebone)
            gen.hspeed = -7
            gen.blue = 1
            gen = instance_create((global.idealborder[1] + 1330), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -7
            gen.blue = 0
        }
        if (truefight == 1 && fighto == 10)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 230
            global.border = 5
            gen = instance_create((global.idealborder[0] - 40), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 90), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 80), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 80), (global.idealborder[3] - 100), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 100), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 100), (global.idealborder[3] - 110), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 280), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 280), (global.idealborder[3] - 100), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 295), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 295), (global.idealborder[3] - 90), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 310), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 310), (global.idealborder[3] - 80), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[1] + 600), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 620), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            gen = instance_create((global.idealborder[1] + 640), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -3
            gen.oscmin = -1
            gen.oscmax = 60
            blt_topbone.speed = 4.2
            blt_sizebone.speed = 4.2
        }
        if (truefight == 1 && fighto == 9)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 355
            global.border = 5
            gen = instance_create((global.idealborder[1] + 60), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 220), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 220), (global.idealborder[3] - 100), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 360), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 360), (global.idealborder[3] - 90), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 500), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 500), (global.idealborder[3] - 80), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 640), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 640), (global.idealborder[3] - 70), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 780), (global.idealborder[3] - 10), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 780), (global.idealborder[3] - 50), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 990), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -1
            gen.oscmin = -1
            gen.oscmax = 30
            gen = instance_create((global.idealborder[1] + 990), (global.idealborder[3] - 80), blt_topbone)
            gen.hspeed = -4
            gen.osc = -1
            gen.oscmin = -1
            gen.oscmax = 30
            gen = instance_create((global.idealborder[1] + 1130), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = -4
            gen.osc = -2
            gen.oscmin = -20
            gen.oscmax = 30
            gen = instance_create((global.idealborder[1] + 1130), (global.idealborder[3] - 100), blt_topbone)
            gen.hspeed = -4
            gen.osc = -2
            gen.oscmin = -20
            gen.oscmax = 30
            blt_topbone.speed = 4.2
            blt_sizebone.speed = 4.2
        }
        if (truefight == 1 && fighto == 8)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 230
            global.border = 5
            gen = instance_create((global.idealborder[1] + 40), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 170), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 170), (global.idealborder[3] - 70), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 310), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 310), (global.idealborder[3] - 80), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 460), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 460), (global.idealborder[3] - 90), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 610), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 610), (global.idealborder[3] - 100), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 760), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 760), (global.idealborder[3] - 110), blt_topbone)
            gen.hspeed = -4
            blt_topbone.speed = 4.4
            blt_sizebone.speed = 4.4
        }
        if (truefight == 1 && fighto == 7)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 150
            global.border = 5
            gen = instance_create((global.idealborder[0] - 10), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 2
            gen = instance_create((global.idealborder[0] - 110), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 2
            gen = instance_create((global.idealborder[0] - 210), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 2
            gen = instance_create((global.idealborder[0] - 310), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 2
            gen = instance_create((global.idealborder[1] + 10), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -2
            gen = instance_create((global.idealborder[1] + 110), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -2
            gen = instance_create((global.idealborder[1] + 210), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -2
            gen = instance_create((global.idealborder[1] + 310), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -2
            if (xfight > 0)
                blt_sizebone.speed = 4.4
            else
            {
                blt_sizebone.speed = 4
                global.turntimer = 150
            }
        }
        if (truefight == 1 && fighto == 6)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 200
            global.border = 5
            gen = instance_create((global.idealborder[0] - 10), (global.idealborder[3] - 35), blt_sizebone)
            gen.hspeed = 2
            gen = instance_create((global.idealborder[0] - 110), (global.idealborder[3] - 35), blt_sizebone)
            gen.hspeed = 2
            gen = instance_create((global.idealborder[0] - 210), (global.idealborder[3] - 35), blt_sizebone)
            gen.hspeed = 2
            gen = instance_create((global.idealborder[1] + 10), (global.idealborder[3] - 35), blt_sizebone)
            gen.hspeed = -2
            gen = instance_create((global.idealborder[1] + 110), (global.idealborder[3] - 35), blt_sizebone)
            gen.hspeed = -2
            gen = instance_create((global.idealborder[1] + 210), (global.idealborder[3] - 35), blt_sizebone)
            gen.hspeed = -2
        }
        if (truefight == 1 && fighto == 5)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 330
            global.border = 5
            gen = instance_create((global.idealborder[1] + 40), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 70), (global.idealborder[3] - 45), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 100), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 130), (global.idealborder[3] - 45), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 160), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 190), (global.idealborder[3] - 15), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 300), (global.idealborder[3] - 15), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 330), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 360), (global.idealborder[3] - 45), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 390), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 700), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 730), (global.idealborder[3] - 45), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 760), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 790), (global.idealborder[3] - 45), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 820), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 850), (global.idealborder[3] - 15), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 970), (global.idealborder[3] - 15), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 1000), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 1030), (global.idealborder[3] - 45), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 1060), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -4
        }
        if (truefight == 1 && fighto == 4)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 240
            global.border = 5
            gen = instance_create((global.idealborder[0] - 40), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 40), (global.idealborder[3] - 80), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 60), (global.idealborder[3] - 80), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 170), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 170), (global.idealborder[3] - 110), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 190), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 190), (global.idealborder[3] - 110), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 320), (global.idealborder[3] - 90), blt_sizebone)
            gen.hspeed = 4
            gen.blue = 1
            gen = instance_create((global.idealborder[1] + 480), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 700), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 700), (global.idealborder[3] - 80), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[0] - 700), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 700), (global.idealborder[3] - 80), blt_topbone)
            gen.hspeed = 4
        }
        if (truefight == 1 && fighto == 3)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 150
            global.border = 5
            gen = instance_create((global.idealborder[0] - 40), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 40), (global.idealborder[3] - 90), blt_topbone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[1] + 140), (global.idealborder[3] - 40), blt_topbone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[0] - 260), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 280), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 300), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 320), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 340), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 360), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 380), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 400), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 4
            if (xfight > 0)
            {
                with (blt_sizebone)
                    speed = 4.5
            }
        }
        if (truefight == 1 && fighto == 2)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 240
            global.border = 5
            gen = instance_create((global.idealborder[0] - 30), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 3.5
            gen = instance_create((global.idealborder[0] - 160), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 3.5
            gen = instance_create((global.idealborder[0] - 290), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 3.5
            gen = instance_create((global.idealborder[0] - 390), (global.idealborder[3] - 80), blt_sizebone)
            gen.hspeed = 3.5
            gen.blue = 1
            if (xfight > 0)
                blt_sizebone.speed = 4
            gen = instance_create((global.idealborder[1] + 1120), (global.idealborder[3] - 30), blt_sizebone)
            gen.hspeed = -6
        }
        if (truefight == 1 && fighto == 1)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 220
            global.border = 5
            gen = instance_create((global.idealborder[0] - 10), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = 3
            gen = instance_create((global.idealborder[0] - 80), (global.idealborder[3] - 40), blt_topbone)
            gen.hspeed = 3
            gen = instance_create((global.idealborder[0] - 230), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 310), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 390), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 490), (global.idealborder[3] - 50), blt_sizebone)
            gen.hspeed = 4
            gen = instance_create((global.idealborder[0] - 580), (global.idealborder[3] - 40), blt_topbone)
            gen.hspeed = 4
            if (xfight > 0)
                blt_sizebone.speed = 4.5
        }
        if (truefight == 1 && fighto == 0)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
            }
            global.turntimer = 300
            global.border = 5
            gen = instance_create((global.idealborder[1] + 20), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 150), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 280), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 410), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = -4
            gen = instance_create((global.idealborder[1] + 390), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 510), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 630), (global.idealborder[3] - 60), blt_sizebone)
            gen.hspeed = -3
        }
        if (truefight == 1 && fighto == -1)
        {
            fighto += 1
            if (truefight == 1)
            {
                obj_heart.movement = 2
                obj_heart.vspeed = -1
                obj_heart.jumpstage = 2
                obj_heart.sprite_index = spr_heartblue
            }
            global.turntimer = 200
            global.border = 5
            gen = instance_create((global.idealborder[1] + 30), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 200), (global.idealborder[3] - 20), blt_sizebone)
            gen.hspeed = -3
            gen = instance_create((global.idealborder[1] + 370), (global.idealborder[3] - 40), blt_sizebone)
            gen.hspeed = -3
        }
        if (mycommand == -1)
        {
            global.border = 5
            global.turntimer = 300
            gen = instance_create(x, y, obj_blueattackgen)
        }
        if instance_exists(gen)
            gen.myself = myself
        hearthp = global.hp
        if (mycommand >= 0)
            global.msg[0] = scr_gettext("obj_papyrusboss_1584")
        if (mycommand > 15)
            global.msg[0] = scr_gettext("obj_papyrusboss_1585")
        if (mycommand >= 20)
            global.msg[0] = scr_gettext("obj_papyrusboss_1586")
        if (mycommand >= 30)
            global.msg[0] = scr_gettext("obj_papyrusboss_1587")
        if (mycommand >= 40)
            global.msg[0] = scr_gettext("obj_papyrusboss_1588")
        if (mycommand >= 60)
            global.msg[0] = scr_gettext("obj_papyrusboss_1589")
        if (mycommand >= 80)
            global.msg[0] = scr_gettext("obj_papyrusboss_1590")
        if (mycommand >= 90)
            global.msg[0] = scr_gettext("obj_papyrusboss_1591")
        if (mycommand >= 97)
            global.msg[0] = scr_gettext("obj_papyrusboss_1592")
        if (global.flag[66] == 1)
            flirt2 += 1
        if (flirt2 > 0 && flirt2 < 11)
        {
            if (flirt2 == 1)
                global.msg[0] = scr_gettext("obj_papyrusboss_1596")
            if (flirt2 == 2)
                global.msg[0] = scr_gettext("obj_papyrusboss_1597")
            if (flirt2 == 3)
                global.msg[0] = scr_gettext("obj_papyrusboss_1598")
            if (flirt2 == 4)
                global.msg[0] = scr_gettext("obj_papyrusboss_1599")
            if (flirt2 == 5)
                global.msg[0] = scr_gettext("obj_papyrusboss_1600")
            if (flirt2 == 6)
                global.msg[0] = scr_gettext("obj_papyrusboss_1601")
            if (flirt2 == 7)
                global.msg[0] = scr_gettext("obj_papyrusboss_1602")
            if (flirt2 == 8)
                global.msg[0] = scr_gettext("obj_papyrusboss_1603")
            if (flirt2 == 9)
                global.msg[0] = scr_gettext("obj_papyrusboss_1604")
            if (flirt2 == 10)
                global.msg[0] = scr_gettext("obj_papyrusboss_1605")
        }
        if (global.monsterhp[myself] < 100)
            global.msg[0] = scr_gettext("obj_papyrusboss_1609")
        if (mercymod >= 8000)
            global.msg[0] = scr_gettext("obj_papyrusboss_1611")
        if (murder == 1)
            global.msg[0] = scr_gettext("obj_papyrusboss_1613")
        attacked = 1
        if (xfight > 0)
            fighto = 14
    }
    if (global.turntimer < 3 && dontcancel == 0)
    {
        hearthp2 = global.hp
        obj_heart.vspeed = 0
        obj_heart.jumpstage = 0
        global.turntimer = -1
        global.mnfight = 3
        obj_heart.movement = 0
    }
    if (global.turntimer < 3 && dontcancel == 4)
    {
        alarm[8] = 2
        dontcancel = 5
    }
}
if (global.myfight == 2)
{
    if (whatiheard != -1)
    {
        if (global.heard == 0)
        {
            if (whatiheard == 0)
            {
                global.msc = 0
                global.msg[0] = scr_gettext("obj_papyrusboss_1645")
                if (murder == 1)
                    global.msg[0] = scr_gettext("obj_papyrusboss_1647")
                with (OBJ_WRITER)
                    halt = 3
                iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                with (iii)
                    halt = false
            }
            if (whatiheard == 1)
            {
                global.msc = 0
                with (OBJ_WRITER)
                    instance_destroy()
                if (insult <= 2 && truefight == 0)
                {
                    global.msg[0] = scr_gettext("obj_papyrusboss_1661")
                    global.msg[1] = scr_gettext("obj_papyrusboss_1662")
                    if (insult == 1)
                        global.msg[0] = scr_gettext("obj_papyrusboss_1663")
                    if (insult > 1)
                        global.msg[0] = scr_gettext("obj_papyrusboss_1664")
                    if (insult <= 2)
                    {
                        insult += 1
                        flirto = 2
                        global.typer = 22
                        sblcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
                        sblconwd = instance_create((sblcon.x + blcon_textofs), (sblcon.y + 10), OBJ_NOMSCWRITER)
                    }
                }
                else
                {
                    global.msc = 0
                    global.msg[0] = scr_gettext("obj_papyrusboss_1678")
                    if (truefight > 0)
                        global.msg[0] = scr_gettext("obj_papyrusboss_1680")
                    with (OBJ_WRITER)
                        halt = 3
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = false
                }
            }
            if (whatiheard == 3)
            {
                hotcha += 1
                with (OBJ_WRITER)
                    halt = 3
                if (hotcha <= 2 && truefight == 0)
                {
                    global.msg[0] = scr_gettext("obj_papyrusboss_1696")
                    global.msg[1] = scr_gettext("obj_papyrusboss_1697")
                    global.msg[2] = scr_gettext("obj_papyrusboss_1698")
                    flirto = 1
                    if (hotcha == 2)
                    {
                        global.msg[0] = scr_gettext("obj_papyrusboss_1700")
                        flirto = 2
                    }
                    if (hotcha > 2)
                    {
                        flirto = 0
                        whatiheard = 3
                        global.myfight = 0
                        global.mnfight = 1
                        scr_process_soon()
                    }
                    else
                    {
                        global.flag[66] = 1
                        global.typer = 22
                        sblcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
                        sblconwd = instance_create((sblcon.x + blcon_textofs), (sblcon.y + 10), OBJ_NOMSCWRITER)
                    }
                }
                else
                {
                    global.msc = 0
                    global.msg[0] = scr_gettext("obj_papyrusboss_1713")
                    if (truefight > 0)
                        global.msg[0] = scr_gettext("obj_papyrusboss_1715")
                    with (OBJ_WRITER)
                        halt = 3
                    iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                    with (iii)
                        halt = false
                }
            }
            if (whatiheard == 6)
            {
                with (OBJ_WRITER)
                    instance_destroy()
                global.msg[0] = scr_gettext("obj_papyrusboss_1754")
                global.msg[1] = scr_gettext("obj_papyrusboss_1755")
                flirto = 2
                global.typer = 22
                sblcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
                sblconwd = instance_create((sblcon.x + blcon_textofs), (sblcon.y + 10), OBJ_NOMSCWRITER)
            }
            global.heard = 1
            if (whatiheard == 7)
            {
                with (OBJ_WRITER)
                    instance_destroy()
                global.msg[0] = scr_gettext("obj_papyrusboss_1769")
                global.msg[1] = scr_gettext("obj_papyrusboss_1770")
                global.msg[2] = scr_gettext("obj_papyrusboss_1771")
                flirto = 2
                global.typer = 22
                sblcon = instance_create((x + 145), (y + 52), obj_blconwdflowey)
                sblconwd = instance_create((sblcon.x + blcon_textofs), (sblcon.y + 10), OBJ_NOMSCWRITER)
            }
        }
    }
}
if (global.myfight == 4)
{
    if (global.mercyuse == 0 || (global.mercyuse == 2 && global.mytarget == myself))
    {
        script_execute(scr_mercystandard)
        if (mercy < 0)
            event_user(2)
    }
}
if (flirto > 0)
{
    if (instance_exists(OBJ_WRITER) == 0)
    {
        if (flirto == 1)
        {
            global.msc = 0
            global.typer = 1
            global.myfight = 3
            global.bmenuno = 6
            global.msg[0] = scr_gettext("obj_papyrusboss_1804")
            with (OBJ_WRITER)
                halt = 3
            iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
            with (iii)
                halt = false
            with (sblcon)
                instance_destroy()
        }
        if (flirto == 2)
        {
            global.myfight = 0
            global.mnfight = 1
            scr_process_soon()
            stalk = 1
        }
        flirto = 0
    }
}
