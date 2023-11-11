event_inherited()
if (goner == 1)
{
    dsprite = spr_gkid_d
    usprite = spr_gkid_u
    lsprite = spr_gkid_l
    rsprite = spr_gkid_r
    dtsprite = spr_gkid_dt
    utsprite = spr_gkid_ut
    ltsprite = spr_gkid_lt
    rtsprite = spr_gkid_rt
}
if (global.debug == true && global.draw_debug == 1)
{
    draw_set_color(c_yellow)
    scr_setfont(fnt_maintext)
    draw_text(obj_mainchara.x, (obj_mainchara.y - 30), string_hash_to_newline(alarm[4]))
    draw_text(obj_mainchara.x, (obj_mainchara.y - 90), string_hash_to_newline(con))
}
