switch argument0
{
    case room_start:
        return scr_gettext("roomname_0");
    case 1:
        return "Intro";
    case 2:
        return "Title Menu";
    case 3:
        return "Main Menu";
    case 4:
        return "The Underground - The Room of Fallen Stars";
    case 5:
        return "The Underground - Flowey's Room";
    case 7:
        return "The Ruins - Switch Puzzle 1";
    case 8:
        return "The Ruins - Switch Puzzle 2";
    case 9:
        return "The Ruins - Dummy Training Room";
    case 10:
        return "The Ruins - Spike Puzzle";
    case 11:
        return "The Ruins - Long Hallway";
    case 13:
        return "The Ruins - Candy Dish";
    case 14:
        return "The Ruins - Cracked Hallway";
    case 15:
        return "The Ruins - Rock Push Puzzle 1";
    case 16:
        return "The Ruins - Hole Maze Puzzle";
    case 17:
        return "The Ruins - Rock Push Puzzle 2";
    case 19:
        return "The Ruins - Ghost Crossing";
    case 20:
        return "The Ruins - Spider Bake Sale";
    case 21:
        return "The Ruins - Four Frogs";
    case 22:
        return "The Ruins - Hole Puzzle 2";
    case 23:
        return "The Ruins - Switched Perspective 1";
    case 24:
        return "The Ruins - Switched Perspective 2";
    case 25:
        return "The Ruins - Switched Perspective 3";
    case 26:
        return "The Ruins - Switched Perspective 4";
    case 27:
        return "The Ruins - Failure";
    case 28:
        return "The Ruins - Path Split";
    case 29:
        return "The Ruins - Outskirts ";
    case 30:
        return "The Ruins - Home View";
    case 32:
        return "Toriel's House - Foyer";
    case 33:
        if (room == room_torhouse2 && instance_exists(obj_mainchara))
        {
            if (obj_mainchara.x <= 312)
                return "Toriel's House - Kitchen";
            else if (obj_mainchara.x <= 612)
                return "Toriel's House - Dining Room";
        }
        return "Toriel's House - Living Room";
    case 34:
        return "Toriel's House - Hallway";
    case 35:
        return "Toriel's House - Toriel's Room";
    case 36:
        return ("Toriel's House - " + (global.flag[7] == 1 ? "Asriel's Room" : "Children's Room"));
    case 37:
        return "Toriel's House - Bathroom";
    case 38:
        return "Toriel's Basement - Stairwell";
    case 39:
        return "Toriel's Basement - Hallway";
    case 40:
        return "Toriel's Basement - Storage";
    case 41:
        return "Toriel's Basement - Exit Door";
    case 42:
        return "Toriel's Basement - Last Hallway";
    case 43:
        return "The Underground - Ruins Exit";
    case 45:
        return ("Snowdin - " + (global.plot < 36 ? "???" : "Conveniently Named Room"));
    case 47:
        return "Snowdin - Fishing Pole";
    case 48:
        return "Snowdin - Cardboard Sentry Station";
    case 49:
        return "Snowdin - Doggo's Sentry Station";
    case 50:
        return "Snowdin - Stop Sign Education 101";
    case 51:
        return "Snowdin - Snowman's Cliff";
    case 52:
        return "Snowdin - Electric Maze";
    case 53:
        return "Snowdin - Ball";
    case 54:
        return "Snowdin - His & Hers";
    case 55:
        return "Snowdin - GIASFCLFUBREHBER";
    case 57:
        return "Snowdin - Snow Puzzle";
    case 58:
        return "Snowdin - XOXO Puzzle 1";
    case 59:
        return "Snowdin - XOXO Puzzle 2: PAPYRUS EDITION";
    case 60:
        return "Snowdin - Colored Tile Puzzle";
    case 62:
        return "Snowdin - Snowskeletons";
    case 63:
        return "Snowdin - XOXO Ice Puzzle";
    case 64:
        return "Snowdin - Gyftrot Room";
    case 65:
        return "Snowdin - Forest Outlook";
    case 66:
        return "Snowdin - Poff Zone";
    case 67:
        return "Snowdin - Town Bridge";
    case 69:
        return "Snowdin - Snowdin Town (cont.)";
    case 70:
        return "Snowdin - Dock";
    case 71:
        return "Snowdin - Snow'd Inn";
    case 72:
        return "Snowdin - Sleep Well!";
    case 73:
        return "Snowdin - Grillby's";
    case 74:
        return "Snowdin - Librarby";
    case 75:
        return "Snowdin - Sans and Papyrus's Garage";
    case 76:
        return "Snowdin - Sans and Papyrus's House";
    case 77:
        return "Snowdin - Papyrus's Room";
    case 78:
        return "Snowdin - sans's room.";
    case 79:
        return "Snowdin - ???";
    case 80:
        return "Snowdin - Weird Lab";
    case 81:
        return "Snowdin - Fog Room";
    case 82:
        return "Waterfall - Riverside Hallway";
    case 84:
        return "Waterfall - Suspicious Waterfall";
    case 85:
        return "Waterfall - Dusty Tutu";
    case 87:
        return "Waterfall - Bridge Seeds 1";
    case 88:
        return "Waterfall - Bridge Seeds 1";
    case 89:
        return "Waterfall - Bench of Shame";
    case 90:
        return "Waterfall - Telescope Room";
    case 91:
        return "Waterfall - Beast Illustration";
    case 92:
        return "Waterfall - Spear Chase";
    case 93:
        return "Waterfall - Hall of Grass";
    case 95:
        return "Waterfall - Star Room";
    case 96:
        return "Waterfall - Nicecream";
    case 97:
        return "Waterfall - Marsh";
    case 98:
        return "Waterfall - Ballet Shoes";
    case 99:
        return "Waterfall - Room With An Extremely Long Name To Match The Name Of The Iconic Moment That Takes Place Within It";
    case 100:
        return "Waterfall - Onionsan's Room";
    case 101:
        return (("Waterfall - Shyren's " + (global.flag[81] == 2 ? "Singing" : "Crying")) + " Corner");
    case 102:
        return "Waterfall - Piano Puzzle";
    case 103:
        return "Waterfall - Strange Artifact";
    case 104:
        return "Waterfall - Statue";
    case 105:
        return "Waterfall - Umbrella Bin";
    case 106:
        return "Waterfall - Shelter from the Rain";
    case 107:
        return "Waterfall - Hallway";
    case 108:
        return "Waterfall - New Home View";
    case 109:
        return "Waterfall - Cliff";
    case 111:
        return "Waterfall - Bridge Chase";
    case 112:
        return "Waterfall - Bridge Chase End";
    case 113:
        return "Waterfall - Crash Site";
    case 115:
        return "Waterfall - Dump";
    case 117:
        return "Waterfall - Undyne's Front Yard";
    case 118:
        return "Waterfall - Undyne's House";
    case 119:
        return "Waterfall - Blook Family Residences";
    case 120:
        return "Waterfall - Napstablook's House";
    case 121:
        return "Waterfall - ???'s House";
    case 122:
        return "Waterfall - Blook Family Snail Farm";
    case 123:
        return "Waterfall - Bug Catching Spot";
    case 124:
        return "Waterfall - Gerson's Shop";
    case 125:
        return "Waterfall - Dock";
    case 126:
        return "Waterfall - White Noise";
    case 127:
        return "Waterfall - Forest";
    case 129:
        return "Waterfall - Magic Crystal";
    case 130:
        if (global.plot >= 118)
            return "Waterfall - Undyne's Trap";
        else if (instance_exists(obj_undyne_echoflower) && obj_undyne_echoflower.con == 14 && instance_exists(OBJ_WRITER) && OBJ_WRITER.stringno == 0)
            return "Waterfall - Seven";
        return "Waterfall - Dead End";
    case 131:
        return "Waterfall - Echo Flower Room";
    case 132:
        return "Waterfall - Bridge";
    case 133:
        return "Waterfall - Block Puzzle";
    case 135:
        return "Waterfall - Undyne Chase";
    case 136:
        return "Hotland - Welcome Sign";
    case 137:
        return "Hotland - sans's sentry station.";
    case 138:
        return "Hotland - Water Cooler";
    case 140:
        return "Hotland - Dock";
    case 141:
        return "Hotland - Alphys's Lab";
    case 142:
        return "Hotland - Alphys's Room";
    case 143:
        return "Hotland - Lab Exit";
    case 144:
        return "Hotland - Conveyor Loop";
    case 146:
        return "Hotland - Frying Pan";
    case 147:
        return "Hotland - Laser Puzzle 1";
    case 148:
        return "Hotland - Vent Junction";
    case 149:
        return "Hotland - Popular Hangout Spot";
    case 150:
        return "Hotland - Shootguy!";
    case 151:
        return "Hotland - Unpopular Hangout Spot";
    case 152:
        return "Hotland - Shootguy 2!";
    case 153:
        return "Hotland - Vent Path";
    case 154:
        return "Hotland - Cooking Show Set";
    case 156:
        return "Hotland - R1 Elevator";
    case 157:
        return "Hotland - R2 Elevator";
    case 158:
        return ("Hotland - " + (instance_exists(obj_sans_room) ? "sans's hotdog stand." : "Hotdog Stand"));
    case 159:
        return "Hotland - Branched Path";
    case 160:
        return "Hotland - Art Club Room";
    case 161:
        return "Hotland - Apron";
    case 162:
        return "Hotland - Really Really Really Hard Puzzle That Will Take Hours";
    case 163:
        return "Hotland - Vent Switches";
    case 165:
        if (current_weekday == 2 || current_weekday == 4)
            return "Hotland - Girls Night Out";
        return "Hotland - Boys Night Out";
    case 166:
        return "Hotland - News Report Set";
    case 167:
        return "Hotland - CORE View";
    case 168:
        return "Hotland - L2 Elevator";
    case 169:
        return "Hotland - L3 Elevator";
    case 170:
        return "Hotland - Muffet's Bakery";
    case 171:
        return "Hotland - The Montage Section Of The Trailer";
    case 172:
        return "Hotland - Conveyor Belts n' Lasers";
    case 173:
        return "Hotland - Shootguy 3!: Shootgirl's Awakening";
    case 174:
        return "Hotland - Fanboy Zone";
    case 175:
        return "Hotland - Shootguy 4!: Infinity War";
    case 177:
        return "Hotland - Muffet's Parlor";
    case 178:
        return "Hotland - Backstage Area";
    case 179:
        return "Hotland - Opera Stage Set";
    case 180:
        return "Hotland - I Really Wish I Remembered The Rules";
    case 181:
        return "Hotland - Nicecream Break";
    case 182:
        return "Hotland - Hotel Front";
    case 184:
        return "Hotland - Hotel Restaurant ";
    case 185:
        return "Hotland - Hotel Hallway";
    case 186:
        return "Hotland - Bed Lump Time";
    case 187:
        return "Hotland - R3 Elevator";
    case 188:
        return "Hotland - CORE Approach";
    case 189:
        return "CORE - CORE Elevator";
    case 190:
        return "CORE - This Joke Doesn't Work Anymore";
    case 191:
        return "CORE - Ambush 1";
    case 192:
        return "CORE - Lasers 1";
    case 193:
        return "CORE - Branch";
    case 194:
        return "CORE - Ambush 2";
    case 195:
        return "CORE - Lasers 2";
    case 197:
        return "CORE - So THAT'S Where The Ice Goes";
    case 198:
        return "CORE - Path";
    case 199:
        return "CORE - Path";
    case 200:
        return "CORE - Path";
    case 201:
        return "CORE - Path ";
    case 202:
        return "CORE - Path";
    case 203:
        return "CORE - Path";
    case 204:
        return "CORE - Path";
    case 205:
        return "CORE - Shootguy V!: The Final Shot ";
    case 206:
        return "CORE - Trash";
    case 207:
        return "CORE - Trash";
    case 208:
        return "CORE - Warrior's Path";
    case 209:
        return "CORE - Bridge";
    case 211:
        return "CORE - The Big Finale!";
    case 212:
        return "CORE - Exit Hallway";
    case 213:
        return "Hotland - Elevator ";
    case 214:
        return "Hotland - L1 Elevator";
    case 215:
        return "Elevator";
    case 217:
        return "New Home - Capital View ";
    case 218:
        return "New Home - Royal Walkway";
    case 220:
        return "The Royal Home - Foyer";
    case 221:
        return "The Royal Home - Living Room";
    case 222:
        return "The Royal Home - Hallway";
    case 223:
        return "The Royal Home - Asgore's Room";
    case 224:
        return (("The Royal Home - " + (scr_murderlv() >= 16 ? "My" : (global.flag[7] == 1 ? "\\[C] and Asriel's" : "Children's"))) + " Room");
    case 225:
        return "The Royal Home - Kitchen";
    case 226:
        return "The Royal Basement - Stairwell";
    case 227:
        return "The Royal Basement - Hallway";
    case 228:
        return "The Royal Basement - Storage";
    case 229:
        return "The Royal Basement - Exit";
    case 230:
        return "New Home - Castle Approach";
    case 231:
        return "New Home - Judgment Hall";
    case 233:
        return "The Royal Castle - Stairwell";
    case 234:
        return "The Royal Castle - ...";
    case 237:
        return "The Barrier";
    case 238:
        return "...";
    case 239:
        return "The End";
    case 240:
        return "The Underground - Exit";
    case 241:
        return "The Surface - Sunset View";
    case 242:
        return "Hotland - Lab Elevator";
    case 243:
        return (global.flag[477] == 1 ? "True Lab - Elevator" : "??? - ???");
    case 244:
        return (global.flag[477] == 1 ? "True Lab - Elevator Crash Site" : "??? - ???");
    case 245:
        return (global.flag[477] == 1 ? "True Lab - Hallway" : "??? - ???");
    case 247:
        return "True Lab - Hallway 2";
    case 248:
        return "True Lab - Operating Room";
    case 249:
        return "True Lab - Red Switch";
    case 250:
        return "True Lab - Hallway Turn";
    case 252:
        return "True Lab - Mirror Hall";
    case 253:
        return "True Lab - Blue Switch";
    case 254:
        return "True Lab - Branch Hallway";
    case 255:
        return "True Lab - Shower";
    case 256:
        return "True Lab - Strange Machine";
    case 257:
        return "True Lab - TV";
    case 258:
        return "True Lab - Cooler";
    case 259:
        return "True Lab - Switch";
    case 260:
        return "True Lab - Fans";
    case 261:
        return "True Lab - Split Elevator";
    case 262:
        return "True Lab - Hallway 4";
    case 263:
        return "True Lab - Power Switch";
    case 264:
        return "🕈☟✡ ✌☼☜ ✡⚐🕆 ☟☜☼☜✍";
    case 265:
        return "Snowdin - Ice Cave";
    case 266:
        return "Snowdin - Toby's Room";
    case 267:
        return "stupid battle room";
    case 268:
        return "CONNECTION LOST";
    case 269:
        return "CONNECTION LOST";
    case 270:
        return "Sound Test";
    case 271:
        return "you must really like seeing unchanged unused rooms, huh?";
    case 272:
        return "CONNECTION LOST";
    case 273:
        return "Waterfall - Bridge Seed Hide and Seek";
    case 274:
        return "The Surface - Cave Entrance";
    case 275:
        return "The Surface - Forest";
    case 276:
        return "bullet test thing idk";
    case 277:
        return "Hotland - The Game";
    case 278:
        return "Credits";
    case 279:
        return "Credits - Papyrus and Sans";
    case 280:
        return "Credits - Undyne and Alphys";
    case 281:
        return "Credits - Mettaton and Blooky";
    case 282:
        return "Credits - Toriel and Asgore";
    case 283:
        return "Credits";
    case 284:
        return "Credits Dodger";
    case 285:
        return "Frisk's House - Frisk's Room";
    case 286:
        return "The End";
    case 287:
        return "sprite check";
    case 288:
        return "Settings";
    case 289:
        return "Control Test";
    case 291:
        return "Intro";
    case 292:
        return "Flowey's Menu";
    case 293:
        return "Flowey's World";
    case 294:
        return "Photoshop Flowey Fight";
    case 295:
        return "...";
    case 296:
        return "Hotland - CORE Cliff View";
    case 297:
        return "Hotland - Lava Edge";
    case 298:
        return "Hotland - Towering Machine Pit";
    case 299:
        return "kinda bad ice physics test with some weird, unused \"current\" types of ice";
    case 300:
        return "Waterfall - Rock Candy";
    case 301:
        return "why does it keep growing wtf";
    case 302:
        return "Waterfall - Torch Puzzle";
    case 303:
        return "Waterfall - ???";
    case 304:
        return "Waterfall - Mushroom and Rails";
    case 305:
        return "not sure what this was for";
    case 306:
        return "In Battle!";
    case 307:
        return "Flowey's teaching me the Basics! ;P";
    case 308:
        return "lmao unused battle because the old fast battles were lame and overworld battles are much better";
    case 309:
        return "Listening to a Story";
    case 310:
        return "GAME OVER";
    case 311:
        return "Snowdin - QC's Hot n' Cold Treats";
    case 312:
        return "Waterfall - Gerson's Antiques";
    case 313:
        return "Hotland - Back Alley Business";
    case 314:
        return "Hotland - MTT-Brand Burger Emporium";
    case 315:
        return "Waterfall - Tem Shop";
    case 316:
        return "The Underground - River Person's Boat";
    case 317:
        return ((global.flag[66] == 1 ? "Dating" : "Hanging Out with") + " Papyrus!");
    case 318:
        return "Dating Alphys!";
    case 319:
        return "...";
    case 320:
        return "...";
    case 321:
        return "";
    case 322:
        return "";
    case 323:
        return "";
    case 324:
        return "The Void";
    case 325:
        return "Undertale Title";
    case 326:
        return "Room of Dog";
    case 327:
        return "Being Quizzed by Mettaton!";
    case 328:
        return "The Barrier";
    case 329:
        return "The Barrier";
    case 330:
        return "...";
    case 331:
        return "...";
    case 332:
        return "His Memory";
    case 333:
        return "an asriel test room, I guess";
    case 334:
        return "an asriel test room, I guess";
    case 335:
        return "Dog Shrine";
    case 336:
        return "Dog Shrine - Ruined";
    case 337:
        return "Dog Shrine - Mew Mew Room";
    case 338:
        return "Room of POG";
    case 339:
        return "Hotland - Ominous Hallway";
    case 340:
        return "Ruins - Sewer View";
    case 341:
        return "Sewer - Exit";
    case 342:
        return "Sewer - Split Path";
    case 343:
        return "Sewer - Dead End";
    case 344:
        return "Sewer - Bridge and Overlook";
    case 345:
        return "Sewer - Rock Puzzle";
    case 346:
        return "Snowdin - Side Path";
    case 347:
        return "Snowdin - DoubleDrake Path";
    case 348:
        return "Snowdin - Lake";
    case 349:
        return "prunsel prunsel prunsel prunsel prunsel prunsel prunsel prunsel prunsel prunsel prunsel prunsel prunsel prunsel prunsel";
    case 350:
        return "CORE - Roadblock";
    case 351:
        return "Snowdin - Teen Hangout";
    case 352:
        return "Snowdin - Inn Doors";
    case 353:
        return "Waterfall - Gerson's Antiques";
    case 354:
        return "Sewer - Ladders";
    case 355:
        return "Sewer - Upper Level";
    case 356:
        return "Sewer - Going Down";
    case 357:
        return "Sewer - Switch Puzzle";
    case 358:
        return "Waterfall - Break Area";
    case 359:
        return "Waterfall - Bath House Entrance";
    case 360:
        return "Bath House - Locker Room";
    case 361:
        return "Bath House - Sauna";
    case 362:
        return "Bath House - Split Path";
    case 363:
        return "Bath House - Balcony";
    case 364:
        return "Bath House - Stairs";
    case 365:
        return "Bath House - Exit";
    case 366:
        return "Waterfall - Bath House Back Door";
    case 367:
        return "Hotland - Back Alley Business";
    case 368:
        return "Hotland - MTT-Brand Burger Emporium";
    case 369:
        return "Waterfall - Tem Shop";
    case 370:
        return "Snowdin - QC's Hot n' Cold Treats";
    case 371:
        return "CORE - Control Room";
    case 372:
        return "Hotland - Hotterland Entrance";
    case 373:
        return "CONNECTION LOST";
    case 374:
        return "Toriel's House - Bathroom";
    case 375:
        return "The Royal Home - Bathroom";
    case 376:
        return "Hotland - Hotland Heights Prelude";
    case 377:
        return "Hotland - Hotland Heights Hub";
    case 378:
        return "Hotland - Hotland Heights Shortcut";
    case 379:
        return "Hotland - Lower Hotland Heights";
    case 380:
        return "HOME - Hub";
    case 381:
        return "HOME - Store";
    case 382:
        return "Ruins - Long Walkway";
    case 386:
        return "CONNECTION LOST";
    case 393:
        return "CONNECTION LOST";
    case 396:
        return "Snowdin - Doge Sentry";
    case 402:
        return "CONNECTION LOST";
    case 408:
        return "CONNECTION LOST";
}

var roomid = room_get_name(argument0)
if (substr(roomid, 1, 5) == "room_")
{
    var roomname = scr_gettext(("roomname_" + substr(roomid, 6)))
    if (roomname != "")
        return roomname;
}
return " ";
