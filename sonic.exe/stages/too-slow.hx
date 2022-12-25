 function createPost(){
    defaultCamZoom = 0.65;

    boyfriend.regX = 512.4;
    boyfriend.regY = 10.4;

    gf.regX = 96.2;
    gf.regY = -9.2;

    if (PlayState.SONG.song.toLowerCase() == 'too-slow'){
    dad.regX = -203.5;
    dad.regY = 121.4;
    }

    var fgTrees = new FlxSprite(-610, -200, Files.image('PolishedP1/TreesFG'));
    fgTrees.setGraphicSize(Std.int(fgTrees.width * 1.45));
    fgTrees.scrollFactor.set(1.1, 1.1);
    add(fgTrees);
 }
 
 function create() {
    defaultCamZoom = 0.65;

    var sky:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/BGSky'));
    sky.setGraphicSize(Std.int(sky.width * 1.4));
    add(sky);

    var midTrees1:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/TreesMidBack'));
    midTrees1.setGraphicSize(Std.int(midTrees1.width * 1.4));
    midTrees1.scrollFactor.set(0.7, 0.7);
    add(midTrees1);

    var treesmid:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/TreesMid'));
    treesmid.scrollFactor.set(0.7, 0.7);
    add(treesmid);

    var treesoutermid:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/TreesOutterMid1'));
    treesoutermid.setGraphicSize(Std.int(treesoutermid.width * 1.4));
    treesoutermid.scrollFactor.set(0.7, 0.7);
    add(treesoutermid);

    var treesoutermid2:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/TreesOuterMid2'));
    treesoutermid2.setGraphicSize(Std.int(treesoutermid2.width * 1.4));
    treesoutermid2.scrollFactor.set(0.7, 0.7);
    add(treesoutermid2);

    var lefttrees:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/TreesLeft'));
    lefttrees.setGraphicSize(Std.int(lefttrees.width * 1.4));
    lefttrees.scrollFactor.set(0.7, 0.7);
    add(lefttrees);

    var righttrees:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/TreesRight'));
    righttrees.setGraphicSize(Std.int(righttrees.width * 1.4));
    righttrees.scrollFactor.set(0.7, 0.7);
    add(righttrees);

    var outerbush:FlxSprite = new FlxSprite(-600, -150, Files.image('stages/tooslow-forest/OuterBush'));
    outerbush.setGraphicSize(Std.int(outerbush.width * 1.4));
    add(outerbush);

    var outerbush2:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/OuterBushUp'));
    outerbush2.setGraphicSize(Std.int(outerbush2.width * 1.4));
    add(outerbush2);

    var grass:FlxSprite = new FlxSprite(-600, -150, Files.image('stages/tooslow-forest/Grass'));
    grass.setGraphicSize(Std.int(grass.width * 1.4));
    add(grass);

    var deadegg:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/DeadEgg'));
    deadegg.setGraphicSize(Std.int(deadegg.width * 1.4));
    add(deadegg);

    var deadknux:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/DeadKnux'));
    deadknux.setGraphicSize(Std.int(deadknux.width * 1.4));
    add(deadknux);

    var deadtailz:FlxSprite = new FlxSprite(-700, -200, Files.image('stages/tooslow-forest/DeadTailz'));
    deadtailz.setGraphicSize(Std.int(deadtailz.width * 1.4));
    add(deadtailz);

    var deadtailz1:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/tooslow-forest/DeadTailz1'));
    deadtailz1.setGraphicSize(Std.int(deadtailz1.width * 1.4));
    add(deadtailz1);

    var deadtailz2:FlxSprite = new FlxSprite(-600, -400, Files.image('stages/tooslow-forest/DeadTails2'));
    deadtailz2.setGraphicSize(Std.int(deadtailz2.width * 1.4));
    add(deadtailz2);
}

function update() {
    if (PlayState.SONG.song.toLowerCase() == 'too-slow-encore'){
        switch (curStep) {
            case 384:
                FlxG.camera.visible = false;
            case 400:
                FlxG.camera.visible = true;
                dad.loadCharacter("sonicexe");
                iconP2.changeIcon('sonicexe');
                dad.regX = -203.5;
                dad.regY = 121.4;
        }
    }
}