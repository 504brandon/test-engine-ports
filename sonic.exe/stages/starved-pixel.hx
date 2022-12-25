var bg:FlxSprite;
var floor:FlxSprite;

function create() {
    defaultCamZoom = 0.7;
    bg = new FlxSprite(0, 0, Files.image('stages/prey/stardustBg'));
    bg.scale.set(1.4, 1.4);
    bg.screenCenter();
    bg.alpha = 0.01;
    add(bg);

    floor = new FlxSprite(100, -1623.7, Files.image('stages/prey/stardustFloor'));
    floor.scale.set(1.4, 1);
    floor.alpha = 0.01;
    add(floor);

    gf.kill();
    dad.visible = false;
    camHUD.visible = false;
}

function update() {
    bg.x += 100;

    if (bg.x > 300)
        bg.x = -1230;

    floor.x -= 100;

    if (floor.x < -1000)
        floor.x = 100;
    switch (curStep) {
        case 127:
            FlxG.camera.flash(0xFFFFFF, 0.7);
            camHUD.visible = true;
            dad.visible = true;
            bg.alpha = 1;
            floor.alpha = 1;
    }
}