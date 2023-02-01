var greenhillzone:FlxSprite;
var treesfront:FlxSprite;

function createPost() {
    treesfront = new FlxSprite(-600, -200, Files.image('stages/you-cant-run-you-dum-fard/TreesFront'));
    add(treesfront);

    dad.regX -= 187;
    dad.regY += 32.8;

    gf.regX -= 200;
    gf.regY -= 10.4;
}

function create() {
    defaultCamZoom = 0.64;

    var sky:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/you-cant-run-you-dum-fard/sky'));
    add(sky);

    var grassback:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/you-cant-run-you-dum-fard/GrassBack'));
    add(grassback);

    var trees:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/you-cant-run-you-dum-fard/trees'));
    add(trees);

    var grass:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/you-cant-run-you-dum-fard/Grass'));
    add(grass);

    var topoverlay:FlxSprite = new FlxSprite(-600, -200, Files.image('stages/you-cant-run-you-dum-fard/TopOverlay'));
    add(topoverlay);

    greenhillzone = new FlxSprite(-428.5 + 50 + 700, -449.35 + 25 + 392 + 105 + 50, Files.image("stages/you-cant-run-you-dum-fard/GreenHill"));
    greenhillzone.visible = false;
    greenhillzone.antialiasing = false;
    greenhillzone.scrollFactor.set(1, 1);
    greenhillzone.scale.x = 8;
    greenhillzone.scale.y = 8;
    add(greenhillzone);
}

function update(){
    if (PlayState.SONG.song == 'you-cant-run' || PlayState.SONG.song == 'you-cant-run-encore'){
        switch (curStep){
            case 527:
                greenhillzone.visible = true;
                treesfront.visible = false;
            case 782:
                greenhillzone.visible = false;
                treesfront.visible = true;
        }
    }
}

function dadNoteHit() {
    if (curStep > 781 && PlayState.SONG.song == 'you-cant-run' || PlayState.SONG.song == 'you-cant-run-encore'){
        FlxG.camera.shake(0.0120, 0.0120);
        camHUD.zoom = 0.5;
    }
}