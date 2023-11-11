for (i = argument0; i > 0; i -= 1)
    global.phone[i] = global.phone[(i - 1)]
global.phone[0] = argument1
script_execute(scr_phonename)
