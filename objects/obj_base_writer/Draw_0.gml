if (global.inbattle == 0 && room != room_friendtest && (!instance_exists(obj_blconsm)))
{
    if (!surface_exists(textsurf))
        textsurf = surface_create(320, 240)
    surface_set_target(textsurf)
    draw_clear_alpha(c_white, 0)
    draw_set_color(c_white)
}
if (!(variable_instance_exists(id, "overworldoffset")))
    overworldoffset = 0
if (!(variable_instance_exists(id, "force_outline")))
    force_outline = 0
if (!(variable_instance_exists(id, "quote_flip")))
    quote_flip = 0
if (!(variable_instance_exists(id, "myview")))
    myview = -1
if (!(variable_instance_exists(id, "prev")))
    prev = ""
if (myview >= 0 && view_current != myview)
    return;
if vtext
    myx = (writingxend - vspacing)
else
    myx = writingx
myy = writingy
outline = force_outline
quote_stack_ptr = 0
quote_stack[0] = ""
frog = 4044
var halfsize = 0
var n = 1
while (n <= stringpos)
{
    var ch = string_char_at(originalstring, n)
    var myletter = ""
    if (ch == "^" && string_char_at(originalstring, (n + 1)) != "0")
    {
        n++
        n++
        continue
    }
    else if (ch == "\\")
    {
        n++
        ch = string_char_at(originalstring, n)
        if scr_settextcolor(ch)
        {
        }
        else if (ch == "S" && object_index == OBJ_INSTAWRITER)
        {
            var orig_n = n
            var create = 1
            with (obj_shinygradient)
            {
                if (writer == other.id && x == (other.myx + 45) && y == other.myy)
                    create = 0
            }
            var gstart = string_char_at(originalstring, ++n)
            var gstop = string_char_at(originalstring, ++n)
            n++
            var c = string_char_at(originalstring, ++n)
            var w_str = ""
            while (c != "]")
            {
                w_str += c
                c = string_char_at(originalstring, ++n)
            }
            if create
            {
                show_debug_message(((gstart + " ") + gstop))
                show_debug_message(w_str)
                show_debug_message(((string(orig_n) + " -> ") + string(n)))
                with (instance_create((myx + 45), myy, obj_shinygradient))
                {
                    depth = (other.depth - 1)
                    width = ((real(w_str) * 2) + 10)
                    writer = other.id
                    start = gstart
                    stop = gstop
                    event_user(0)
                }
                show_debug_message("Created gradient")
            }
        }
        else if (ch == "C")
            event_user(1)
        else if (ch == "M")
        {
            n++
            ch = string_char_at(originalstring, n)
            global.flag[20] = real(ch)
        }
        else if (ch == "E")
        {
            n++
            ch = string_char_at(originalstring, n)
            do_letters = 1
            i = 0
            while (i < 10)
            {
                if (ch == string(i))
                {
                    do_letters = 0
                    break
                }
                else
                {
                    i++
                    continue
                }
            }
            if (do_letters == 0)
                global.faceemotion = real(ch)
            else
                global.faceemotion = string(ch)
        }
        else if (ch == "F")
        {
            n++
            ch = string_char_at(originalstring, n)
            do_letters = 1
            i = 0
            while (i < 10)
            {
                if (ch == string(i))
                {
                    do_letters = 0
                    break
                }
                else
                {
                    i++
                    continue
                }
            }
            if (do_letters == 0)
                global.facechoice = real(ch)
            else
                global.facechoice = string(ch)
            if (global.inbattle == 1)
                global.battlefacechange = 1
            else
                global.facechange = 1
        }
        else if (ch == "S")
            n++
        else if (ch == "T")
        {
            n++
            var newtyper = string_char_at(originalstring, n)
            if (newtyper == "-")
                halfsize = 1
            else if (newtyper == "+")
                halfsize = 0
            else
            {
                if (newtyper == "T")
                    global.typer = 4
                if (newtyper == "t")
                    global.typer = 48
                if (newtyper == "0")
                {
                    if (global.inbattle == 0)
                        global.typer = 5
                    else
                        global.typer = 1
                }
                if (newtyper == "f")
                    global.typer = 9
                if (newtyper == "S")
                    global.typer = 10
                if (newtyper == "F")
                    global.typer = 16
                if (newtyper == "s")
                    global.typer = 17
                if (newtyper == "P")
                    global.typer = 18
                if (newtyper == "M")
                    global.typer = 27
                if (newtyper == "U")
                    global.typer = 37
                if (newtyper == "A")
                    global.typer = 47
                if (newtyper == "a")
                    global.typer = 60
                if (newtyper == "R")
                    global.typer = 76
                if (newtyper == "m")
                    global.typer = 122
                if (newtyper == "r")
                    global.typer = 667
                if (newtyper == "b")
                    global.typer = 135
                if (newtyper == "x")
                    global.typer = 134
                if (newtyper == "z")
                    global.typer = 133
                if (newtyper == "Y")
                    global.typer = 124
                if (newtyper == "Q")
                    global.typer = 136
                if (newtyper == "L")
                    global.typer = 139
                if (newtyper == "l")
                    global.typer = 140
                if (newtyper == "N")
                    global.typer = 141
                if (newtyper == "W")
                    global.typer = 142
                if (newtyper == "B")
                    global.typer = 125
                if (newtyper == "q")
                    global.typer = 138
                if (newtyper == "d")
                    global.typer = 146
                SCR_TEXTTYPE(global.typer)
                global.facechange = 1
            }
        }
        else if (ch == "z")
        {
            n++
            var sym = real(string_char_at(originalstring, n))
            var size = 1
            var noshake = 0
            var movey = 0
            var color = c_white
            switch sym
            {
                case 4:
                    size = 2
                    sym_s = spr_infinitysign
                    break
                case 5:
                    sym_s = spr_sparestar
                    noshake = 1
                    color = 0x5ADBFF
                    if (global.flag[22] == 2)
                        color = 0xD4BBFF
                    break
                case 6:
                    sym_s = spr_tiredmark
                    noshake = 1
                    break
            }

            if noshake
                draw_sprite_ext(sym_s, 0, myx, ((myy + 10) + movey), size, size, 0, color, 1)
            else
                draw_sprite_ext(sym_s, 0, (myx + (random(shake) - (shake / 2))), (((myy + 10) + movey) + (random(shake) - (shake / 2))), size, size, 0, color, 1)
        }
        else if (ch == "K")
        {
            n++
            if (string_char_at(originalstring, n) == "0")
                shake = 0
            else if (string_char_at(originalstring, n) == "1")
                shake = 1
            else if (string_char_at(originalstring, n) == "2")
                shake = 2
        }
        else if (ch == "*")
        {
            n++
            ch = string_char_at(originalstring, n)
            var icontype = 0
            if (myfont == fnt_papyrus || myfont == fnt_ja_papyrus_btl)
                icontype = 1
            var sprite = scr_getbuttonsprite(ch, icontype)
            if (sprite != -4)
            {
                var spritex = myx
                var spritey = myy
                if (shake > 38)
                {
                    if (shake == 39)
                    {
                        direction += 10
                        spritex += hspeed
                        spritey += vspeed
                    }
                    else if (shake == 40)
                    {
                        spritex += hspeed
                        spritey += vspeed
                    }
                    else if (shake == 41)
                    {
                        direction += (10 * n)
                        spritex += hspeed
                        spritey += vspeed
                        direction -= (10 * n)
                    }
                    else if (shake == 42)
                    {
                        direction += (20 * n)
                        spritex += hspeed
                        spritey += vspeed
                        direction -= (20 * n)
                    }
                    else if (shake == 43)
                    {
                        direction += (30 * n)
                        spritex += ((hspeed * 0.7) + 10)
                        spritey += (vspeed * 0.7)
                        direction -= (30 * n)
                    }
                }
                else if (!instance_exists(obj_papdate))
                {
                    if (shake == 2)
                    {
                        spritex += (choose(0, 0, 0, 0, 0.5) * choose(-1, 1))
                        spritey += (choose(0, 0, 0, 0, 0.5) * choose(-1, 1))
                    }
                    else
                    {
                        spritex += (random(shake) - (shake / 2))
                        spritey += (random(shake) - (shake / 2))
                    }
                }
                var icon_scale = 1
                if (myfont == fnt_main || myfont == fnt_ja_main)
                    icon_scale = 2
                if (myfont == fnt_main || myfont == fnt_maintext)
                    spritey += (1 * icon_scale)
                if (myfont == fnt_ja_papyrus_btl)
                    spritex -= 1
                if (myfont == fnt_papyrus && icontype == 1)
                    spritey += floor(((16 - sprite_get_height(sprite)) / 2))
                if vtext
                {
                    draw_sprite_ext(sprite, 0, (spritex - sprite_get_width(sprite)), spritey, icon_scale, icon_scale, 0, c_white, 1)
                    myy += ((sprite_get_height(sprite) + 1) * icon_scale)
                }
                else
                {
                    draw_sprite_ext(sprite, 0, spritex, spritey, icon_scale, icon_scale, 0, c_white, 1)
                    myx += ((sprite_get_width(sprite) + 1) * icon_scale)
                }
            }
        }
        else if (ch == ">")
        {
            n++
            var choiceindex = real(string_char_at(originalstring, n))
            if (choiceindex == 1)
                myx = 196
            else
            {
                myx = 100
                if (myfont == fnt_ja_comicsans_big)
                    myx += 11
            }
            if (view_wview[view_current] == 640)
                myx *= 2
            myx += view_xview[view_current]
        }
        else if (ch == "s")
        {
            n++
            ch = string_char_at(originalstring, n)
            skippable = real(ch)
        }
        else if (ch == "_" && (!force_outline))
            outline ^= 1
        n++
        continue
    }
    else if (ch == "&")
    {
        script_execute(SCR_NEWLINE)
        n++
        continue
    }
    else if (ch == "/")
    {
        halt = true
        var nextch = string_char_at(originalstring, (n + 1))
        if (nextch == "%")
            halt = 2
        else if (nextch == "^" && string_char_at(originalstring, (n + 2)) != "0")
            halt = 4
        else if (nextch == "*")
            halt = 6
        break
    }
    else if (ch == "%")
    {
        if (string_char_at(originalstring, (n + 1)) == "%")
        {
            instance_destroy()
            break
        }
        else if (string_char_at(originalstring, (n + 1)) == "^")
        {
            global.myfight = 0
            global.mnfight = 1
            scr_process_soon()
            control_clear(0)
            instance_destroy()
            break
        }
        else
        {
            stringno++
            originalstring = scr_replace_buttons_pc(mystring[stringno])
            stringpos = 0
            myx = writingx
            myy = writingy
            alarm[0] = textspeed
            break
        }
    }
    else
    {
        myletter = string_char_at(originalstring, n)
        var flip = 0
        if (quote_flip && (myfont == fnt_main || myfont == fnt_maintext) && (myletter == "'" || myletter == "\"") && (prev == " " || prev == ""))
        {
            if (quote_stack_ptr > 0 && quote_stack[(quote_stack_ptr - 1)] == myletter)
                quote_stack_ptr--
            else
            {
                quote_stack[quote_stack_ptr++] = myletter
                flip = 1
            }
        }
        if (myletter == "^")
            n++
        if ((!vtext) && myx > writingxend)
            script_execute(SCR_NEWLINE)
        var letterx = myx
        var offsetx = 0
        var offsety = 0
        var halfscale = 1
        if halfsize
        {
            halfscale = 0.5
            if vtext
                offsetx += (vspacing * 0.33)
            else
                offsety += (vspacing * 0.33)
        }
        if (global.language == "en")
        {
            if (global.typer == 18)
            {
                if (myletter == "l" || myletter == "i")
                    letterx += 2
                if (myletter == "I")
                    letterx += 2
                if (myletter == "!")
                    letterx += 2
                if (myletter == ".")
                    letterx += 2
                if (myletter == "S")
                    letterx += 1
                if (myletter == "?")
                    letterx += 2
                if (myletter == "D")
                    letterx += 1
                if (myletter == "A")
                    letterx += 1
                if (myletter == "'")
                    letterx += 1
            }
        }
        else if (global.language == "ja")
        {
            if (vtext && (myfont == fnt_ja_papyrus || myfont == fnt_ja_papyrus_btl))
            {
                if (myy == writingy && (myletter == "「" || myletter == "『"))
                    myy -= round((((string_width(myletter) / 2) * htextscale) * halfscale))
            }
            else if (myfont == fnt_ja_maintext || myfont == fnt_ja_main)
            {
                var unit = (htextscale * halfscale)
                if (myfont == fnt_ja_main)
                    unit *= 2
                if (ord(myletter) < 1024 || ord(myletter) == 8211)
                {
                    if (n > 1)
                    {
                        var lastch = ord(string_char_at(originalstring, (n - 1)))
                        if (lastch >= 1024 && lastch < 65281 && lastch != 8211 && lastch != 12288)
                            letterx += unit
                    }
                }
            }
        }
        scr_setfont(myfont)
        draw_set_color(mycolor)
        var shakeamnt = 2
        if vtext
            var angle = -90
        else
            angle = 0
        if (shake > 38)
        {
            if (shake == 39)
            {
                direction += 10
                offsetx += hspeed
                offsety += vspeed
            }
            else if (shake == 40)
            {
                offsetx += hspeed
                offsety += vspeed
            }
            else if (shake == 41)
            {
                direction += (10 * n)
                offsetx += hspeed
                offsety += vspeed
                direction -= (10 * n)
            }
            else if (shake == 42)
            {
                direction += (20 * n)
                offsetx += hspeed
                offsety += vspeed
                direction -= (20 * n)
            }
            else if (shake == 43)
            {
                direction += (30 * n)
                offsetx += ((hspeed * 0.7) + 10)
                offsety += (vspeed * 0.7)
                direction -= (30 * n)
            }
        }
        else if (shake == 2)
        {
            offsetx += (choose(0, 0, 0, 0, 0.5) * choose(-1, 1))
            offsety += (choose(0, 0, 0, 0, 0.5) * choose(-1, 1))
        }
        else if (!global.inbattle)
        {
            offsetx += (random(shake) - (shake / 2))
            offsety += (random(shake) - (shake / 2))
        }
        else
        {
            if (global.newmenu && (!global.seriousbattle))
            {
                shakeamnt = 1
                if ((global.hp / global.maxhp) <= 1)
                    shakeamnt += ((2 / (global.hp / global.maxhp)) / 2)
                else
                    shakeamnt = 2
            }
            offsetx += (random(shake) - (shake / shakeamnt))
            offsety += (random(shake) - (shake / shakeamnt))
        }
        comment = "I don't ask you questions, don't ask me any."
        comment = "no u"
        comment = "I like being part of this too"
        var display_scale = (surface_get_width(application_surface) / view_wview[view_current])
        if instance_exists(obj_expander)
            display_scale = (global.origws / view_wview[view_current])
        if (instance_exists(obj_papdate) && obj_papdate.cn == 76)
        {
            display_scale *= view_wview[view_current]
            display_scale /= __view_get(2, view_current)
        }
        if flip
        {
            angle += 180
            myy += (2 * (string_height(myletter) / 3))
            letterx += (2 * (spacing / 3))
        }
        if (global.typer != 1)
        {
            var finalx = (round(((letterx + offsetx) * display_scale)) / display_scale)
            var finaly = (round(((myy + offsety) * display_scale)) / display_scale)
        }
        else
        {
            finalx = (((letterx + offsetx) * display_scale) / display_scale)
            finaly = (((myy + offsety) * display_scale) / display_scale)
        }
        var scalex = (htextscale * halfscale)
        var scaley = (vtextscale * halfscale)
        if outline
        {
            var xoff = scalex
            var yoff = scaley
            var tmp_col = draw_get_color()
            draw_set_color(c_black)
            draw_text_transformed((finalx - (xoff * 2)), finaly, myletter, scalex, scaley, angle)
            draw_text_transformed(finalx, (finaly - (yoff * 2)), myletter, scalex, scaley, angle)
            draw_text_transformed(finalx, (finaly + (yoff * 2)), myletter, scalex, scaley, angle)
            draw_text_transformed((finalx + (xoff * 2)), finaly, myletter, scalex, scaley, angle)
            draw_text_transformed((finalx - (xoff * 2)), (finaly - (yoff * 2)), myletter, scalex, scaley, angle)
            draw_text_transformed((finalx + (xoff * 2)), (finaly - (yoff * 2)), myletter, scalex, scaley, angle)
            draw_text_transformed((finalx - (xoff * 2)), (finaly + (yoff * 2)), myletter, scalex, scaley, angle)
            draw_text_transformed((finalx + (xoff * 2)), (finaly + (yoff * 2)), myletter, scalex, scaley, angle)
            draw_set_color(tmp_col)
        }
        if (draw_get_color() != 16777215 && draw_get_color() != 0)
        {
            var litcolor = merge_color(c_white, mycolor, 0.7)
            var darkcolor = merge_color(c_black, mycolor, 0.5)
            if (global.mnfight == 0)
                draw_text_transformed_color(finalx, finaly, myletter, scalex, scaley, angle, litcolor, litcolor, mycolor, mycolor, 1)
            else
                draw_text_transformed_color(finalx, finaly, myletter, scalex, scaley, angle, mycolor, mycolor, darkcolor, darkcolor, 1)
        }
        else
            draw_text_transformed(finalx, finaly, myletter, scalex, scaley, angle)
        if flip
        {
            myy -= (2 * (string_height(myletter) / 3))
            letterx -= (2 * (spacing / 3))
        }
        letterx += spacing
        if (global.language == "en")
        {
            if (myfont == fnt_comicsans)
            {
                if (myletter == "w")
                    letterx += 2
                if (myletter == "m")
                    letterx += 2
                if (myletter == "i")
                    letterx -= 2
                if (myletter == "l")
                    letterx -= 2
                if (myletter == "s")
                    letterx -= 1
                if (myletter == "j")
                    letterx -= 1
                if (myletter == ",")
                    letterx -= 1
                if (myletter == "'")
                    letterx -= 2
            }
            else if (myfont == fnt_papyrus)
            {
                if (myletter == "D")
                    letterx += 1
                if (myletter == "Q")
                    letterx += 3
                if (myletter == "M")
                    letterx += 1
                if (myletter == "L")
                    letterx -= 1
                if (myletter == "K")
                    letterx -= 1
                if (myletter == "C")
                    letterx += 1
                if (myletter == ".")
                    letterx -= 3
                if (myletter == ",")
                    letterx += 1
                if (myletter == "!")
                    letterx -= 3
                if (myletter == "O" || myletter == "W")
                    letterx += 2
                if (myletter == "I")
                    letterx -= 6
                if (myletter == "T")
                    letterx -= 1
                if (myletter == "P")
                    letterx -= 2
                if (myletter == "R")
                    letterx -= 2
                if (myletter == "A")
                    letterx += 1
                if (myletter == "H")
                    letterx += 1
                if (myletter == "B")
                    letterx += 1
                if (myletter == "G")
                    letterx += 1
                if (myletter == "F")
                    letterx -= 1
                if (myletter == "?")
                    letterx -= 3
                if (myletter == "'")
                    letterx -= 6
                if (myletter == "J")
                    letterx -= 1
            }
        }
        else if (global.language == "ja")
        {
            if vtext
                myy += round(((string_width(myletter) * htextscale) * halfscale))
            else if (myletter == " " || ord(myletter) >= 65377)
                letterx -= floor((spacing / 2))
            else if (ord(myletter) < 1024 || ord(myletter) == 8211)
            {
                if (myfont == fnt_ja_comicsans || myfont == fnt_ja_comicsans_big)
                    letterx -= floor((spacing * 0.3))
                else
                    letterx -= floor((spacing * 0.4))
            }
        }
        if (!vtext)
        {
            if halfsize
                myx = round((myx + ((letterx - myx) / 2)))
            else
                myx = letterx
        }
        prev = myletter
        n++
        continue
    }
}
if (global.inbattle == 0 && room != room_friendtest && (!instance_exists(obj_blconsm)))
{
    surface_reset_target()
    if (!instance_exists(obj_GUIWRITER))
    {
        if surface_exists(textsurf)
        {
            if overworldoffset
                draw_surface(textsurf, (__view_get(0, view_current) + global.menusurfx), (__view_get(1, view_current) + global.menusurfy))
            else
                draw_surface(textsurf, __view_get(0, view_current), __view_get(1, view_current))
        }
        draw_set_alpha(1)
    }
}
