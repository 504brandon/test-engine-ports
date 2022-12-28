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
    greenhillzone.scrollFactor.set(1, 1);
    greenhillzone.scale.x = 8;
    greenhillzone.scale.y = 8;
    add(greenhillzone);
}

function update(){
    switch (curStep){
        case 520:
            dad.playAnim('scream', true);
            boyfriend.playAnim('hurt', true);
        case 527:
            greenhillzone.visible = true;
            treesfront.visible = false;
            dad.loadCharacter('ycrpixel');
            boyfriend.loadCharacter('bfpixel');
            gf.kill();
            defaultCamZoom = 0.82;
        case 782:
            greenhillzone.visible = false;
            treesfront.visible = true;
            dad.loadCharacter('ycr-mad');
            gf.revive();
            defaultCamZoom = 0.64;
    }
}

function dadNoteHit() {
    if (curStep > 781){
    FlxG.camera.shake(0.0120, 0.0120);
    camHUD.zoom = 1.3;
    }
}