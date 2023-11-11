for (i = 0; i < 8; i += 1)
{
    itemid = global.phone[i]
    global.phonename[i] = scr_gettext(("phonename_" + string(itemid)))
    if (itemid == 210 && global.flag[465] > 0)
        global.phonename[i] = scr_gettext("phonename_210b")
}
