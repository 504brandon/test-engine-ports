var fgmajin:FlxSprite;
var fgmajin2:FlxSprite;
var pillars1:FlxSprite;
var pillars2:FlxSprite;

function createPost() {
    fgmajin = new FlxSprite(1126, 903);
    fgmajin.frames = Files.sparrowAtlas('stages/endless round/majin FG1');
    fgmajin.animation.addByPrefix('bop', 'majin front bopper1');
    add(fgmajin);

    fgmajin2 = new FlxSprite(-393, 871);
    fgmajin2.frames = Files.sparrowAtlas('stages/endless round/majin FG2');
    fgmajin2.animation.addByPrefix('bop', 'majin front bopper2');
    add(fgmajin2);

    boyfriend.regX += 285.3;
    boyfriend.regY += 93.7;

    dad.regY += 143.7;

    gf.kill();
}

function create() {
    defaultCamZoom = 0.84;

    var SKY:FlxSprite = new FlxSprite(-600, -200, Paths.image('stages/endless round/sonicFUNsky'));
    add(SKY);

    var bush:FlxSprite = new FlxSprite(-42, 171, Paths.image('stages/endless round/Bush 1'));
    add(bush);

    pillars2 = new FlxSprite(182, -100);
    pillars2.frames = Files.sparrowAtlas('stages/endless round/Majin Boppers Back');
    pillars2.animation.addByPrefix('bop', 'MajinBop2 instance 1');
    add(pillars2);

    var bush2:FlxSprite = new FlxSprite(132, 354, Paths.image('stages/endless round/Bush2'));
    add(bush2);

    pillars1 = new FlxSprite(-169, -167);
    pillars1.frames = Files.sparrowAtlas('stages/endless round/Majin Boppers Front');
    pillars1.animation.addByPrefix('bop', 'MajinBop1 instance 1');
    add(pillars1);

    var floor:FlxSprite = new FlxSprite(-340, 660, Paths.image('stages/endless round/floor BG'));
    add(floor);
}

function beatHit() {
    fgmajin.animation.play('bop');
    fgmajin2.animation.play('bop');
    pillars1.animation.play('bop');
    pillars2.animation.play('bop');
}