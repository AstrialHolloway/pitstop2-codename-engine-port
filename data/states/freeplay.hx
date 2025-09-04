// Script by AstroDev, if modifying please have a basic understanding of haxe!

import funkin.savedata.FunkinSave;

package funkin.savedata;

package funkin.options;

import data.GlobalVars;

trace(char);

static var currentCharacter:String = char;

var remix = false;

var addonthing = "";

var debugthingy = true;

var erectMode = false;

var index = 1;

var indexErect = 1;

var diff = 1;

var songStarted = false;

var basicRand = 1;

var erectRand = 1;

var devmode = true;

var uiOffset = -14;

var iconSprite:FunkinSprite;

// -------------------------
// songs
// -------------------------

var songList:Array<String> =
[
    "random",
    "tutorial", 
    "bopeebo", 
    "fresh", 
    "dadbattle", 
    "spookeez", 
    "south", 
    "monster", 
    "pico",
    "philly nice",
    "blammed",
    "satin panties",
    "high",
    "milf",
    "cocoa",
    "eggnog",
    "winter horrorland",
    "senpai",
    "roses",
    "thorns",
    "ugh",
    "guns",
    "stress",
    "darnell",
    "lit-up"//,
    //add extra songs below (put a comma after each one exept the last)
];

var songErectList:Array<String> =
[
    "random",
    "bopeebo", 
    "fresh", 
    "dadbattle", 
    "spookeez", 
    "south",  
    "pico",
    "philly nice",
    "blammed",
    "satin panties",
    "high",
    "cocoa",
    "eggnog",
    "senpai",
    "roses",
    "thorns",
    "ugh"
];

// -------------------------
// song OSTs
// -------------------------

var songOSTList:Array<String> =
[
    "random",
    "volume1", 
    "volume1", 
    "volume1", 
    "volume1", 
    "volume1", 
    "volume1", 
    "volume1", 
    "volume1",
    "volume1",
    "volume1",
    "volume1",
    "volume1",
    "volume1",
    "volume1",
    "volume1",
    "volume1",
    "volume2-alt",
    "volume2-alt",
    "volume2-alt",
    "volume2",
    "volume2",
    "volume2",
    "volume4",
    "expansion2"//,
    //add extra volumes below (put a comma after each one exept the last)
];

var songErectOSTList:Array<String> =
[
    "random",
    "volume3", 
    "volume3", 
    "volume3", 
    "volume3", 
    "volume3",  
    "volume3",
    "volume3",
    "volume3",
    "expansion1",
    "volume3",
    "volume4",
    "expansion1",
    "volume3",
    "volume3",
    "volume3",
    "volume4"
];

// -------------------------
// song diffs
// -------------------------

var songDiffEasyList:Array<String> =
[
    "00",
    "01", 
    "02", 
    "02", 
    "03", 
    "02", 
    "02", 
    "02", 
    "02",
    "03",
    "03",
    "02",
    "03",
    "04",
    "02",
    "03",
    "02",
    "03",
    "04",
    "04",
    "04",
    "05",
    "05",
    "05",
    "06"//,
    //add extra norm diff numbers below (put a comma after each one exept the last)
];

var songDiffNormList:Array<String> =
[
    "00",
    "00", 
    "01", 
    "01", 
    "02", 
    "01", 
    "02", 
    "02", 
    "02",
    "02",
    "02",
    "02",
    "02",
    "03",
    "02",
    "02",
    "02",
    "02",
    "03",
    "03",
    "03",
    "04",
    "04",
    "04",
    "05"//,
    //add extra norm diff numbers below (put a comma after each one exept the last)
];

var songDiffHardList:Array<String> =
[
    "00",
    "00", 
    "01", 
    "01", 
    "02", 
    "01", 
    "02", 
    "02", 
    "02",
    "02",
    "02",
    "02",
    "02",
    "03",
    "02",
    "02",
    "02",
    "02",
    "03",
    "03",
    "03",
    "04",
    "04",
    "04",
    "05"//,
    //add extra norm diff numbers below (put a comma after each one exept the last)
];

var songDiffErectList:Array<String> =
[
    "00",
    "07", 
    "06", 
    "09", 
    "11", 
    "08",  
    "09",
    "08",
    "11",
    "11",
    "08",
    "07",
    "06",
    "06",
    "08",
    "09",
    "08"
];

var songDiffNightList:Array<String> =
[
    "00",
    "08", 
    "07", 
    "10", 
    "12", 
    "09",  
    "10",
    "09",
    "12",
    "12",
    "09",
    "08",
    "07",
    "07",
    "09",
    "10",
    "09"
];

// -------------------------
// display lists
// -------------------------

var displayList:Array<String> =
[
    "Random",
    "Tutorial", 
    "Bopeebo", 
    "Fresh", 
    "DadBattle", 
    "Spookeez", 
    "South",
    "Monster",
    "Pico",
    "Philly Nice",
    "Blammed",
    "Satin Panties",
    "High",
    "M.I.L.F.",
    "  Cocoa",
    "  Eggnog",
    "Winter Horrorland",
    "Senpai",
    "Roses",
    "Thorns",
    "Ugh",
    "Guns",
    "Stress",
    "Darnell (BF MIX)",
    "Lit-Up (BF MIX)"//,
    //add extra song display names below (put a comma after each one exept the last)
];

var displayErectList:Array<String> =
[
    "Random", 
    "Bopeebo Erect", 
    "Fresh Erect", 
    "DadBattle Erect", 
    "Spookeez Erect", 
    "South Erect",
    "Pico Erect",
    "Philly Nice Erect",
    "Blammed Erect",
    "Satin Panties Erect",
    "High Erect",
    "  Cocoa Erect",
    "  Eggnog Erect",
    "Senpai Erect",
    "Roses Erect",
    "Thorns Erect",
    "Ugh Erect"
];

// -------------------------
// week lists
// -------------------------

var weekList:Array<String> = 
[
    "",
    "0", 
    "1", 
    "1", 
    "1", 
    "2", 
    "2", 
    "2",
    "3",
    "3",
    "3",
    "4",
    "4",
    "4",
    "5",
    "5",
    "5",
    "6",
    "6",
    "6",
    "7",
    "7",
    "7",
    "w1",
    "w1"//,
    //add extra week numbers below (put a comma after each one exept the last)
];

// -------------------------
// bpm lists
// -------------------------

var bpmList:Array<String> = 
[
    145,
    100,
    100,
    120,
    180,
    150,
    165,
    95,
    150,
    175,
    165,
    110,
    125,
    180,
    100,
    150,
    159,
    144,
    120,
    190,
    160,
    185,
    178,
    155,
    175//,
    //add extra song bpms below (put a comma after each one exept the last)
];

var bpmErectList:Array<String> = 
[
    145,
    123,
    125,
    190,
    166,
    177,
    162,
    170,
    135,
    125,
    175,
    174,
    140,
    158,
    128,
    190,
    170//,
    //add extra erect song bpms below (put a comma after each one exept the last)
];

// -------------------------
// icons
// -------------------------

var icons:Array<String> = 
[
    "menus/freeplay/icons/randompixel",
    "menus/freeplay/icons/gfpixel", 
    "menus/freeplay/icons/dadpixel", 
    "menus/freeplay/icons/dadpixel", 
    "menus/freeplay/icons/dadpixel", 
    "menus/freeplay/icons/spookypixel",
    "menus/freeplay/icons/spookypixel",
    "menus/freeplay/icons/monsterpixel",
    "menus/freeplay/icons/picopixel",
    "menus/freeplay/icons/picopixel",
    "menus/freeplay/icons/picopixel",
    "menus/freeplay/icons/mompixel",
    "menus/freeplay/icons/mompixel",
    "menus/freeplay/icons/mompixel",
    "menus/freeplay/icons/parentspixel",
    "menus/freeplay/icons/parentspixel",
    "menus/freeplay/icons/monsterpixel",
    "menus/freeplay/icons/senpai-pixelpixel",
    "menus/freeplay/icons/senpai-pixelpixel",
    "menus/freeplay/icons/spirit-pixelpixel",
    "menus/freeplay/icons/tankmanpixel",
    "menus/freeplay/icons/tankmanpixel",
    "menus/freeplay/icons/tankmanpixel",
    "menus/freeplay/icons/darnellpixel",
    "menus/freeplay/icons/darnellpixel"//,
    //add extra icons below (put a comma after each one exept the last)
];

var iconsErect:Array<String> = 
[    
    "menus/freeplay/icons/randompixel",
    "menus/freeplay/icons/dadpixel", 
    "menus/freeplay/icons/dadpixel", 
    "menus/freeplay/icons/dadpixel", 
    "menus/freeplay/icons/spookypixel",
    "menus/freeplay/icons/spookypixel",
    "menus/freeplay/icons/picopixel",
    "menus/freeplay/icons/picopixel",
    "menus/freeplay/icons/picopixel",
    "menus/freeplay/icons/mompixel",
    "menus/freeplay/icons/mompixel",
    "menus/freeplay/icons/parentspixel",
    "menus/freeplay/icons/parentspixel",
    "menus/freeplay/icons/senpai-pixelpixel",
    "menus/freeplay/icons/senpai-pixelpixel",
    "menus/freeplay/icons/spirit-pixelpixel",
    "menus/freeplay/icons/tankmanpixel"//,
    //add extra erect icons below (put a comma after each one exept the last)
];

// -------------------------
// temp songs
// -------------------------

var songTemp:Array<String> =
[
    "girlfriendsRingtone.ogg"
];

// -------------------------
// bg colors
// -------------------------

var songColors:Array<String> = 
[
    0xffd763,    
];

// -------------------------
// diff list
// -------------------------

var diffList:Array<String> = 
[
    "easy",
    "normal", 
    "hard", 
    "erect",
    "nightmare"
];

// -------------------------
// categories
// -------------------------

var categories:Array<String> =
[
    "ALL",
    "AB", 
    "CD", 
    "EH", 
    "IL", 
    "MN", 
    "OR", 
    "S", 
    "T",
    "UZ",
    "NUM",
    "FAV"//,
    //add extra categories below (put a comma after each one exept the last)
];

// -------------------------
// assets
// -------------------------

// -------------------------
// Background
// -------------------------

var dadSprite:FunkinSprite = new FunkinSprite(550, 115 + uiOffset);
dadSprite.loadGraphic(Paths.image("menus/freeplay/freeplayBGdad"));
dadSprite.scale.set(1.4, 1.4);
add(dadSprite);

var cardGlowSprite:FunkinSprite = new FunkinSprite(-10, -25 + uiOffset);
cardGlowSprite.loadGraphic(Paths.image("menus/freeplay/pinkBack"));
cardGlowSprite.color = 0xffd763; // red overlay (ARGB)
add(cardGlowSprite);

// -------------------------
// Albums
// -------------------------

var albumCover:FunkinSprite = new FunkinSprite(950, 282 + uiOffset);
albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songOSTList[index]));
albumCover.scale.set(1,1);
albumCover.angle = 10.2;
add(albumCover);

var albumText:FunkinSprite = new FunkinSprite(925, 500 + uiOffset);
albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songOSTList[index]+"-text");
albumText.animation.addByPrefix("idle", "idle", 24, true);
albumText.animation.addByPrefix("switch", "switch", 24, false);
albumText.animation.play("idle");
albumText.scale.set(1,1);
add(albumText);

// -------------------------
// Freeplay UI
// -------------------------

// -------------------------
// Freeplay Diffs
// -------------------------

var arrowLeftDiff:FunkinSprite = new FunkinSprite(20,70 + uiOffset);
arrowLeftDiff.frames = Paths.getSparrowAtlas("menus/freeplay/freeplaySelector/freeplaySelector");
arrowLeftDiff.animation.addByPrefix("Loop", "arrow pointer loop", 24, true);
arrowLeftDiff.animation.play("Loop");
add(arrowLeftDiff);

var arrowRightDiff:FunkinSprite = new FunkinSprite(325,70 + uiOffset);
arrowRightDiff.frames = Paths.getSparrowAtlas("menus/freeplay/freeplaySelector/freeplaySelector");
arrowRightDiff.animation.addByPrefix("Loop", "arrow pointer loop", 24, true);
arrowRightDiff.animation.play("Loop");
arrowRightDiff.origin.set(arrowRightDiff.width / 2, arrowRightDiff.height / 2);
arrowRightDiff.scale.x = -1;
add(arrowRightDiff);

var diffSprite:FunkinSprite = new FunkinSprite(90, 80 + uiOffset);
diffSprite.loadGraphic(Paths.image("menus/freeplay/freeplayDifficulties/freeplaynormal"));
add(diffSprite);

var diffNightSprite:FunkinSprite = new FunkinSprite(90, 80 + uiOffset);
diffNightSprite.frames = Paths.getSparrowAtlas("menus/freeplay/freeplayDifficulties/freeplaynightmare");
diffNightSprite.animation.addByPrefix("Loop", "idle", 24, true);
diffNightSprite.animation.play("Loop");
diffNightSprite.visible = false;
add(diffNightSprite);

var easySelector:FunkinSprite = new FunkinSprite(125, 170 + uiOffset);
easySelector.loadGraphic(Paths.image("menus/freeplay/seperator"));
easySelector.color = 0x575757;
add(easySelector);

var normSelector:FunkinSprite = new FunkinSprite(155, 170 + uiOffset);
normSelector.loadGraphic(Paths.image("menus/freeplay/seperator"));
normSelector.color = 0xffffff;
add(normSelector);

var hardSelector:FunkinSprite = new FunkinSprite(185, 170 + uiOffset);
hardSelector.loadGraphic(Paths.image("menus/freeplay/seperator"));
hardSelector.color = 0x575757;
add(hardSelector);

var erectSelector:FunkinSprite = new FunkinSprite(215, 170 + uiOffset);
erectSelector.loadGraphic(Paths.image("menus/freeplay/seperator"));
erectSelector.color = 0x34296a;
erectSelector.alpha = 0.3;
add(erectSelector);

var nightSelector:FunkinSprite = new FunkinSprite(245, 170 + uiOffset);
nightSelector.loadGraphic(Paths.image("menus/freeplay/seperator"));
nightSelector.color = 0x34296a;
nightSelector.alpha = 0.3;
add(nightSelector);

// -------------------------
// Freeplay Char
// -------------------------

// anything between this comment and the next is from V-Slice-in-Codename-Engine on github so credits to them! (https://github.com/NebulaStellaNova/V-Slice-in-Codename-Engine/tree/main)
var menuData;



menuData = CoolUtil.parseJson("data/config/freeplayCharacters/"+currentCharacter+".json");

dj = new FunkinSprite(menuData.dj.position[0]-15, menuData.dj.position[1]+10);
dj.loadSprite(Paths.image("menus/freeplay/djs/" + menuData.dj.assetPath));
dj.animation.addByPrefix('intro', menuData.dj.animations.intro.prefix, menuData.dj.animations.intro.frameRate ?? 24, false);
dj.animation.addByPrefix('idle', menuData.dj.animations.idle.prefix, menuData.dj.animations.idle.frameRate ?? 24, true);
dj.animation.addByPrefix('exit', menuData.dj.animations.exit.prefix, menuData.dj.animations.exit.frameRate ?? 24, false);
dj.animation.addByPrefix('confirm', menuData.dj.animations.confirm.prefix, menuData.dj.animations.confirm.frameRate ?? 24, false);
dj.addOffset('idle', -menuData.dj.animations.idle.offsets[0], -menuData.dj.animations.idle.offsets[1]);
dj.addOffset('exit', -menuData.dj.animations.exit.offsets[0], -menuData.dj.animations.exit.offsets[1]);
dj.addOffset('intro', -menuData.dj.animations.intro.offsets[0], -menuData.dj.animations.intro.offsets[1]);
dj.addOffset('confirm', -menuData.dj.animations.confirm.offsets[0], -menuData.dj.animations.confirm.offsets[1]);
dj.antialiasing = true;
dj.updateHitbox();
dj.playAnim('intro', true);
add(dj);
// end

// -------------------------
// Freeplay Capsules
// -------------------------

// Capsules

var freeplayCapsulePrior:FunkinSprite = new FunkinSprite(275, 120 + uiOffset);
freeplayCapsulePrior.frames = Paths.getSparrowAtlas("menus/freeplay/freeplayCapsule/capsule/freeplayCapsule");
freeplayCapsulePrior.animation.addByPrefix("Basic", "basic", 24, true);
freeplayCapsulePrior.animation.addByPrefix("Selected", "sel", 24, true);
freeplayCapsulePrior.animation.play("Basic");
freeplayCapsulePrior.scale.set(0.8, 0.8);
add(freeplayCapsulePrior);

var freeplayCapsuleNext:FunkinSprite = new FunkinSprite(330, 352 + uiOffset);
freeplayCapsuleNext.frames = Paths.getSparrowAtlas("menus/freeplay/freeplayCapsule/capsule/freeplayCapsule");
freeplayCapsuleNext.animation.addByPrefix("Basic", "basic", 24, true);
freeplayCapsuleNext.animation.addByPrefix("Selected", "sel", 24, true);
freeplayCapsuleNext.animation.play("Basic");
freeplayCapsuleNext.scale.set(0.8, 0.8);
add(freeplayCapsuleNext);

var freeplayCapsuleNext1:FunkinSprite = new FunkinSprite(283.5, 467 + uiOffset);
freeplayCapsuleNext1.frames = Paths.getSparrowAtlas("menus/freeplay/freeplayCapsule/capsule/freeplayCapsule");
freeplayCapsuleNext1.animation.addByPrefix("Basic", "basic", 24, true);
freeplayCapsuleNext1.animation.addByPrefix("Selected", "sel", 24, true);
freeplayCapsuleNext1.animation.play("Basic");
freeplayCapsuleNext1.scale.set(0.8, 0.8);
add(freeplayCapsuleNext1);

var freeplayCapsuleNext2:FunkinSprite = new FunkinSprite(230, 582 + uiOffset);
freeplayCapsuleNext2.frames = Paths.getSparrowAtlas("menus/freeplay/freeplayCapsule/capsule/freeplayCapsule");
freeplayCapsuleNext2.animation.addByPrefix("Basic", "basic", 24, true);
freeplayCapsuleNext2.animation.addByPrefix("Selected", "sel", 24, true);
freeplayCapsuleNext2.animation.play("Basic");
freeplayCapsuleNext2.scale.set(0.8, 0.8);
add(freeplayCapsuleNext2);

var freeplayCapsule:FunkinSprite = new FunkinSprite(320, 236 + uiOffset);
freeplayCapsule.frames = Paths.getSparrowAtlas("menus/freeplay/freeplayCapsule/capsule/freeplayCapsule");
freeplayCapsule.animation.addByPrefix("Basic", "basic", 24, true);
freeplayCapsule.animation.addByPrefix("Selected", "sel", 24, true);
freeplayCapsule.animation.play("Selected");
freeplayCapsule.scale.set(0.8, 0.8);
add(freeplayCapsule);

// Text

var PriorSongLabel = new FlxText(429, 165 + uiOffset, 1000, displayList[index-1], 10);
PriorSongLabel.setFormat("fonts/5by7.ttf", 32, FlxColor.GRAY, "left");
add(PriorSongLabel);

var nextSongLabel = new FlxText(483.5, 396.5 + uiOffset, 1000, displayList[index+1], 10);
nextSongLabel.setFormat("fonts/5by7.ttf", 32, FlxColor.GRAY, "left");
add(nextSongLabel);

var nextSongLabel1 = new FlxText(437.5, 512 + uiOffset, 1000, displayList[index+2], 10);
nextSongLabel1.setFormat("fonts/5by7.ttf", 32, FlxColor.GRAY, "left");
add(nextSongLabel1);

var nextSongLabel2 = new FlxText(383.6, 627.6 + uiOffset, 1000, displayList[index+3], 10);
nextSongLabel2.setFormat("fonts/5by7.ttf", 32, FlxColor.GRAY, "left");
add(nextSongLabel2);

var curSongLabel = new FlxText(479.5, 281 + uiOffset , 1000, displayList[index], 10);
curSongLabel.setFormat("fonts/5by7.ttf", 32, FlxColor.WHITE, "left");
add(curSongLabel);

// Icons

var curIcon:FunkinSprite = new FunkinSprite(405, 271 + uiOffset);
curIcon.frames = Paths.getSparrowAtlas(icons[index] ?? icons[0]);
curIcon.animation.addByPrefix("Idle", "idle", 24, true);
curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
curIcon.animation.addByPrefix("Hold", "hold", 24, true);
curIcon.animation.play("Idle");
curIcon.scale.set(2, 2);
curIcon.antialiasing = false;
add(curIcon);

var IconPrior:FunkinSprite = new FunkinSprite(354.5, 155 + uiOffset);
IconPrior.frames = Paths.getSparrowAtlas(icons[index-1] ?? icons[0]);
IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
IconPrior.animation.addByPrefix("Hold", "hold", 24, true);
IconPrior.animation.play("Idle");
IconPrior.scale.set(2, 2);
IconPrior.antialiasing = false;
add(IconPrior);

var IconNext:FunkinSprite = new FunkinSprite(409.5, 386.5 + uiOffset);
IconNext.frames = Paths.getSparrowAtlas(icons[index+1] ?? icons[0]);
IconNext.animation.addByPrefix("Idle", "idle", 24, true);
IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
IconNext.animation.addByPrefix("Hold", "hold", 24, true);
IconNext.animation.play("Idle");
IconNext.scale.set(2, 2);
IconNext.antialiasing = false;
add(IconNext);

var IconNext1:FunkinSprite = new FunkinSprite(363, 502 + uiOffset);
IconNext1.frames = Paths.getSparrowAtlas(icons[index+2] ?? icons[0]);
IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
IconNext1.animation.addByPrefix("Hold", "hold", 24, true);
IconNext1.animation.play("Idle");
IconNext1.scale.set(2, 2);
IconNext1.antialiasing = false;
add(IconNext1);

var IconNext2:FunkinSprite = new FunkinSprite(310, 617 + uiOffset);
IconNext2.frames = Paths.getSparrowAtlas(icons[index+3] ?? icons[0]);
IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
IconNext2.animation.addByPrefix("Hold", "hold", 24, true);
IconNext2.animation.play("Idle");
IconNext2.scale.set(2, 2);
IconNext2.antialiasing = false;
add(IconNext2);

// song diff

var diffPrior:FunkinSprite = new FunkinSprite(685, 208 + uiOffset);
diffPrior.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/difficultytext"));
diffPrior.scale.set(0.9,0.9);
add(diffPrior);

var diffCur:FunkinSprite = new FunkinSprite(735, 325 + uiOffset);
diffCur.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/difficultytext"));
diffCur.scale.set(0.9,0.9);
add(diffCur);

var diffNext:FunkinSprite = new FunkinSprite(740, 440 + uiOffset);
diffNext.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/difficultytext"));
diffNext.scale.set(0.9,0.9);
add(diffNext);

var diffNext1:FunkinSprite = new FunkinSprite(690, 555 + uiOffset);
diffNext1.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/difficultytext"));
diffNext1.scale.set(0.9,0.9);
add(diffNext1);

var diffNext2:FunkinSprite = new FunkinSprite(640, 670 + uiOffset);
diffNext2.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/difficultytext"));
diffNext2.scale.set(0.9,0.9);
add(diffNext2);

// song bpm

var bpmPrior:FunkinSprite = new FunkinSprite(410, 208 + uiOffset);
bpmPrior.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/bpmtext"));
bpmPrior.scale.set(0.9,0.9);
add(bpmPrior);

var bpmCur:FunkinSprite = new FunkinSprite(460, 325 + uiOffset);
bpmCur.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/bpmtext"));
bpmCur.scale.set(0.9,0.9);
add(bpmCur);

var bpmNext:FunkinSprite = new FunkinSprite(465, 440 + uiOffset);
bpmNext.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/bpmtext"));
bpmNext.scale.set(0.9,0.9);
add(bpmNext);

var bpmNext1:FunkinSprite = new FunkinSprite(420, 555 + uiOffset);
bpmNext1.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/bpmtext"));
bpmNext1.scale.set(0.9,0.9);
add(bpmNext1);

var bpmNext2:FunkinSprite = new FunkinSprite(365, 670 + uiOffset);
bpmNext2.loadGraphic(Paths.image("menus/freeplay/freeplayCapsule/bpmtext"));
bpmNext2.scale.set(0.9,0.9);
add(bpmNext2);

// -------------------------
// categories
// -------------------------



// -------------------------
// Top
// -------------------------

var blackSprite:FunkinSprite = new FunkinSprite(0, 0);
blackSprite.loadGraphic(Paths.image("menus/freeplay/black"));
blackSprite.scale.set(FlxG.width*2, 100);
add(blackSprite);

var characterSelectLabel = new FlxText(300, 5 , 1000, "Press [ TAB ] to change characters", 10);
characterSelectLabel.setFormat("fonts/5by7.ttf", 32, FlxColor.GRAY, "left");
add(characterSelectLabel);

var freeplayTextSprite:FunkinSprite = new FunkinSprite(-142, -19);
freeplayTextSprite.loadGraphic(Paths.image("menus/freeplay/freeplayText"));
freeplayTextSprite.scale.set(0.415,0.415);
add(freeplayTextSprite);

var officalostTextSprite:FunkinSprite = new FunkinSprite(703, -19);
officalostTextSprite.loadGraphic(Paths.image("menus/freeplay/officalostText"));
officalostTextSprite.scale.set(0.415,0.415);
add(officalostTextSprite);

// -------------------------
// clearBox
// -------------------------

var clearBoxSprite:FunkinSprite = new FunkinSprite(1165, 65 + uiOffset);
clearBoxSprite.loadGraphic(Paths.image("menus/freeplay/clearBox"));
clearBoxSprite.scale.set(1, 1);
add(clearBoxSprite);

// -------------------------
// highscore
// -------------------------

var highscoreSprite:FunkinSprite = new FunkinSprite(860, 70 + uiOffset);
highscoreSprite.frames = Paths.getSparrowAtlas("menus/freeplay/highscore");
highscoreSprite.animation.addByPrefix("Idle", "highscore small instance 1", 24, false);
highscoreSprite.animation.play("Idle");
highscoreSprite.scale.set(1, 1);
add(highscoreSprite);

// -------------------------
// score display
// -------------------------

// 1000000s

var scoreMilSprite:FunkinSprite = new FunkinSprite(885, 60 + uiOffset);
scoreMilSprite.frames = Paths.getSparrowAtlas("menus/freeplay/digital_numbers");
scoreMilSprite.animation.addByPrefix("Idle", "ZERO DIGITAL", 24, false);
scoreMilSprite.animation.play("Idle");
scoreMilSprite.scale.set(0.40, 0.4);
add(scoreMilSprite);

// 1000s

var scoreHundThouSprite:FunkinSprite = new FunkinSprite(930, 60 + uiOffset);
scoreHundThouSprite.frames = Paths.getSparrowAtlas("menus/freeplay/digital_numbers");
scoreHundThouSprite.animation.addByPrefix("Idle", "ZERO DIGITAL", 24, false);
scoreHundThouSprite.animation.play("Idle");
scoreHundThouSprite.scale.set(0.40, 0.4);
add(scoreHundThouSprite);

var scoreTenThouSprite:FunkinSprite = new FunkinSprite(975, 60 + uiOffset);
scoreTenThouSprite.frames = Paths.getSparrowAtlas("menus/freeplay/digital_numbers");
scoreTenThouSprite.animation.addByPrefix("Idle", "ZERO DIGITAL", 24, false);
scoreTenThouSprite.animation.play("Idle");
scoreTenThouSprite.scale.set(0.40, 0.4);
add(scoreTenThouSprite);

var scoreOneThouSprite:FunkinSprite = new FunkinSprite(1020, 60 + uiOffset);
scoreOneThouSprite.frames = Paths.getSparrowAtlas("menus/freeplay/digital_numbers");
scoreOneThouSprite.animation.addByPrefix("Idle", "ZERO DIGITAL", 24, false);
scoreOneThouSprite.animation.play("Idle");
scoreOneThouSprite.scale.set(0.40, 0.4);
add(scoreOneThouSprite);

// 100s

var scoreHundSprite:FunkinSprite = new FunkinSprite(1065, 60 + uiOffset);
scoreHundSprite.frames = Paths.getSparrowAtlas("menus/freeplay/digital_numbers");
scoreHundSprite.animation.addByPrefix("Idle", "ZERO DIGITAL", 24, false);
scoreHundSprite.animation.play("Idle");
scoreHundSprite.scale.set(0.40, 0.4);
add(scoreHundSprite);

var scoreTenSprite:FunkinSprite = new FunkinSprite(1110, 60 + uiOffset);
scoreTenSprite.frames = Paths.getSparrowAtlas("menus/freeplay/digital_numbers");
scoreTenSprite.animation.addByPrefix("Idle", "ZERO DIGITAL", 24, false);
scoreTenSprite.animation.play("Idle");
scoreTenSprite.scale.set(0.40, 0.4);
add(scoreTenSprite);

var scoreOneSprite:FunkinSprite = new FunkinSprite(1155, 60 + uiOffset);
scoreOneSprite.frames = Paths.getSparrowAtlas("menus/freeplay/digital_numbers");
scoreOneSprite.animation.addByPrefix("Idle", "ZERO DIGITAL", 24, false);
scoreOneSprite.animation.play("Idle");
scoreOneSprite.scale.set(0.40, 0.4);
add(scoreOneSprite);

// -------------------------
// Debug stuff
// -------------------------

debugoffset = 10 + uiOffset;

var debugDataDebLabel = new FlxText(0, 150+debugoffset, 1000, "Debug Data:", 10);
debugDataDebLabel.setFormat("fonts/5by7.ttf", 32, FlxColor.BLACK, "left");
add(debugDataDebLabel);

var erectModeActiveDebLabel = new FlxText(0, 180+debugoffset, 1000, "EM: " + erectMode, 10);
erectModeActiveDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(erectModeActiveDebLabel);

var curNumDebLabel = new FlxText(0, 205+debugoffset, 1000, "CN: " + index, 10);
curNumDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(curNumDebLabel);

var curSongDebLabel = new FlxText(0, 230+debugoffset, 1000, "CS: " + displayList[index], 10);
curSongDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(curSongDebLabel);

var curRandNumDebLabel = new FlxText(0, 255+debugoffset, 1000, "CRN: " + basicRand, 10);
curRandNumDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(curRandNumDebLabel);

var curRandSongDebLabel = new FlxText(0, 280+debugoffset, 1000, "CRS: " + displayList[basicRand], 10);
curRandSongDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(curRandSongDebLabel);

var curDiffDebLabel = new FlxText(0, 305+debugoffset, 1000, "CD: " + diffList[diff], 10);
curDiffDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(curDiffDebLabel);

var curCharDebLabel = new FlxText(0, 330+debugoffset, 1000, "CC: " + currentCharacter, 10);
curCharDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(curCharDebLabel);

var curAnimDebLabel = new FlxText(0, 355+debugoffset, 1000, "CA: " + dj.animation.name, 10);
curAnimDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(curAnimDebLabel);

var curFrameDebLabel = new FlxText(0, 380+debugoffset, 1000, "CF: " + dj.animation.curAnim.curFrame, 10);
curFrameDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(curFrameDebLabel);

var RemixModeDebLabel = new FlxText(0, 405+debugoffset, 1000, "RM: " + remix, 10);
RemixModeDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(RemixModeDebLabel);

var songExtDebLabel = new FlxText(0, 430+debugoffset, 1000, "SE: " + addonthing, 10);
songExtDebLabel.setFormat("fonts/5by7.ttf", 25, FlxColor.BLACK, "left");
add(songExtDebLabel);

// -------------------------
// Other Stuff
// -------------------------

new FlxTimer().start(20, function(tmr:FlxTimer)
{
    highscoreSprite.animation.play("Idle");
}, 0);

function create()
{

    CoolUtil.playMusic("songs/"+songList[index]+"/song/Inst"+addonthing+".ogg");
    trace("Freeplay Loaded");   
}



function update()
{
    if (index == 1 || index == 7 || index == 13 || index == 16 || index == 21  || index == 22 || index == 23 || index == 24)
    {
        erectSelector.alpha = 0.3;
        nightSelector.alpha = 0.3;
    }
    else
    {
        erectSelector.alpha = 1;
        nightSelector.alpha = 1;
    }
    if (erectMode == true)
    {
        erectSelector.alpha = 1;
        nightSelector.alpha = 1; 
    }

    if (index == 24 || index == 23 || basicRand == 24 || basicRand == 23)
    {
        remix = "bf";
        addonthing = "-bf";
        
    }
    else
    {
        remix = false;
        addonthing = "";
    }
    if (erectMode == true)
    {
        remix = false;
        addonthing = "-erect";
    }
    if (index != 0)
    {
        basicRand = 1;
    }
    
    
    if (dj.animation.name == "intro" && dj.animation.curAnim.curFrame == 16) {
		dj.playAnim('idle', true);
	}


    if (dj.animation.name == "exit" && dj.animation.curAnim.curFrame == 25) {
        FlxG.switchState(new ModState('charSelect'));
    }

    
    
    
    if (index == 0)
    {
        
        if (songStarted == false)
        {
            if (erectMode == false)
            {
                basicRand = FlxG.random.int(1, songList.length - 1);
            }
            if (erectMode == true)
            {
                erectRand = FlxG.random.int(1, songErectList.length - 1);
            }
        }   
        
    }
    if (indexErect == 0)
    {
        if (songStarted == false)
        {
            if (erectMode == true)
            {
                erectRand = FlxG.random.int(1, 16);
            }
        }   
        
    }
    

    // Debug stuff

    curAnimDebLabel.text = "CA: " + dj.animation.name;

    curFrameDebLabel.text = "CF: " + dj.animation.curAnim.curFrame;

    RemixModeDebLabel.text = "RM: " + remix;

    songExtDebLabel.text = "SE: " + addonthing;
    

    if (erectMode == false)
    {
        erectModeActiveDebLabel.text = "EM: " + erectMode;

        curNumDebLabel.text = "CN: " + index;

        curSongDebLabel.text = "CS: " + displayList[index];

        curRandNumDebLabel.text = "CRN: " + basicRand;

        curRandSongDebLabel.text = "CRS: " + displayList[basicRand];

        curDiffDebLabel.text = "CD: " + diffList[diff];

        
    }

    if (erectMode == true)
    {
        erectModeActiveDebLabel.text = "EM: " + erectMode;

        curNumDebLabel.text = "CNE: " + indexErect;

        curSongDebLabel.text = "CSE: " + displayErectList[indexErect];

        curRandNumDebLabel.text = "CRNE: " + erectRand;

        curRandSongDebLabel.text = "CRSE: " + displayErectList[erectRand];

        curDiffDebLabel.text = "CD: " + diffList[diff];

       
    }

    if (devmode == true)
    {
        debugDataDebLabel.visible = true;

        erectModeActiveDebLabel.visible = true;

        curNumDebLabel.visible = true;

        curSongDebLabel.visible = true;

        curRandNumDebLabel.visible = true;

        curRandSongDebLabel.visible = true;

        curDiffDebLabel.visible = true;

        curCharDebLabel.visible = true;

        curAnimDebLabel.visible = true;

        curFrameDebLabel.visible = true;

        RemixModeDebLabel.visible = true;

        songExtDebLabel.visible = true;
    }
    else
    {
        debugDataDebLabel.visible = false;

        erectModeActiveDebLabel.visible = false;

        curNumDebLabel.visible = false;

        curSongDebLabel.visible = false;

        curRandNumDebLabel.visible = false;

        curRandSongDebLabel.visible = false;

        curDiffDebLabel.visible = false;

        curCharDebLabel.visible = false;

        curAnimDebLabel.visible = false;

        curFrameDebLabel.visible = false;

        RemixModeDebLabel.visible = false;

        songExtDebLabel.visible = false;
    }
    

    handleInputs();
}

// -------------------------
// Song thing for erect stuff
// -------------------------

function diffChange(direction)
{
    // left
    if (direction == "left")
    {
        if (diff < 0)
        {   
            
            // Random
            if (index==0)
            {
                indexErect=0;
            }
            // Tutorial
            if (index==1)
            {
                indexErect=1;
            }
            // bopeebo
            if (index==2)
            {
                indexErect=1;
            }
            // fresh
            if (index==3)
            {
                indexErect=2;
            }
            // dadbattle
            if (index==4)
            {
                indexErect=3;
            }
            // spookeez
            if (index==5)
            {
                indexErect=4;
            }
            // south
            if (index==6)
            {
                indexErect=5;
            }
            // monster
            if (index==7)
            {
                indexErect=5;
            }
            // pico
            if (index==8)
            {
                indexErect=6;
            }
            // philly nice
            if (index==9)
            {
                indexErect=7;
            }
            // blammed
            if (index==10)
            {
                indexErect=8;
            }
            // satin panties
            if (index==11)
            {
                indexErect=9;
            }
            // high
            if (index==12)
            {
                indexErect=10;
            }
            // milf
            if (index==13)
            {
                indexErect=10;
            }
            // cocoa
            if (index==14)
            {
                indexErect=11;
            }
            // eggnog
            if (index==15)
            {
                indexErect=12;
            }
            // winter horrorland
            if (index==16)
            {
                indexErect=12;
            }
            // senpai
            if (index==17)
            {
                indexErect=13;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;

                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;

                freeplayCapsuleNext2.visible = true;
                nextSongLabel2.visible = true;
                IconNext2.visible = true;
            }
            // roses
            if (index==18)
            {
                indexErect=14;

                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;
                bpmNext.visible = true;

                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;
                bpmNext1.visible = true;

                freeplayCapsuleNext2.visible = false;
                nextSongLabel2.visible = false;
                IconNext2.visible = false;
                diffNext2.visible = false;
                bpmNext2.visible = false;
            }
            // thorns
            if (index==19)
            {
                indexErect=15;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;
                bpmNext.visible = true;

                freeplayCapsuleNext1.visible = false;
                nextSongLabel1.visible = false;
                IconNext1.visible = false;
                diffNext1.visible = false;
                bpmNext1.visible = false;

                freeplayCapsuleNext2.visible = false;
                nextSongLabel2.visible = false;
                IconNext2.visible = false;
                diffNext2.visible = false;
                bpmNext2.visible = false;
                
                
            }
            // ugh
            if (index==20)
            {
                indexErect=16;
                freeplayCapsuleNext.visible = false;
                nextSongLabel.visible = false;
                IconNext.visible = false;
                diffNext.visible = false;
                bpmNext.visible = false;
                freeplayCapsuleNext1.visible = false;
                nextSongLabel1.visible = false;
                IconNext1.visible = false;
                diffNext1.visible = false;
                bpmNext1.visible = false;
                freeplayCapsuleNext2.visible = false;
                nextSongLabel2.visible = false;
                IconNext2.visible = false;
                diffNext2.visible = false;
                bpmNext2.visible = false;
            }
            // else
            if (index > 20)
            {
                indexErect=16;
                freeplayCapsuleNext.visible = false;
                nextSongLabel.visible = false;
                IconNext.visible = false;
                diffNext.visible = false;
                bpmNext.visible = false;
                freeplayCapsuleNext1.visible = false;
                nextSongLabel1.visible = false;
                IconNext1.visible = false;
                diffNext1.visible = false;
                bpmNext1.visible = false;
                freeplayCapsuleNext2.visible = false;
                nextSongLabel2.visible = false;
                IconNext2.visible = false;
                diffNext2.visible = false;
                bpmNext2.visible = false;
            }
            if (index==0)
            {
                CoolUtil.playMusic("music/freeplayRandom/freeplayRandom.ogg",false,1,true,bpmList[indexErect]);
            }
            else
            {
                addonthing = "-erect";
                CoolUtil.playMusic("songs/"+songErectList[indexErect]+"/song/Inst"+addonthing+".ogg",false,1,true,bpmList[indexErect]);
            }
        }
        if (diff == 2)
        {   
            
            // Random
            if (indexErect==0)
            {
                index=0;
            }
            // bopeebo
            if (indexErect==1)
            {
                index=2;
            }
            // fresh
            if (indexErect==2)
            {
                index=3;
            }
            // dadbattle
            if (indexErect==3)
            {
                index=4;
            }
            // spookeez
            if (indexErect==4)
            {
                index=5;
            }
            // south
            if (indexErect==5)
            {
                index=6;
            }
            // pico
            if (indexErect==6)
            {
                index=8;
            }
            // philly nice
            if (indexErect==7)
            {
                index=9;
            }
            // blammed
            if (indexErect==8)
            {
                index=10;
            }
            // satin panties
            if (indexErect==9)
            {
                index=11;
            }
            // high
            if (indexErect==10)
            {
                index=12;
            }
            // cocoa
            if (indexErect==11)
            {
                index=14;
            }
            // eggnog
            if (indexErect==12)
            {
                index=15;
            }
            // senpai
            if (indexErect==13)
            {
                index=17;
            }
            // roses
            if (indexErect==14)
            {
                index=18;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;
                bpmNext.visible = true;
                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;
                bpmNext1.visible = true;
                freeplayCapsuleNext2.visible = true;
                nextSongLabel2.visible = true;
                IconNext2.visible = true;
                diffNext2.visible = true;
                bpmNext2.visible = true;
            }
            // thorns
            if (indexErect==15)
            {
                index=19;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;
                bpmNext.visible = true;
                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;
                bpmNext1.visible = true;
                freeplayCapsuleNext2.visible = true;
                nextSongLabel2.visible = true;
                IconNext2.visible = true;
                diffNext2.visible = true;
                bpmNext2.visible = true;
            }
            // ugh
            if (indexErect==16)
            {
                index=20;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;
                bpmNext.visible = true;
                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;
                bpmNext1.visible = true;
                freeplayCapsuleNext2.visible = true;
                nextSongLabel2.visible = true;
                IconNext2.visible = true;
                diffNext2.visible = true;
                bpmNext2.visible = true;

            }
            if (index==0)
            {
                CoolUtil.playMusic("music/freeplayRandom/freeplayRandom.ogg",false,1,true,bpmList[index]);
            }
            else
            {
                addonthing = "";
                CoolUtil.playMusic("songs/"+songList[index]+"/song/Inst"+addonthing+".ogg",false,1,true,bpmList[index]);
            }
        }
    }
    // right
    if (direction == "right")
    {
        if (diff == 3)
        {
            
            // Random
            if (index==0)
            {
                indexErect=0;
            }
            // Tutorial
            if (index==1)
            {
                indexErect=1;
            }
            // bopeebo
            if (index==2)
            {
                indexErect=1;
            }
            // fresh
            if (index==3)
            {
                indexErect=2;
            }
            // dadbattle
            if (index==4)
            {
                indexErect=3;
            }
            // spookeez
            if (index==5)
            {
                indexErect=4;
            }
            // south
            if (index==6)
            {
                indexErect=5;
            }
            // monster
            if (index==7)
            {
                indexErect=5;
            }
            // pico
            if (index==8)
            {
                indexErect=6;
            }
            // philly nice
            if (index==9)
            {
                indexErect=7;
            }
            // blammed
            if (index==10)
            {
                indexErect=8;
            }
            // satin panties
            if (index==11)
            {
                indexErect=9;
            }
            // high
            if (index==12)
            {
                indexErect=10;
            }
            // milf
            if (index==13)
            {
                indexErect=10;
            }
            // cocoa
            if (index==14)
            {
                indexErect=11;
            }
            // eggnog
            if (index==15)
            {
                indexErect=12;
            }
            // winter horrorland
            if (index==16)
            {
                indexErect=12;
            }
            // senpai
            if (index==17)
            {
                indexErect=13;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;

                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;

                freeplayCapsuleNext2.visible = true;
                nextSongLabel2.visible = true;
                IconNext2.visible = true;
                diffNext2.visible = true;
            }
            // roses
            if (index==18)
            {
                indexErect=14;

                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;

                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;

                freeplayCapsuleNext2.visible = false;
                nextSongLabel2.visible = false;
                IconNext2.visible = false;
                diffNext2.visible = false;
            }
            // thorns
            if (index==19)
            {
                indexErect=15;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;

                freeplayCapsuleNext1.visible = false;
                nextSongLabel1.visible = false;
                IconNext1.visible = false;
                diffNext1.visible = false;

                freeplayCapsuleNext2.visible = false;
                nextSongLabel2.visible = false;
                IconNext2.visible = false;
                diffNext2.visible = false;
                
            }
            // ugh
            if (index==20)
            {
                indexErect=16;
                freeplayCapsuleNext.visible = false;
                nextSongLabel.visible = false;
                IconNext.visible = false;
                diffNext.visible = false;
                freeplayCapsuleNext1.visible = false;
                nextSongLabel1.visible = false;
                IconNext1.visible = false;
                diffNext1.visible = false;
                freeplayCapsuleNext2.visible = false;
                nextSongLabel2.visible = false;
                IconNext2.visible = false;
                diffNext2.visible = false;
            }
            // else
            if (index > 20)
            {
                indexErect=16;
                freeplayCapsuleNext.visible = false;
                nextSongLabel.visible = false;
                IconNext.visible = false;
                diffNext.visible = false;
                freeplayCapsuleNext1.visible = false;
                nextSongLabel1.visible = false;
                IconNext1.visible = false;
                diffNext1.visible = false;
                freeplayCapsuleNext2.visible = false;
                nextSongLabel2.visible = false;
                IconNext2.visible = false;
                diffNext2.visible = false;
            }
            if (index==0)
            {
                CoolUtil.playMusic("music/freeplayRandom/freeplayRandom.ogg",false,1,true,bpmList[indexErect]);
            }
            else
            {
                addonthing = "-erect";
                CoolUtil.playMusic("songs/"+songErectList[indexErect]+"/song/Inst"+addonthing+".ogg",false,1,true,bpmList[indexErect]);
            }
        }
        if (diff > 4)
        {
            
            // Random
            if (indexErect==0)
            {
                index=0;
            }
            // bopeebo
            if (indexErect==1)
            {
                index=2;
            }
            // fresh
            if (indexErect==2)
            {
                index=3;
            }
            // dadbattle
            if (indexErect==3)
            {
                index=4;
            }
            // spookeez
            if (indexErect==4)
            {
                index=5;
            }
            // south
            if (indexErect==5)
            {
                index=6;
            }
            // pico
            if (indexErect==6)
            {
                index=8;
            }
            // philly nice
            if (indexErect==7)
            {
                index=9;
            }
            // blammed
            if (indexErect==8)
            {
                index=10;
            }
            // satin panties
            if (indexErect==9)
            {
                index=11;
            }
            // high
            if (indexErect==10)
            {
                index=12;
            }
            // cocoa
            if (indexErect==11)
            {
                index=14;
            }
            // eggnog
            if (indexErect==12)
            {
                index=15;
            }
            // senpai
            if (indexErect==13)
            {
                index=17;
            }
            // roses
            if (indexErect==14)
            {
                index=18;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;
                bpmNext.visible = true;
                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;
                bpmNext1.visible = true;
                freeplayCapsuleNext2.visible = true;
                nextSongLabel2.visible = true;
                IconNext2.visible = true;
                diffNext2.visible = true;
                bpmNext2.visible = true;
            }
            // thorns
            if (indexErect==15)
            {
                index=19;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;
                bpmNext.visible = true;
                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;
                bpmNext1.visible = true;
                freeplayCapsuleNext2.visible = true;
                nextSongLabel2.visible = true;
                IconNext2.visible = true;
                diffNext2.visible = true;
                bpmNext2.visible = true;
            }
            // ugh
            if (indexErect==16)
            {
                index=20;
                freeplayCapsuleNext.visible = true;
                nextSongLabel.visible = true;
                IconNext.visible = true;
                diffNext.visible = true;
                bpmNext.visible = true;
                freeplayCapsuleNext1.visible = true;
                nextSongLabel1.visible = true;
                IconNext1.visible = true;
                diffNext1.visible = true;
                bpmNext1.visible = true;
                freeplayCapsuleNext2.visible = true;
                nextSongLabel2.visible = true;
                IconNext2.visible = true;
                diffNext2.visible = true;
                bpmNext2.visible = true;

            }
            if (index==0)
            {
                CoolUtil.playMusic("music/freeplayRandom/freeplayRandom.ogg",false,1,true,bpmList[index]);
            }
            else
            {
                addonthing = "";
                CoolUtil.playMusic("songs/"+songList[index]+"/song/Inst"+addonthing+".ogg",false,1,true,bpmList[index]);
            }
        }
    }
}

function handleDiffs()
{
    if (diff == 0)
    {
        nightSelector.color = 0x34296a;
        erectSelector.color = 0x34296a;
        hardSelector.color = 0x575757;
        normSelector.color = 0x575757;
        easySelector.color = 0xffffff;
        
        diffSprite.loadGraphic(Paths.image("menus/freeplay/freeplayDifficulties/freeplayeasy"));
        diffSprite.visible = true;
        diffNightSprite.visible = false;
        erectMode = false;
        curSongLabel.text = displayList[index];
        PriorSongLabel.text = displayList[index-1];
        nextSongLabel.text = displayList[index+1];
        nextSongLabel1.text = displayList[index+2];
        nextSongLabel2.text = displayList[index+3];
        IconNext.frames = Paths.getSparrowAtlas(icons[index+1] ?? icons[0]);
        IconNext.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext1.frames = Paths.getSparrowAtlas(icons[index+2]);
        IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext2.frames = Paths.getSparrowAtlas(icons[index+3]);
        IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

        IconPrior.frames = Paths.getSparrowAtlas(icons[index-1] ?? icons[0]);
        IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
        IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconPrior.animation.addByPrefix("Hold", "hold", 24, true);

        curIcon.frames = Paths.getSparrowAtlas(icons[index] ?? icons[0]);
        curIcon.animation.addByPrefix("Idle", "idle", 24, true);
        curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
        curIcon.animation.addByPrefix("Hold", "hold", 24, true);
        albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songOSTList[index]));
                

        albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songOSTList[index]+"-text");
        albumText.animation.addByPrefix("idle", "idle", 24, true);
        albumText.animation.addByPrefix("switch", "switch", 24, false);
        albumText.animation.play("idle");
    }
    if (diff == 1)
    {
        nightSelector.color = 0x34296a;
        erectSelector.color = 0x34296a;
        hardSelector.color = 0x575757;
        normSelector.color = 0xffffff;
        easySelector.color = 0x575757;

        diffSprite.loadGraphic(Paths.image("menus/freeplay/freeplayDifficulties/freeplaynormal"));
        diffSprite.visible = true;
        diffNightSprite.visible = false;
        erectMode = false;
        curSongLabel.text = displayList[index];
        PriorSongLabel.text = displayList[index-1];
        nextSongLabel.text = displayList[index+1];
        nextSongLabel1.text = displayList[index+2];
        nextSongLabel2.text = displayList[index+3];
        IconNext.frames = Paths.getSparrowAtlas(icons[index+1] ?? icons[0]);
        IconNext.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext1.frames = Paths.getSparrowAtlas(icons[index+2]);
        IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext2.frames = Paths.getSparrowAtlas(icons[index+3]);
        IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

        IconPrior.frames = Paths.getSparrowAtlas(icons[index-1] ?? icons[0]);
        IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
        IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconPrior.animation.addByPrefix("Hold", "hold", 24, true);

        curIcon.frames = Paths.getSparrowAtlas(icons[index] ?? icons[0]);
        curIcon.animation.addByPrefix("Idle", "idle", 24, true);
        curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
        curIcon.animation.addByPrefix("Hold", "hold", 24, true);
        albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songOSTList[index]));
                

        albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songOSTList[index]+"-text");
        albumText.animation.addByPrefix("idle", "idle", 24, true);
        albumText.animation.addByPrefix("switch", "switch", 24, false);
        albumText.animation.play("idle");
    }
    if (diff == 2)
    {
        nightSelector.color = 0x34296a;
        erectSelector.color = 0x34296a;
        hardSelector.color = 0xffffff;
        normSelector.color = 0x575757;
        easySelector.color = 0x575757;

        diffSprite.loadGraphic(Paths.image("menus/freeplay/freeplayDifficulties/freeplayhard"));
        diffSprite.visible = true;
        diffNightSprite.visible = false;
        erectMode = false;
        curSongLabel.text = displayList[index];
        PriorSongLabel.text = displayList[index-1];
        nextSongLabel.text = displayList[index+1];
        nextSongLabel1.text = displayList[index+2];
        nextSongLabel2.text = displayList[index+3];
        IconNext.frames = Paths.getSparrowAtlas(icons[index+1] ?? icons[0]);
        IconNext.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext1.frames = Paths.getSparrowAtlas(icons[index+2]);
        IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext2.frames = Paths.getSparrowAtlas(icons[index+3]);
        IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

        IconPrior.frames = Paths.getSparrowAtlas(icons[index-1] ?? icons[0]);
        IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
        IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconPrior.animation.addByPrefix("Hold", "hold", 24, true);

        curIcon.frames = Paths.getSparrowAtlas(icons[index] ?? icons[0]);
        curIcon.animation.addByPrefix("Idle", "idle", 24, true);
        curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
        curIcon.animation.addByPrefix("Hold", "hold", 24, true);
        albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songOSTList[index]));
                

        albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songOSTList[index]+"-text");
        albumText.animation.addByPrefix("idle", "idle", 24, true);
        albumText.animation.addByPrefix("switch", "switch", 24, false);
        albumText.animation.play("idle");
    }
    if (diff == 3)
    {
        nightSelector.color = 0x34296a;
        erectSelector.color = 0xc28aff;
        hardSelector.color = 0x575757;
        normSelector.color = 0x575757;
        easySelector.color = 0x575757;
        
        diffSprite.loadGraphic(Paths.image("menus/freeplay/freeplayDifficulties/freeplayerect"));
        diffSprite.visible = true;
        diffNightSprite.visible = false;
        erectMode = true;
        curSongLabel.text = displayErectList[indexErect];
        PriorSongLabel.text = displayErectList[indexErect-1];
        nextSongLabel.text = displayErectList[indexErect+1];
        nextSongLabel1.text = displayErectList[indexErect+2];
        nextSongLabel2.text = displayErectList[indexErect+3];
        IconNext.frames = Paths.getSparrowAtlas(iconsErect[indexErect+1] ?? icons[0]);
        IconNext.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext1.frames = Paths.getSparrowAtlas(iconsErect[indexErect+2] ?? icons[0]);
        IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext2.frames = Paths.getSparrowAtlas(iconsErect[indexErect+3] ?? icons[0]);
        IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

        IconPrior.frames = Paths.getSparrowAtlas(iconsErect[indexErect-1] ?? icons[0]);
        IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
        IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconPrior.animation.addByPrefix("Hold", "hold", 24, true);

        curIcon.frames = Paths.getSparrowAtlas(iconsErect[indexErect]);
        curIcon.animation.addByPrefix("Idle", "idle", 24, true);
        curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
        curIcon.animation.addByPrefix("Hold", "hold", 24, true);
        albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songErectOSTList[indexErect]));
                

        albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songErectOSTList[indexErect]+"-text");
        albumText.animation.addByPrefix("idle", "idle", 24, true);
        albumText.animation.addByPrefix("switch", "switch", 24, false);
        albumText.animation.play("idle");
    }
    if (diff == 4)
    {
        nightSelector.color = 0xc28aff;
        erectSelector.color = 0x34296a;
        hardSelector.color = 0x575757;
        normSelector.color = 0x575757;
        easySelector.color = 0x575757;


        diffSprite.visible = false;
        diffNightSprite.visible = true;
        erectMode = true;
        curSongLabel.text = displayErectList[indexErect];
        PriorSongLabel.text = displayErectList[indexErect-1];
        nextSongLabel.text = displayErectList[indexErect+1];
        nextSongLabel1.text = displayErectList[indexErect+2];
        nextSongLabel2.text = displayErectList[indexErect+3];
        IconNext.frames = Paths.getSparrowAtlas(iconsErect[indexErect+1] ?? icons[0]);
        IconNext.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext1.frames = Paths.getSparrowAtlas(iconsErect[indexErect+2] ?? icons[0]);
        IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

        IconNext2.frames = Paths.getSparrowAtlas(iconsErect[indexErect+3] ?? icons[0]);
        IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
        IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

        IconPrior.frames = Paths.getSparrowAtlas(iconsErect[indexErect-1] ?? icons[0]);
        IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
        IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
        IconPrior.animation.addByPrefix("Hold", "hold", 24, true);

        curIcon.frames = Paths.getSparrowAtlas(iconsErect[indexErect]);
        curIcon.animation.addByPrefix("Idle", "idle", 24, true);
        curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
        curIcon.animation.addByPrefix("Hold", "hold", 24, true);
        albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songErectOSTList[indexErect]));
                

        albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songErectOSTList[indexErect]+"-text");
        albumText.animation.addByPrefix("idle", "idle", 24, true);
        albumText.animation.addByPrefix("switch", "switch", 24, false);
        albumText.animation.play("idle");
    }
}

function handleInputs()
{
    if (controls.LEFT_P)
    {
        songStarted = false;
        {
            diff--;
            FlxG.sound.play(Paths.sound("menu/scroll"), 0.7);
            diffChange("left");

            if (diff < 0)
            {
                diff = 4;
            }

            
            handleDiffs();
            trace("difficulty changed to:" + diffList[diff]);
        }
        
    }

    if (controls.RIGHT_P)
    {
        songStarted = false;
        {
            diff++;
            FlxG.sound.play(Paths.sound("menu/scroll"), 0.7);
            diffChange("right");

            if (diff == 5)
            {
                diff = 0;
            }
            

            handleDiffs();
            trace("difficulty changed to:" + diffList[diff]);
        }
        
    }

    if (controls.UP_P)
    {
        songStarted = false;
        {
            if (erectMode == false)
            {

            
                index--;
                FlxG.sound.play(Paths.sound("menu/scroll"), 0.7);
                

                

                if (index < 0)
                {
                    index = songList.length - 1;
                    
                }

                if (index == 0)
                {
                    CoolUtil.playMusic("music/freeplayRandom/freeplayRandom.ogg",false,1,true,bpmList[index]);
                    freeplayCapsulePrior.visible = false;
                    PriorSongLabel.visible = false;
                    diffPrior.visible = false;
                    bpmPrior.visible = false;
                    
                }
                else
                {
                    
                    
                    CoolUtil.playMusic("songs/"+songList[index]+"/song/Inst"+addonthing+".ogg",false,1,true,bpmList[index]);
                    freeplayCapsulePrior.visible = true;
                    PriorSongLabel.visible = true;
                    diffPrior.visible = true;
                    bpmPrior.visible = true;
                }

                if (index >= songList.length - 3)
                {
                    freeplayCapsuleNext2.visible = false;
                    nextSongLabel2.visible = false;
                    IconNext2.visible = false;
                    diffNext2.visible = false;
                    bpmNext2.visible = false;
                }
                else
                {
                    freeplayCapsuleNext2.visible = true;
                    nextSongLabel2.visible = true;
                    IconNext2.visible = true;
                    diffNext2.visible = true;
                    bpmNext2.visible = true;
                }

                if (index >= songList.length - 2)
                {
                    freeplayCapsuleNext1.visible = false;
                    nextSongLabel1.visible = false;
                    IconNext1.visible = false;
                    diffNext1.visible = false;
                    bpmNext1.visible = false;
                }
                else
                {

                    freeplayCapsuleNext1.visible = true;
                    nextSongLabel1.visible = true;
                    IconNext1.visible = true;
                    diffNext1.visible = true;
                    bpmNext1.visible = true;
                }

                if (index >= songList.length - 1)
                {
                    freeplayCapsuleNext.visible = false;
                    nextSongLabel.visible = false;
                    IconNext.visible = false;
                    diffNext.visible = false;
                    bpmNext.visible = false;
                }
                else
                {
                    
                    freeplayCapsuleNext.visible = true;
                    nextSongLabel.visible = true;
                    IconNext.visible = true;
                    diffNext.visible = true;
                    bpmNext.visible = true;
                }

                
                PriorSongLabel.text = displayList[index-1];
                nextSongLabel.text = displayList[index+1];
                nextSongLabel1.text = displayList[index+2];
                nextSongLabel2.text = displayList[index+3];
                
                

                
                
                IconNext.frames = Paths.getSparrowAtlas(icons[index+1] ?? icons[0]);
                IconNext.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext.animation.addByPrefix("Hold", "hold", 24, true);

                IconNext1.frames = Paths.getSparrowAtlas(icons[index+2]);
                IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

                IconNext2.frames = Paths.getSparrowAtlas(icons[index+3]);
                IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

                IconPrior.frames = Paths.getSparrowAtlas(icons[index-1] ?? icons[0]);
                IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
                IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconPrior.animation.addByPrefix("Hold", "hold", 24, true);
                
                curIcon.frames = Paths.getSparrowAtlas(icons[index] ?? icons[0]);
                curIcon.animation.addByPrefix("Idle", "idle", 24, true);
                curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
                curIcon.animation.addByPrefix("Hold", "hold", 24, true);

                curSongLabel.text = displayList[index];
                albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songOSTList[index]));
                

                albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songOSTList[index]+"-text");
                albumText.animation.addByPrefix("idle", "idle", 24, true);
                albumText.animation.addByPrefix("switch", "switch", 24, false);
                albumText.animation.play("idle");
                trace("song changed to: " + songList[index]);
                trace("BPM changed to: " + bpmList[index]);
                
            }
            if (erectMode == true)
            {

            
                indexErect--;
                FlxG.sound.play(Paths.sound("menu/scroll"), 0.7);

                if (indexErect < 0)
                {
                    indexErect = 16;
                    
                }

                if (indexErect == 0)
                {
                    CoolUtil.playMusic("music/freeplayRandom/freeplayRandom.ogg",false,1,true,bpmList[indexErect]);
                    freeplayCapsulePrior.visible = false;
                    PriorSongLabel.visible = false;
                    diffPrior.visible = false;
                    bpmPrior.visible = false;
                }
                else
                {
                    
                    
                    CoolUtil.playMusic("songs/"+songErectList[indexErect]+"/song/Inst"+addonthing+".ogg",false,1,true,bpmErectList[indexErect]);
                    freeplayCapsulePrior.visible = true;
                    PriorSongLabel.visible = true;
                    diffPrior.visible = true;
                    bpmPrior.visible = true;
                }

                if (indexErect >= 14)
                {
                    freeplayCapsuleNext2.visible = false;
                    nextSongLabel2.visible = false;
                    IconNext2.visible = false;
                    diffNext2.visible = false;
                    bpmNext2.visible = false;
                }
                else
                {
                    freeplayCapsuleNext2.visible = true;
                    nextSongLabel2.visible = true;
                    IconNext2.visible = true;
                    diffNext2.visible = true;
                    bpmNext2.visible = true;
                }

                if (indexErect >= 15)
                {
                    freeplayCapsuleNext1.visible = false;
                    nextSongLabel1.visible = false;
                    IconNext1.visible = false;
                    diffNext1.visible = false;
                    bpmNext1.visible = false;
                }
                else
                {

                    freeplayCapsuleNext1.visible = true;
                    nextSongLabel1.visible = true;
                    IconNext1.visible = true;
                    diffNext1.visible = true;
                    bpmNext1.visible = true;
                }

                if (indexErect >= 16)
                {
                    freeplayCapsuleNext.visible = false;
                    nextSongLabel.visible = false;
                    IconNext.visible = false;
                    diffNext.visible = false;
                    bpmNext.visible = false;
                }
                else
                {
                    
                    freeplayCapsuleNext.visible = true;
                    nextSongLabel.visible = true;
                    IconNext.visible = true;
                    diffNext.visible = true;
                    bpmNext.visible = true;
                }

                
                PriorSongLabel.text = displayErectList[indexErect-1];
                nextSongLabel.text = displayErectList[indexErect+1];
                nextSongLabel1.text = displayErectList[indexErect+2];
                nextSongLabel2.text = displayErectList[indexErect+3];
                
                

                
                
                IconNext.frames = Paths.getSparrowAtlas(iconsErect[indexErect+1] ?? icons[0]);
                IconNext.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext.animation.addByPrefix("Hold", "hold", 24, true);

                IconNext1.frames = Paths.getSparrowAtlas(iconsErect[indexErect+2] ?? icons[0]);
                IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

                IconNext2.frames = Paths.getSparrowAtlas(iconsErect[indexErect+3] ?? icons[0]);
                IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

                IconPrior.frames = Paths.getSparrowAtlas(iconsErect[indexErect-1] ?? icons[0]);
                IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
                IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconPrior.animation.addByPrefix("Hold", "hold", 24, true);
                
                curIcon.frames = Paths.getSparrowAtlas(iconsErect[indexErect]);
                curIcon.animation.addByPrefix("Idle", "idle", 24, true);
                curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
                curIcon.animation.addByPrefix("Hold", "hold", 24, true);

                curSongLabel.text = displayErectList[indexErect];
                albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songErectOSTList[indexErect]));
                

                albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songErectOSTList[indexErect]+"-text");
                albumText.animation.addByPrefix("idle", "idle", 24, true);
                albumText.animation.addByPrefix("switch", "switch", 24, false);
                albumText.animation.play("idle");
                trace("song changed to: " + songList[indexErect]);
                trace("BPM changed to: " + bpmList[indexErect]);
            }
        }
    }

    if (controls.DOWN_P)
    {
        songStarted = false;
        {
            if (erectMode == false)
            {
                index++;
                FlxG.sound.play(Paths.sound("menu/scroll"), 0.7);

                if (index > songList.length - 1)
                {
                    index = 0;
                    
                    
                }
                if (index == 0)
                {
                    CoolUtil.playMusic("music/freeplayRandom/freeplayRandom.ogg",false,1,true,bpmList[index]);
                    freeplayCapsulePrior.visible = false;
                    PriorSongLabel.visible = false;
                    diffPrior.visible = false;
                    bpmPrior.visible = false;
                }
                else
                {
                    
                    CoolUtil.playMusic("songs/"+songList[index]+"/song/Inst"+addonthing+".ogg",false,1,true,bpmList[index]);
                    freeplayCapsulePrior.visible = true;
                    PriorSongLabel.visible = true;
                    diffPrior.visible = true;
                    bpmPrior.visible = true;
                }

                if (index >= songList.length - 3)
                {
                    
                    freeplayCapsuleNext2.visible = false;
                    nextSongLabel2.visible = false;
                    IconNext2.visible = false;
                    diffNext2.visible = false;
                    bpmNext2.visible = false;
                }
                else
                {
                    
                    freeplayCapsuleNext2.visible = true;
                    nextSongLabel2.visible = true;
                    IconNext2.visible = true;
                    diffNext1.visible = true;
                    bpmNext2.visible = true;
                }

                if (index >= songList.length - 2)
                {
                    
                    freeplayCapsuleNext1.visible = false;
                    nextSongLabel1.visible = false;
                    IconNext1.visible = false;
                    diffNext1.visible = false;
                    bpmNext1.visible = false;
                    
                }
                else
                {
                    
                    freeplayCapsuleNext1.visible = true;
                    nextSongLabel1.visible = true;
                    IconNext1.visible = true;
                    diffNext1.visible = true;
                    bpmNext1.visible = true;
                }

                if (index >= songList.length - 1)
                {
                    
                    freeplayCapsuleNext.visible = false;
                    nextSongLabel.visible = false;
                    IconNext.visible = false;
                    diffNext.visible = false;
                    bpmNext.visible = false;
                }
                else
                {
                    
                    freeplayCapsuleNext.visible = true;
                    nextSongLabel.visible = true;
                    IconNext.visible = true;
                    diffNext.visible = true;
                    bpmNext.visible = true;
                }

                
                PriorSongLabel.text = displayList[index-1];
                nextSongLabel.text = displayList[index+1];
                nextSongLabel1.text = displayList[index+2];
                nextSongLabel2.text = displayList[index+3];
                

                

                IconNext.frames = Paths.getSparrowAtlas(icons[index+1] ?? icons[0]);
                IconNext.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext.animation.addByPrefix("Hold", "hold", 24, true);

                IconNext1.frames = Paths.getSparrowAtlas(icons[index+2]);
                IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

                IconNext2.frames = Paths.getSparrowAtlas(icons[index+3]);
                IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

                IconPrior.frames = Paths.getSparrowAtlas(icons[index-1] ?? icons[0]);
                IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
                IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconPrior.animation.addByPrefix("Hold", "hold", 24, true);

                curIcon.frames = Paths.getSparrowAtlas(icons[index] ?? icons[0]);
                curIcon.animation.addByPrefix("Idle", "idle", 24, true);
                curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
                curIcon.animation.addByPrefix("Hold", "hold", 24, true);
                curSongLabel.text = displayList[index];
                albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songOSTList[index]));
                

                albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songOSTList[index]+"-text");
                albumText.animation.addByPrefix("idle", "idle", 24, true);
                albumText.animation.addByPrefix("switch", "switch", 24, false);
                albumText.animation.play("idle");
                trace("song changed to: " + songList[index]);
                trace("BPM changed to: " + bpmList[index]);
            }
            if (erectMode == true)
            {
                indexErect++;
                FlxG.sound.play(Paths.sound("menu/scroll"), 0.7);

                if (indexErect > 16)
                {
                    indexErect = 0;
                    
                    
                }
                if (indexErect == 0)
                {
                    CoolUtil.playMusic("music/freeplayRandom/freeplayRandom.ogg",false,1,true,bpmList[indexErect]);
                    freeplayCapsulePrior.visible = false;
                    PriorSongLabel.visible = false;
                    diffPrior.visible = false;
                    bpmPrior.visible = false;
                }
                else
                {
                    
                    CoolUtil.playMusic("songs/"+songErectList[indexErect]+"/song/Inst"+addonthing+".ogg",false,1,true,bpmErectList[indexErect]);
                    freeplayCapsulePrior.visible = true;
                    PriorSongLabel.visible = true;
                    diffPrior.visible = true;
                    bpmPrior.visible = true;
                }

                if (indexErect >= 14)
                {
                    
                    freeplayCapsuleNext2.visible = false;
                    nextSongLabel2.visible = false;
                    IconNext2.visible = false;
                    diffNext2.visible = false;
                    bpmNext2.visible = false;
                }
                else
                {
                    
                    freeplayCapsuleNext2.visible = true;
                    nextSongLabel2.visible = true;
                    IconNext2.visible = true;
                    diffNext2.visible = true;
                    bpmNext2.visible = true;
                }

                if (indexErect >= 15)
                {
                    
                    freeplayCapsuleNext1.visible = false;
                    nextSongLabel1.visible = false;
                    IconNext1.visible = false;
                    diffNext1.visible = false;
                    bpmNext1.visible = false;
                }
                else
                {
                    
                    freeplayCapsuleNext1.visible = true;
                    nextSongLabel1.visible = true;
                    IconNext1.visible = true;
                    diffNext1.visible = true;
                    bpmNext1.visible = true;
                }

                if (indexErect >= 16)
                {
                    
                    freeplayCapsuleNext.visible = false;
                    nextSongLabel.visible = false;
                    IconNext.visible = false;
                    diffNext.visible = false;
                    bpmNext.visible = false;
                }
                else
                {
                    
                    freeplayCapsuleNext.visible = true;
                    nextSongLabel.visible = true;
                    IconNext.visible = true;
                    diffNext.visible = true;
                    bpmNext.visible = true;
                }

                
                PriorSongLabel.text = displayErectList[indexErect-1];
                nextSongLabel.text = displayErectList[indexErect+1];
                nextSongLabel1.text = displayErectList[indexErect+2];
                nextSongLabel2.text = displayErectList[indexErect+3];
                

                

                IconNext.frames = Paths.getSparrowAtlas(iconsErect[indexErect+1] ?? icons[0]);
                IconNext.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext.animation.addByPrefix("Hold", "hold", 24, true);

                IconNext1.frames = Paths.getSparrowAtlas(iconsErect[indexErect+2] ?? icons[0]);
                IconNext1.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext1.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext1.animation.addByPrefix("Hold", "hold", 24, true);

                IconNext2.frames = Paths.getSparrowAtlas(iconsErect[indexErect+3] ?? icons[0]);
                IconNext2.animation.addByPrefix("Idle", "idle", 24, true);
                IconNext2.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconNext2.animation.addByPrefix("Hold", "hold", 24, true);

                IconPrior.frames = Paths.getSparrowAtlas(iconsErect[indexErect-1] ?? icons[0]);
                IconPrior.animation.addByPrefix("Idle", "idle", 24, true);
                IconPrior.animation.addByPrefix("Confirm", "confirm", 10, false);
                IconPrior.animation.addByPrefix("Hold", "hold", 24, true);

                curIcon.frames = Paths.getSparrowAtlas(iconsErect[indexErect]);
                curIcon.animation.addByPrefix("Idle", "idle", 24, true);
                curIcon.animation.addByPrefix("Confirm", "confirm", 10, false);
                curIcon.animation.addByPrefix("Hold", "hold", 24, true);
                curSongLabel.text = displayErectList[indexErect];
                albumCover.loadGraphic(Paths.image("menus/freeplay/albumRoll/"+songErectOSTList[indexErect]));
                

                albumText.frames = Paths.getSparrowAtlas("menus/freeplay/albumRoll/"+songErectOSTList[indexErect]+"-text");
                albumText.animation.addByPrefix("idle", "idle", 24, true);
                albumText.animation.addByPrefix("switch", "switch", 24, false);
                albumText.animation.play("idle");
                trace("song changed to: " + songErectList[indexErect]);
                trace("BPM changed to: " + bpmErectList[indexErect]);
            }
        }
    }

    if (controls.ACCEPT)
    {
        if (songStarted == false)
        {
            dj.playAnim('confirm', true);
            songStarted = true;
            curIcon.animation.play("Confirm");
            curIcon.animation.finishCallback = function(name:String)
            {
                if (name == "Confirm")
                {
                    curIcon.animation.play("Hold", true);
                }
            };
            FlxG.sound.play(Paths.sound("menu/confirm"), 0.7);
            new FlxTimer().start(1 , function(tmr:FlxTimer)
            {
                if (diff == 0)
                {
                    if (index == 0)
                    {
                        PlayState.loadSong(songList[basicRand], "easy", false, false);
                        FlxG.switchState(new PlayState());
                    }
                    else
                    {
                        PlayState.loadSong(songList[index], "easy", false, false);
                        FlxG.switchState(new PlayState());
                    }
                }
                if (diff == 1)
                {
                    if (index == 0)
                    {
                        PlayState.loadSong(songList[basicRand], "normal", false, false);
                        FlxG.switchState(new PlayState());
                    }
                    else
                    {
                        PlayState.loadSong(songList[index], "normal", false, false);
                        FlxG.switchState(new PlayState());
                    }
                }
                if (diff == 2)
                {
                    if (index == 0)
                    {
                        PlayState.loadSong(songList[basicRand], "hard", remix);
                        FlxG.switchState(new PlayState());
                    }
                    else
                    {
                        PlayState.loadSong(songList[index], "hard", remix);
                        FlxG.switchState(new PlayState());
                        
                    }
                }
                if (diff == 3)
                {
                    if (index == 0)
                    {
                        trace("ERROR: NOT IMPLEMENTED YET");
                        FlxG.sound.play(Paths.sound("CS_locked"), 0.7);
                        songStarted = false;
                        curIcon.animation.play("Idle", true);
                        dj.playAnim('idle', true);
                    }
                    else
                    {
                        //PlayState.loadSong(songList[index] + "-erect", "erect", erect);
                        //FlxG.switchState(new PlayState());
                        trace("ERROR: NOT IMPLEMENTED YET");
                        FlxG.sound.play(Paths.sound("CS_locked"), 0.7);
                        songStarted = false;
                        curIcon.animation.play("Idle", true);
                        dj.playAnim('idle', true);
                    }
                }
                if (diff == 4)
                {
                    if (index == 0)
                    {
                        trace("ERROR: NOT IMPLEMENTED YET");
                        FlxG.sound.play(Paths.sound("CS_locked"), 0.7);
                        songStarted = false;
                        curIcon.animation.play("Idle", true);
                        dj.playAnim('idle', true);
                        
                        
                    }
                    else
                    {
                        //PlayState.loadSong(songList[index] + "-erect", "nightmare", erect);
                        //FlxG.switchState(new PlayState());
                        trace("ERROR: NOT IMPLEMENTED YET");
                        FlxG.sound.play(Paths.sound("CS_locked"), 0.7);
                        songStarted = false;
                        curIcon.animation.play("Idle", true);
                        dj.playAnim('idle', true);
                    }
                }
            });
        }
    }

    if (FlxG.keys.justPressed.TAB)
    {
        if (songStarted == false)
        {
            dj.playAnim("exit", true);
            FlxG.sound.play(Paths.sound("menu/confirm"), 0.7);
            songStarted = true;
        }
        
    }

    if (controls.DEV_ACCESS)
    {
        
        if (songStarted == false && devmode == false && debugthingy == true)
        {
            FlxG.sound.play(Paths.sound("secret"), 0.7);
            devmode = true;
            debugthingy = false;
        }

        if (songStarted == false && devmode == true && debugthingy == true)
        {
            devmode = false;
            debugthingy = false;
        }
        debugthingy = true;    
    }

    if (controls.BACK)
    {
        if (songStarted == false)
        {
            FlxG.sound.play(Paths.sound("menu/cancel"), 0.7);
            
        }
        new FlxTimer().start(0.3, function(tmr:FlxTimer)
        {
            
            if (songStarted == false)
            {
                FlxG.switchState(new MainMenuState());
                
            }
                
        });
    }
}
