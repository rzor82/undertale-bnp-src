if (stringpos >= string_length(originalstring))
    return;
var advance = 1
var dosound = 0
var delay = textspeed
if (global.typer == 111)
    advance += 1
if (txtsound == snd_mtt1)
    advance += 2
if (txtsound == snd_txtrx1)
    advance += 2
if (txtsound == snd_txt_mewem)
    advance += 2
if (txtsound == snd_tem)
    advance += 2
if (txtsound == snd_txt_mewem)
    advance += 2
while (stringpos < string_length(originalstring) && advance > 0)
{
    stringpos++
    var ch = string_char_at(originalstring, stringpos)
    if (ch == "^")
    {
        stringpos++
        ch = string_char_at(originalstring, stringpos)
        if (ch != "0")
        {
            var n = real(ch)
            delay = (n * 10)
            advance = 1
        }
    }
    else if (ch == "\\")
    {
        stringpos++
        ch = string_char_at(originalstring, stringpos)
        if (ch == "S")
        {
            stringpos++
            var sfxtype = string_char_at(originalstring, stringpos)
            if (sfxtype == "+")
                sound_enable = 1
            else if (sfxtype == "-")
                sound_enable = 0
            else
            {
                var sfx = -4
                if (sfxtype == "p")
                    sfx = snd_phone
                if (sfx != -4)
                    snd_play(sfx)
            }
        }
        else if (ch == "z")
        {
            stringpos++
            advance--
            if sound_enable
                dosound = 1
        }
        else if (ch == "E" || ch == "F" || ch == "M" || ch == "T" || ch == "*")
            stringpos++
    }
    else if (ch != "/" && ch != "%" && ch != "&")
    {
        advance--
        if sound_enable
            dosound = 1
    }
}
alarm[0] = delay
if dosound
{
    if (txtsound == snd_mtt1)
    {
        snd_stop(snd_mtt1)
        snd_stop(snd_mtt2)
        snd_stop(snd_mtt3)
        snd_stop(snd_mtt4)
        snd_stop(snd_mtt5)
        snd_stop(snd_mtt6)
        snd_stop(snd_mtt7)
        snd_stop(snd_mtt8)
        snd_stop(snd_mtt9)
        var rnsound = floor(random(9))
        switch rnsound
        {
            case 0:
                snd_play(snd_mtt1)
                break
            case 1:
                snd_play(snd_mtt2)
                break
            case 2:
                snd_play(snd_mtt3)
                break
            case 3:
                snd_play(snd_mtt4)
                break
            case 4:
                snd_play(snd_mtt5)
                break
            case 5:
                snd_play(snd_mtt6)
                break
            case 6:
                snd_play(snd_mtt7)
                break
            case 7:
                snd_play(snd_mtt8)
                break
            case 8:
                snd_play(snd_mtt9)
                break
            default:
                snd_play(snd_mtt1)
                break
        }

    }
    else if (txtsound == snd_wngdng1)
    {
        snd_stop(snd_wngdng1)
        snd_stop(snd_wngdng2)
        snd_stop(snd_wngdng3)
        snd_stop(snd_wngdng4)
        snd_stop(snd_wngdng5)
        snd_stop(snd_wngdng6)
        snd_stop(snd_wngdng7)
        rnsound = floor(random(7))
        switch rnsound
        {
            case 0:
                snd_play(snd_wngdng1)
                break
            case 1:
                snd_play(snd_wngdng2)
                break
            case 2:
                snd_play(snd_wngdng3)
                break
            case 3:
                snd_play(snd_wngdng4)
                break
            case 4:
                snd_play(snd_wngdng5)
                break
            case 5:
                snd_play(snd_wngdng6)
                break
            case 6:
                snd_play(snd_wngdng7)
                break
            default:
                snd_play(snd_wngdng1)
                break
        }

    }
    else if (txtsound == snd_tem)
    {
        snd_stop(snd_tem)
        snd_stop(snd_tem2)
        snd_stop(snd_tem3)
        snd_stop(snd_tem4)
        snd_stop(snd_tem5)
        snd_stop(snd_tem6)
        rnsound = floor(random(6))
        switch rnsound
        {
            case 0:
                snd_play(snd_tem)
                break
            case 1:
                snd_play(snd_tem2)
                break
            case 2:
                snd_play(snd_tem3)
                break
            case 3:
                snd_play(snd_tem4)
                break
            case 4:
                snd_play(snd_tem5)
                break
            case 5:
                snd_play(snd_tem6)
                break
            default:
                snd_play(snd_tem)
                break
        }

    }
    else if (txtsound == snd_txtrx1)
    {
        snd_stop(snd_txtrx1)
        snd_stop(snd_txtrx2)
        snd_stop(snd_txtrx3)
        rnsound = floor(random(3))
        switch rnsound
        {
            case 0:
                snd_play(snd_txtrx1)
                break
            case 1:
                snd_play(snd_txtrx2)
                break
            case 2:
                snd_play(snd_txtrx3)
                break
            default:
                snd_play(snd_txtrx1)
                break
        }

    }
    else if (txtsound == snd_txt_mewem)
    {
        var pitch = 1
        caster_free(txtsound)
        mewemsound = floor(random(9))
        switch mewemsound
        {
            case 0:
                pitch = 0.97
                break
            case 1:
                pitch = 1.03
                break
            case 2:
                pitch = 0.9
                break
            case 3:
                pitch = 1.1
                break
            case 4:
                pitch = 1.2
                break
            case 5:
                pitch = 0.85
                break
            case 6:
                pitch = 1.1
                break
            case 7:
                pitch = 1
                break
            case 8:
                pitch = 0.93
                break
            default:
                pitch = 1
                break
        }

        caster_play(txtsound, 1.2, pitch)
    }
    else
    {
        ch = string_char_at(originalstring, stringpos)
        if (ch != " " && ch != "　" && ch != "." && ch != "," && ch != "(" && ch != ")" && ch != "!" && ch != "?" && ch != "*")
        {
            caster_free(txtsound)
            snd_stop(txtsound)
            snd_play(txtsound)
        }
    }
}
