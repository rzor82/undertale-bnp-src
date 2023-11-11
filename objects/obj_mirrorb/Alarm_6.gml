image_index = 0
if eliminate
    mycommand = 3
else if (mercy < 0)
    mycommand = -1
else if ((!shielded) && global.monsterhp[myself] < (global.monstermaxhp[myself] * hpthreshold))
{
    show_debug_message(((((("HP below threshold (" + string(floor((hpthreshold * 100)))) + "%): ") + string(global.monsterhp[myself])) + "/") + string(global.monstermaxhp[myself])))
    mycommand = 3
    hpthreshold -= 0.33
}
else
{
    var skipshield = (shielded || mycommand == 3 || noshield)
    mycommand = irandom((skipshield ? 2 : 3))
    noshield = 0
}
