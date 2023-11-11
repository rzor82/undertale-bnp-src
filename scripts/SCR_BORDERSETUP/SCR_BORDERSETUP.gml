switch global.border
{
    case 0:
        global.idealborder[0] = 32
        global.idealborder[1] = 602
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 1:
        global.idealborder[0] = 217
        global.idealborder[1] = 417
        global.idealborder[2] = 180
        global.idealborder[3] = 385
        break
    case 2:
        global.idealborder[0] = 217
        global.idealborder[1] = 417
        global.idealborder[2] = 125
        global.idealborder[3] = 385
        break
    case 3:
        global.idealborder[0] = 237
        global.idealborder[1] = 397
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 4:
        global.idealborder[0] = 267
        global.idealborder[1] = 367
        global.idealborder[2] = 295
        global.idealborder[3] = 385
        break
    case 5:
        global.idealborder[0] = 192
        global.idealborder[1] = 442
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 6:
        global.idealborder[0] = 227
        global.idealborder[1] = 407
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 7:
        global.idealborder[0] = 227
        global.idealborder[1] = 407
        global.idealborder[2] = 200
        global.idealborder[3] = 385
        break
    case 8:
        global.idealborder[0] = 202
        global.idealborder[1] = 432
        global.idealborder[2] = 290
        global.idealborder[3] = 385
        break
    case 9:
        global.idealborder[0] = 132
        global.idealborder[1] = 492
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 10:
        global.idealborder[0] = 147
        global.idealborder[1] = 487
        global.idealborder[2] = 200
        global.idealborder[3] = 385
        break
    case 11:
        global.idealborder[0] = 32
        global.idealborder[1] = 602
        global.idealborder[2] = 330
        global.idealborder[3] = 465
        break
    case 12:
        global.idealborder[0] = ((room_width / 2) - 40)
        global.idealborder[1] = ((room_width / 2) + 40)
        global.idealborder[2] = ((room_height / 2) - 40)
        global.idealborder[3] = ((room_height / 2) + 40)
        break
    case 13:
        global.idealborder[0] = ((room_width / 2) - 40)
        global.idealborder[1] = ((room_width / 2) + 40)
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 14:
        global.idealborder[0] = ((room_width / 2) - 35)
        global.idealborder[1] = ((room_width / 2) + 35)
        global.idealborder[2] = 300
        global.idealborder[3] = 385
        break
    case 15:
        global.idealborder[0] = ((room_width / 2) - 50)
        global.idealborder[1] = ((room_width / 2) + 50)
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 16:
        global.idealborder[0] = ((room_width / 2) - 50)
        global.idealborder[1] = ((room_width / 2) + 50)
        global.idealborder[2] = 50
        global.idealborder[3] = 385
        break
    case 17:
        global.idealborder[0] = 162
        global.idealborder[1] = 472
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 18:
        global.idealborder[0] = 162
        global.idealborder[1] = 472
        global.idealborder[2] = 220
        global.idealborder[3] = 385
        break
    case 19:
        global.idealborder[0] = ((room_width / 2) - 100)
        global.idealborder[1] = ((room_width / 2) + 100)
        global.idealborder[2] = 185
        global.idealborder[3] = 385
        break
    case 20:
        global.idealborder[0] = 257
        global.idealborder[1] = 547
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 21:
        global.idealborder[0] = 197
        global.idealborder[1] = 437
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 22:
        offpurple = 0
        if instance_exists(obj_purpleheart)
        {
            offpurple = obj_purpleheart.yzero
            if (offpurple > 250)
                offpurple = 250
        }
        global.idealborder[0] = 197
        global.idealborder[1] = 437
        global.idealborder[2] = 250
        if (offpurple != 0)
            global.idealborder[2] = (offpurple - 10)
        global.idealborder[3] = 385
        break
    case 23:
        offpurple = 0
        if instance_exists(obj_purpleheart)
        {
            offpurple = obj_purpleheart.yzero
            if (offpurple > 250)
                offpurple = 250
        }
        global.idealborder[0] = 197
        global.idealborder[1] = 537
        global.idealborder[2] = 250
        if (offpurple != 0)
            global.idealborder[2] = (offpurple - 10)
        global.idealborder[3] = 385
        break
    case 24:
        global.idealborder[0] = 235
        global.idealborder[1] = 405
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 25:
        global.idealborder[0] = 235
        global.idealborder[1] = 405
        global.idealborder[2] = 160
        global.idealborder[3] = 385
        break
    case 26:
        global.idealborder[0] = 295
        global.idealborder[1] = 345
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 27:
        global.idealborder[0] = 270
        global.idealborder[1] = 370
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 28:
        global.idealborder[0] = 235
        global.idealborder[1] = 405
        global.idealborder[2] = 35
        global.idealborder[3] = 385
        break
    case 29:
        global.idealborder[0] = 207
        global.idealborder[1] = 427
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 30:
        global.idealborder[0] = 207
        global.idealborder[1] = 427
        global.idealborder[2] = 200
        global.idealborder[3] = 385
        break
    case 31:
        global.idealborder[0] = 32
        global.idealborder[1] = 602
        global.idealborder[2] = 100
        global.idealborder[3] = 385
        break
    case 35:
        global.idealborder[0] = 132
        global.idealborder[1] = 502
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 36:
        global.idealborder[0] = 240
        global.idealborder[1] = 400
        global.idealborder[2] = 225
        global.idealborder[3] = 385
        break
    case 37:
        global.idealborder[3] = 385
        global.idealborder[2] = (global.idealborder[3] - 200)
        global.idealborder[0] = 120
        global.idealborder[1] = 520
        break
    case 38:
        global.idealborder[0] = 270
        global.idealborder[1] = 370
        global.idealborder[2] = 285
        global.idealborder[3] = 385
        break
    case 39:
        global.idealborder[0] = 132
        global.idealborder[1] = 502
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        global.idealborder[0] -= 20
        global.idealborder[1] += 40
        global.idealborder[2] -= 20
        break
    case 50:
        global.idealborder[0] = 192
        global.idealborder[1] = 512
        global.idealborder[2] = 250
        global.idealborder[3] = 385
        break
    case 51:
        global.idealborder[0] = 192
        global.idealborder[1] = 512
        global.idealborder[2] = 250
        if (obj_heart.y < 270)
            global.idealborder[2] = (round(((obj_heart.y - 20) / 5)) * 5)
        global.idealborder[3] = 385
        break
    case 52:
        global.idealborder[0] = 250
        global.idealborder[1] = 390
        global.idealborder[2] = 250
        global.idealborder[3] = 320
        break
    case 53:
        global.idealborder[0] = 240
        global.idealborder[1] = 275
        global.idealborder[2] = 395
        global.idealborder[3] = 335
        break
    case 54:
        global.idealborder[0] = ((room_width / 2) - 179)
        global.idealborder[1] = ((room_width / 2) + 177)
        global.idealborder[2] = 160
        global.idealborder[3] = 385
        break
    case 55:
        global.idealborder[0] = 310
        global.idealborder[1] = 330
        global.idealborder[2] = 290
        global.idealborder[3] = 310
        break
}

